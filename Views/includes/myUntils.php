<?php
   
    function display_href_article_link( $nid,$string){
        $real_title = $string;
        $real_title = to_slug($real_title);
        $article_link = "/job/".$nid."/".$real_title.".html";
        return $article_link;
    }

    function display_html_box($id, $contact, $price, $end_date, $oathId=null){
        //Tạo một mảng lấy chỉ mục là id bài đăng
        // $contacts[$id]=$contact;
        if(isset($oathId)){
            if(!check_BeenAppli(return_active_news($id)['aid'],$oathId))
            {
                $boxHTML= '<button data-id="'.$id.'" type="button" class="add-Apllica btn btn-orange btn-bid btn-block" data-toggle="modal" data-target="#modalApplicaNoti">Ứng tuyển</button>';
            }
            else{
                $boxHTML= '<button data-toggle="tooltip" data-original-title="Bạn đã ứng tuyển bài đăng này. Thông tin liên hệ là: '.$contact.'"type="button" class="btn btn-orange btn-bid btn-block">Đã ứng tuyển</button>';
            }
        }
        else{
            $boxHTML= '<button data-id="'.$id.'" type="button" class="add-Apllica btn btn-orange btn-bid btn-block" data-toggle="modal" data-target="#modalApplicaNoti">Ứng tuyển</button>';
        }

        $boxHTML.='<div class="job-money-item">';
        if($price!=0) $boxHTML.= display_news_typesalary($id); 
        else $boxHTML.= "Lương thỏa thuận";
        $boxHTML.='</div>';//End job-money-item
        
        $boxHTML.='<div class="date-ex-job">';
        check_active_news($id)?$boxHTML.="Hạn nhận việc: ".date_format(date_create($end_date),"d/m/Y"):$boxHTML.="HẾT HẠN";
        $boxHTML.='</div>';

        return	$boxHTML;
    }

    function display_htlm_listJobsItem($news){
		$strHtml='<div class="list-job-item">';
		// var_dump($news);
		// die;
		if(isset($news)){

			$strHtml.='<div class="job-header job-tag"><span><i class="far fa-building"></i>'.$news["company"]["name"].'</span></div>';

			$strHtml.='<div class="job-info">
				<div class="job-item-title"><a href="'.display_href_article_link($news["id"],$news["title"]).'">'.($news["title"]).'</a></div>';
			$strHtml.='<div class="job-tag">
					<span><i class="fas fa-calendar-day"></i>'.(date_format(date_create($news["end_date"]),"d/m/Y")).'</span>
					<span><i class="fas fa-map-marker-alt"></i>'.$news["province"]["name"].'</span>
					<span><i class="fas fa-briefcase"></i>'.$news["job"]["name"].'</span>
				</div>';
			$strHtml.='<div class="job-content">
					<div class="shortTextJob"><div class="p-a-href">'. limit_title($news["description"],200).'</div>
						<span class="span-a-href">Xem thêm</span>
					</div>
					<div class="fullTextJob" data-id="'.$news["id"].'">'.$news["description"].'
						<a class="more-detail" href="'.display_href_article_link( $news["id"],$news["title"]).'"> Click để xem thêm chi tiết và ứng tuyển</a>
					</div>
				</div>';
			$strHtml.='</div>';//Close job-info

			$strHtml.='<div class="job-image">';
			if($news["files"]!=0) $linkImg='/upload/'.$news["files"];
			else $linkImg='/lib/img/commingsoon.jpg';

			$strHtml .='<div class="image-post">
			<img class="lazy" src="'.$linkImg.'"  onError="this.onerror=null;this.src=&#039;/lib/img/commingsoon.jpg&#039;;"> </div>';
			$strHtml.='</div>';//Close job-price	
			// $id=$news['nid'];
			// $end_date = $news["end_date"];
			// $contacts = $news["contacts"];
			// $price = $news["price"];

			// $strHtml.='<div class="job-price">';
			// if(isset($_SESSION["user"]))$strHtml.=display_html_box($id, $contacts, $price, $end_date, $_SESSION["user"]["id"]);
			// else $strHtml.=display_html_box($id, $contacts, $price, $end_date);
            //$strHtml.='</div>';//Close job-price	
   
		}
		else{
			$strHtml.='<div class="job-header"> Quá trình tải bài xảy ra lỗi, vui lòng thử lại sau </div>';
		}
		$strHtml.='</div>';//Close list-job-item

		return $strHtml;
    }
    
    	/*Convert string signed to non-signed*/
	function khongdau($str) {
		$str = preg_replace("/(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)/", "a", $str);
		$str = preg_replace("/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)/", "e", $str);
		$str = preg_replace("/(ì|í|ị|ỉ|ĩ)/", "i", $str);
		$str = preg_replace("/(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)/", "o", $str);
		$str = preg_replace("/(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)/", "u", $str);
		$str = preg_replace("/(ỳ|ý|ỵ|ỷ|ỹ)/", "y", $str);
		$str = preg_replace("/(đ)/", "d", $str);
		$str = preg_replace("/(À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ)/", "A", $str);
		$str = preg_replace("/(È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ)/", "E", $str);
		$str = preg_replace("/(Ì|Í|Ị|Ỉ|Ĩ)/", "I", $str);
		$str = preg_replace("/(Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ)/", "O", $str);
		$str = preg_replace("/(Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ)/", "U", $str);
		$str = preg_replace("/(Ỳ|Ý|Ỵ|Ỷ|Ỹ)/", "Y", $str);
		$str = preg_replace("/(Đ)/", "D", $str);
		//$str = str_replace(" ", "-", str_replace("&*#39;","",$str));
		return $str;
	}
	function limit_text_length($string,$numberlitmit,$link){

		$string = strip_tags($string);
		if (strlen($string) > $numberlitmit) {
		    // truncate string
		    $stringCut = substr($string, 0, $numberlitmit);
		    $endPoint = strrpos($stringCut, ' ');
		    //if the string doesn't contain any space then it will cut without word basis.
		    $string = $endPoint? substr($stringCut, 0, $endPoint) : substr($stringCut, 0);
		   $string.='.....';
		}
		$string .= '<a href="/'.$link.'" data-toggle="tooltip" data-original-title="Click để xem thêm thông tin chi tiết">Xem thêm</a>';
		return $string;
	}
	function limit_textJobContent_length($string,$numberlitmit){

		$string = strip_tags($string);
		if (strlen($string) > $numberlitmit) {
		    // truncate string
		    $stringCut = substr($string, 0, $numberlitmit);
		    $endPoint = strrpos($stringCut, ' ');
		    //if the string doesn't contain any space then it will cut without word basis.
		    $string = $endPoint? substr($stringCut, 0, $endPoint) : substr($stringCut, 0);
		   $string.='.....';
		}
		$string .= '<span onclick="animationContentJobs()"" data-toggle="tooltip" data-original-title="Click để hiển thị thông tin chi tiết">Xem thêm</span>';
		echo $string;
	}
	function limit_title($string,$numberlitmit){

		$string = strip_tags($string);
		if (strlen($string) > $numberlitmit) {
		    // truncate string
		    $stringCut = substr($string, 0, $numberlitmit);
		    $endPoint = strrpos($stringCut, ' ');
		    //if the string doesn't contain any space then it will cut without word basis.
		    $string = $endPoint? substr($stringCut, 0, $endPoint) : substr($stringCut, 0);
		   $string.='.....';
		}
		return $string;
	}
	function limit_content_controlStripJob($string, $nid, $title, $numberlitmit){
		$string = strip_tags($string, '<p><a><br><b><hr><strong><u>');
		if (strlen($string) > $numberlitmit) {
		    // truncate string
		    $stringCut = substr($string, 0, $numberlitmit);
		    $endPoint = strrpos($stringCut, ' ');
		    //if the string doesn't contain any space then it will cut without word basis.
		    $string = $endPoint? substr($stringCut, 0, $endPoint) : substr($stringCut, 0);
		   
		}
		$string.='.....<a class="more-detail" href="'.display_href_article_link($nid,$title).'">Click để biết thêm thông tin và ứng tuyển<i class="fas fa-mouse"></i></a>';
		return $string;
	}
	
	//Compare days: return null if day < now
	// Powerful Function to get two date difference.

	//////////////////////////////////////////////////////////////////////
	//PARA: Date Should In YYYY-MM-DD Format
	//RESULT FORMAT:
	// '%y Year %m Month %d Day %h Hours %i Minute %s Seconds'        =>  1 Year 3 Month 14 Day 11 Hours 49 Minute 36 Seconds
	// '%y Year %m Month %d Day'                                    =>  1 Year 3 Month 14 Days
	// '%m Month %d Day'                                            =>  3 Month 14 Day
	// '%d Day %h Hours'                                            =>  14 Day 11 Hours
	// '%d Day'                                                        =>  14 Days
	// '%h Hours %i Minute %s Seconds'                                =>  11 Hours 49 Minute 36 Seconds
	// '%i Minute %s Seconds'                                        =>  49 Minute 36 Seconds
	// '%h Hours                                                    =>  11 Hours
	// '%a Days                                                        =>  468 Days
	//////////////////////////////////////////////////////////////////////
	function dateDifference($date_1 , $date_2 , $differenceFormat = '%a' ){
		// date_diff($day,$now)->format("%R%a days")
		$datetime1 = date_create($date_1->format('Y-m-d H:i:s'));
		$datetime2 = date_create($date_2->format('Y-m-d H:i:s'));
		
		$interval = date_diff($datetime1, $datetime2);
		
		return $interval->format($differenceFormat);
		
	}
    
    /**
    * debug
    **/
    function _debug($data) {
        echo '<pre style="background: #000; color: #fff; width: 100%; overflow: auto">';
        echo '<div>Your IP: ' . $_SERVER['REMOTE_ADDR'] . '</div>';
        $debug_backtrace = debug_backtrace();
        $debug = array_shift($debug_backtrace);
        echo '<div>File: ' . $debug['file'] . '</div>';
        echo '<div>Line: ' . $debug['line'] . '</div>';
        if(is_array($data) || is_object($data)) {
            print_r($data);
        }
        else {
            var_dump($data);
        }
        echo '</pre>';
    }
    //CHUYỂN DẤU THÀNH KHÔNG DẤU VÀ THÊM DẤU GẠCH NGANG
    function to_slug($str) {
        $str = trim(mb_strtolower($str));
        $str = preg_replace('/(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)/', 'a', $str);
        $str = preg_replace('/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)/', 'e', $str);
        $str = preg_replace('/(ì|í|ị|ỉ|ĩ)/', 'i', $str);
        $str = preg_replace('/(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)/', 'o', $str);
        $str = preg_replace('/(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)/', 'u', $str);
        $str = preg_replace('/(ỳ|ý|ỵ|ỷ|ỹ)/', 'y', $str);
        $str = preg_replace('/(đ)/', 'd', $str);
        $str = preg_replace('/[^a-z0-9-\s]/', '', $str);
        $str = preg_replace('/([\s]+)/', '-', $str);
        $str = str_replace("-", " ", $str);
		$str = preg_replace('/\s+/', '-', $str);
        return $str;
	}

	// ================================Libarary Lib file ==================================
	/**
	 * Upload Image thumnbal
	 */
	function uploadImagesThumb($file,$org_path,$thumb_path){
	
		$imageName = date('Ymjgis').".jpg";
	
		///////// Start the thumbnail generation//////////////
		$n_width=300;          // Fix the width of the thumb nail images
		$n_height=200;         // Fix the height of the thumb nail imaage
	
		
		$add=$org_path.$imageName;
		$tsrc=$thumb_path.$imageName;
		// var_dump($add);
		// echo "-----------";
		// var_dump(move_uploaded_file ($file['tmp_name'],$add));
		// die();
		//echo $add;
		if(move_uploaded_file ($file['tmp_name'],$add)){
			// echo "Successfully uploaded the mage";
			// die();
			chmod("$add",0777);
		}else{
			//echo "Failed to upload file Contact Site admin to fix the problem";
		exit;
		}
		
		//echo $tsrc;
		if (!($file['type'] =="image/jpeg" OR $file['type']=="image/gif")){
		echo json_encode("Your uploaded file must be of JPG or GIF. Other file types are not allowed<BR>");
		exit;}
		/////////////////////////////////////////////// Starting of GIF thumb nail creation///////////
		if($file['type']=="image/gif")
		{
		$im=ImageCreateFromGIF($add);
		$width=ImageSx($im);              // Original picture width is stored
		$height=ImageSy($im);                  // Original picture height is stored
		$newimage=imagecreatetruecolor($n_width,$n_height);
		imageCopyResized($newimage,$im,0,0,0,0,$n_width,$n_height,$width,$height);
		if (function_exists("imagegif")) {
		Header("Content-type: image/gif");
		ImageGIF($newimage,$tsrc);
		}
		elseif (function_exists("imagejpeg")) {
		Header("Content-type: image/jpeg");
		ImageJPEG($newimage,$tsrc);
		}
		chmod("$tsrc",0777);
		}////////// end of gif file thumb nail creation//////////
	
		////////////// starting of JPG thumb nail creation//////////
		if($file['type']=="image/jpeg"){
			$im=ImageCreateFromJPEG($add); 
			$width=ImageSx($im);              // Original picture width is stored
			$height=ImageSy($im);             // Original picture height is stored
			$newimage=imagecreatetruecolor($n_width,$n_height);                 
			imageCopyResized($newimage,$im,0,0,0,0,$n_width,$n_height,$width,$height);
			ImageJpeg($newimage,$tsrc);
			chmod("$tsrc",0777);
		}
	
		return $imageName;
	}
	/**
	 * Function send email
	 */
	function sendeMail($mailto, $subject, $sender_name, $sender_email, $mailcontent) {
		$extra= "Content-Type: text/html;charset=utf-8\r\n";
		// $extra = "From: $sender_name<$sender_email>\nContent-Type:  text/html ";
		$extra .= 'From: '.$sender_name.'<'.$sender_email.'>'."\r\n".
		'Reply-To: '.$mailto."\r\n" .
		'X-Mailer: PHP/' . phpversion();
		if (empty ($mailto)) {
			return false;
		}
		$message = '<html><body>';
		$message .= $mailcontent;
		$message .= '</body></html>';
		return mail($mailto, $subject, $mailcontent, $extra);
	};

	
	
?>