<?php
// Function show infomation
	// =========================Display html box price in tim-viec(list-jobs) and chi-tiet-bai-dang ==================

	function display_htlm_listJobsItem($element_arr){
		$strHtml='<div class="list-job-item">';
		// var_dump($element_arr);
		// die;
		if(isset($element_arr)){

			$strHtml.='<div class="job-header job-tag"><span><i class="far fa-building"></i>'.display_name_company($element_arr["nid"]).'</span></div>';

			$strHtml.='<div class="job-info">
				<div class="job-item-title"><a href="'.display_href_article_link($element_arr["nid"],$element_arr["title"]).'">'.($element_arr["title"]).'</a></div>';
			$strHtml.='<div class="job-tag">
					<span><i class="fas fa-calendar-day"></i>'.(date_format(date_create($element_arr["end_date"]),"d/m/Y")).'</span>
					<span><i class="fas fa-map-marker-alt"></i>'.display_news_province($element_arr["nid"]).'</span>
					<span><i class="fas fa-briefcase"></i>'.display_news_jobs($element_arr["nid"]).'</span>
				</div>';
			$strHtml.='<div class="job-content">
					<div class="shortTextJob"><div class="p-a-href">'. limit_title($element_arr["description"],200).'</div>
						<span class="span-a-href">Xem thêm</span>
					</div>
					<div class="fullTextJob" data-id="'.$element_arr["nid"].'">'.$element_arr["description"].'
						<a class="more-detail" href="'.display_href_article_link( $element_arr["nid"],$element_arr["title"]).'"> Click để xem thêm chi tiết và ứng tuyển</a>
					</div>
				</div>';
			$strHtml.='</div>';//Close job-info

			$strHtml.='<div class="job-image">';
			if($element_arr["files"]!=0) $linkImg='upload/'.$element_arr["files"];
			else $linkImg='/lib/img/commingsoon.jpg';

			$strHtml .='<div class="image-post">
			<img class="lazy" src="'.$linkImg.'"  onError="this.onerror=null;this.src=&#039;/lib/img/commingsoon.jpg&#039;;"> </div>';
			$strHtml.='</div>';//Close job-price	
			// $id=$element_arr['nid'];
			// $end_date = $element_arr["end_date"];
			// $contacts = $element_arr["contacts"];
			// $price = $element_arr["price"];

			// $strHtml.='<div class="job-price">';
			// if(isset($_SESSION["user"]))$strHtml.=display_html_box($id, $contacts, $price, $end_date, $_SESSION["user"]["id"]);
			// else $strHtml.=display_html_box($id, $contacts, $price, $end_date);
   //          $strHtml.='</div>';//Close job-price	
   
		}
		else{
			$strHtml.='<div class="job-header"> Quá trình tải bài xảy ra lỗi, vui lòng thử lại sau </div>';
		}
		$strHtml.='</div>';//Close list-job-item

		return $strHtml;
	}

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

	/*Trả ra một mảng các dan mục trong file list_news.php, bai-dang.php*/
	function display_name_cate_news($id_new,$character){
		global $dbc;
		$query_dq=" SELECT n.id as nid, sc.id as scid, c.id as cid, c.name FROM news as n LEFT JOIN companies as sc ON sc.id=n.id_subcate JOIN cate_company as cs ON cs.id_subcate=sc.id JOIN category as c ON cs.id_cate=c.id WHERE n.id=$id_new";
		$names=mysqli_query($dbc,$query_dq);
		if(mysqli_num_rows($names)>0){
			while($info=mysqli_fetch_array($names,MYSQLI_ASSOC))
			{
					echo('<a href="">'.$info["name"].'</a>');
					echo($character);
				
			}
		}
		else echo('<a href="">untified</a>');
	}
	function display_users_infoBylist($namefield,$value){
		global $dbc;
		if(!is_numeric($value)){
			$where= $namefield.' = \''.$value.'\'';
		}
		else{
			$where= $namefield.' = '.$value;
		}
		$query_dq="SELECT u.`id` as uid, `oauth_provider`, `oauth_uid`, `id_app`, `id_em`, `email`, u.`fullname` as ufullname, `token`, `password`, u.`picture` as upicture, `link`, u.`phone` as uphone, `spam`, a.`id` as aid, `id_stu`, `id_aca`, `id_add`, `id_leis`, a.`fullname` as afullname, a.`picture` as apicture, a.`phone` as aphone, `gender`, `birthday`, e.`id` as eid, `id_subcate` 
			FROM `users` as u 
			LEFT JOIN applicant as a ON u.id_app = a.id 
			LEFT JOIN employers as e ON e.id = u.id_em 
			WHERE ".$where;
		$results_tk=mysqli_query($dbc,$query_dq);
		$i=0;
		while($info=mysqli_fetch_array($results_tk,MYSQLI_ASSOC))
		{
			$infoArr[$i]=$info;
			$i++;
			
		}
		return $infoArr;
	}
	/*Hiển thị list-news*/
	function display_news_province($id_news){
		global $dbc;
		$query_dq="SELECT p.name FROM province as p RIGHT JOIN news as n ON p.id=n.id_province WHERE n.id=$id_news";
		$names=mysqli_query($dbc,$query_dq);
		// var_dump($query_dq);
		// die();
		while($info=mysqli_fetch_array($names,MYSQLI_ASSOC))
		{
			
			$name=($info["name"]);
			// var_dump($info['name']);
			
		}
		return ($name);
	}
	function display_news_typesalary($id_news){
		global $dbc;
		$query_dq="SELECT n.price,t.name FROM typesalary as t RIGHT JOIN news as n ON t.id=n.id_typesalary WHERE n.id=$id_news";
		$names=mysqli_query($dbc,$query_dq);
		// var_dump($query_dq);
		// die();
		while($info=mysqli_fetch_array($names,MYSQLI_ASSOC))
		{
			$name=$info["price"].' ';
			$name.=isset($info["name"])?$info["name"]:'';
			// var_dump($info['name']);
			
		}
		return $name;
	}
	//Display data by companyID
	function display_data_company($company_id){
		global $dbc;
		
		$query_dq="SELECT c.`id` as cid, a.name as aname, c.`name` as cname, `description`, c.`rateMark`, c.`files` as cfiles, `validate`, c.`timestamp` as ctimestamp, d.title as dtitle, p.name as pname 
		FROM `companies` as c 
		LEFT JOIN address as a ON c.id_address = a.id 
		LEFT JOIN district as d on a.id_district = d.id 
		LEFT JOIN province as p on d.province_id = p.id 
		WHERE c.id = ".$company_id;
		$results_tk=mysqli_query($dbc,$query_dq);

		$i=0;
		while($info=mysqli_fetch_array($results_tk,MYSQLI_ASSOC))
		{
			$infoArr[$i]=$info;
			$i++;
			
		}
		return $infoArr;
	}
	// Display name by newsID
	function display_name_company($id_news){
		global $dbc;
		$query_dq="SELECT sc.name as scname, n.id_subcate as nsc FROM companies as sc RIGHT JOIN news as n ON sc.id=n.id_subcate WHERE n.id=$id_news";
		$names=mysqli_query($dbc,$query_dq);
		if(mysqli_num_rows($names)>0){
			while($info=mysqli_fetch_array($names,MYSQLI_ASSOC))
			{
				if(isset($info['nsc']))
				return('<a data-toggle="tooltip" data-original-title="Click để xem chi tiết thông tin về công ty" href="/company/'.$info['nsc'].'/'.to_slug($info["scname"]).'">'.$info["scname"].'</a>');
				else  
				return('<a data-toggle="tooltip" data-original-title="Click để xem chi tiết thông tin về công ty" >Cập nhau sau....</a>');
				
			}
		}
		else return ('<a data-toggle="tooltip" data-original-title="Click để xem chi tiết thông tin về công ty" href="">Cập nhau sau....</a>');
	}
	// Display number field count in active table
	function display_count($id_news){	
		$count=0;
		global $dbc;
		$query_dq="SELECT n.id as nid, a.id as aid, a.count, a.id_news, a.state, a.end_date, a.count
			 FROM active as a JOIN news as n ON a.id_news=n.id WHERE n.id=$id_news";
		$results=mysqli_query($dbc,$query_dq);
		while($result=mysqli_fetch_array($results,MYSQLI_ASSOC))
		{
			// Plus $count prevous
			$count+=$result['count'];
		}
		return $count;
	}

	//Display number filed total to company
	function total_numsMark_company($id_company){	
		global $dbc;
		$count = 0;
		$query_dq="SELECT SUM(rating)/COUNT(rating) as total, COUNT(rating) as count
					FROM `news` as n 
					JOIN active as ac ON n.id = ac.id_news 
					JOIN applies as ap ON ac.id = ap.id_active 
					JOIN companies as c ON c.id = n.id_subcate
					WHERE c.id = ". $id_company ."
					ORDER BY ac.id DESC ";
		$results=mysqli_query($dbc,$query_dq);
		while($result=mysqli_fetch_array($results,MYSQLI_ASSOC))
		{
			// Plus $count prevous
			$count =isset($result['total'])?$result['total']:0;
		}

		return $count;
	}

	//Display total applicant rating to company
	function total_countAppli_company($id_company, $bystart=null){	
		global $dbc;
		$count =0;
		if(isset($bystart)){
			$pre=$bystart + 1 - 0.1;
			$sql = " AND rating BETWEEN $bystart AND $pre";	
		}
		else $sql= "";
		$query_dq="SELECT  COUNT(rating) as count
					FROM `news` as n 
					JOIN active as ac ON n.id = ac.id_news 
					JOIN applies as ap ON ac.id = ap.id_active 
					JOIN companies as c ON c.id = n.id_subcate
					WHERE c.id = ". $id_company.$sql." 
					ORDER BY ac.id DESC ";
		$results=mysqli_query($dbc,$query_dq);

		while($result=mysqli_fetch_array($results,MYSQLI_ASSOC))
		{
			// Plus $count prevous
			$count = $result['count'];
		}
		return $count;
	}
	//Display info news by userID
	function display_newsInfo_by_appID($app_id){
		global $dbc;
		$infoArr=null;
		$query_dq="SELECT n.`id` as nid, ac.id as acid, n.`id_subcate`, n.`title`, n.`description`, n.`files`, n.`price`, n.`contacts`, ac.`end_date`, ac.`count` , rating
			FROM `news` as n 
			LEFT JOIN active as ac ON n.id = ac.id_news 
			LEFT JOIN applies as ap ON ac.id = ap.id_active 
			LEFT JOIN applicant as apt  ON apt.id = ap.id_app 
			WHERE apt.id = $app_id
			ORDER BY ac.id DESC ";
		$results_tk=mysqli_query($dbc,$query_dq);
		$i=0;
		while($info=mysqli_fetch_array($results_tk,MYSQLI_ASSOC))
		{
			$infoArr[$i]=$info;
			$i++;
			
		}
		return $infoArr;
	}
	//Display info news by userID
	function display_newsInfo_by_companyID($company_id){
		global $dbc;
		
		$query_dq="SELECT n.`id` as nid, ac.id as acid, n.`title`, n.`description`, n.`files`, n.`price`, n.`contacts`, ac.`end_date`, ac.`count`
			FROM `news` as n 
			LEFT JOIN active as ac ON n.id = ac.id_news 
			LEFT JOIN companies as c ON n.id_subcate = c.id 
			WHERE c.id = $company_id
			ORDER BY ac.id DESC ";
		$results_tk=mysqli_query($dbc,$query_dq);
		$i=0;
		while($info=mysqli_fetch_array($results_tk,MYSQLI_ASSOC))
		{
			$infoArr[$i]=$info;
			$i++;
			
		}
		return $infoArr;
	}
	//Display number field totalapp in applicant table
	function displat_totalapp($id_app){
		$count=0;
		global $dbc;
		$query_dq="SELECT `totalapp` FROM `applicant`  WHERE id =$id_app";
		$results=mysqli_query($dbc,$query_dq);
		while($result=mysqli_fetch_array($results,MYSQLI_ASSOC))
		{
			// Plus $count prevous
			if($result['totalapp']<>0)
			$count=$result['totalapp']+1;
			
		}

		return $count;
	}
	function display_news_jobs($id_news){
		global $dbc;
		$query_dq="SELECT j.name FROM jobs as j RIGHT JOIN news as n ON j.id=n.id_job WHERE n.id=$id_news";
		$names=mysqli_query($dbc,$query_dq);
		while($info=mysqli_fetch_array($names,MYSQLI_ASSOC))
		{
			
			$name=($info["name"]);
			// var_dump($info['name']);
			
		}
		return ($name);
	} 
	// Hiển thị loại bài đăng trong file list_post_type.php
	function display_type_post_typepost($id_type){
		global $dbc;
		$query_dq=" SELECT tp.id as tid, tp.menu_id, m.id as mid, m.name as menu_name
					FROM type_post as tp
					LEFT JOIN menu as m
					ON tp.menu_id= m.id
					WHERE tp.id=$id_type";
		$nameP=mysqli_query($dbc,$query_dq);
		$name="untified";
		while($info=mysqli_fetch_array($nameP,MYSQLI_ASSOC))
		{
			// var_dump($info);
			if ($info['menu_name']==null) {
				# code...
				return $name;
			}
			$name=($info["menu_name"]);
			// var_dump($info['name']);
			
		}
		return $name;
	}
	/*============Sub-category name===========*/
	// Hiển thị ra danh sách các tên category trong file list_subcategory
	function display_name_cate_sub($id_subcate){
		global $dbc;
		$query_dq=" SELECT cs.id_subcate, cs.id_cate, c.id as cid,sc.id as subcateid, c.name FROM category as c LEFT JOIN cate_company as cs ON cs.id_cate=c.id JOIN companies as sc ON sc.id=cs.id_subcate WHERE sc.id=$id_subcate";
		$names=mysqli_query($dbc,$query_dq);
		while($info=mysqli_fetch_array($names,MYSQLI_ASSOC))
		{
				echo($info["name"]);
				echo('<br>');
			// var_dump($info['name']);
			
		}
	}

	function display_name_add($id_address){
		global $dbc;
		$query_dq=" SELECT * FROM `district` as d JOIN `address` as a ON d.id = a.id WHERE a.id = $id_address";
		// var_dump($query_dq);
		$names=mysqli_query($dbc,$query_dq);
		$row_cnt = mysqli_num_rows($names);
		if(mysqli_num_rows($names)>0)
		while($info=mysqli_fetch_array($names,MYSQLI_ASSOC))
		{
				echo($info["name"].' - '.$info["title"]);
				echo('<br>');
			// var_dump($info['name']);
			
		}
		else echo "Không có địa chỉ doanh nghiệp cần bổ sung";
	}
	//End sub-category name (Name companies)
	function show_categories($parent_id="0",$insert_text=""){
		global $dbc;
		$query_dq="SELECT * FROM menu WHERE parent_id=".$parent_id." ORDER BY id ASC";
		$categories=mysqli_query($dbc,$query_dq);
		while($category=mysqli_fetch_array($categories,MYSQLI_ASSOC))
		{
			echo ("<option value='".$category["id"]."'>".$insert_text.$category['name']."</option>");
			// show_categories($category["id"],$insert_text."-");
		}
		return true;
	}
	/*============/END Sub-category name===========*/
	/*============Menu===========*/
	function display_parentmenu($menu_id){
		global $dbc;
		$query_dq="SELECT * FROM menu WHERE id=".$menu_id." ORDER BY id ASC";
		$result=mysqli_query($dbc,$query_dq);
		$row_cnt = mysqli_num_rows($result);
		$array=array();
		if($row_cnt>0)
		{
			while($info=mysqli_fetch_array($result,MYSQLI_ASSOC)){
		      return $info['slug'];
			}
		}
	}
	/*Dispay submenu on menu in list_subcategory.php, layout_header.php files */
	function display_submenu($menu_id){
		global $dbc;
		$query_dq="SELECT * FROM menu WHERE parent=".$menu_id." ORDER BY sort_order ASC";
		$result=mysqli_query($dbc,$query_dq);
		$row_cnt = mysqli_num_rows($result);
		if($row_cnt>0)
		{
			while($info=mysqli_fetch_array($result,MYSQLI_ASSOC)){
				$add='';
				if($info['id']=='50') $add='menustyle';
		        echo" <a class='".$add." dropdown-item' href='/".$info['slug']."'>".$info['name']."</a>";
			}
		}
		else echo("untified");
	}
	// Hiển thị ra tên menu cha tại file list_info
	function display_sub_menu($parent_id,$name){
		global $dbc;
		$query_dq="SELECT * FROM $name WHERE id=".$parent_id." ORDER BY id ASC";
		$nameP=mysqli_query($dbc,$query_dq);
		$name="untified";
		while($info=mysqli_fetch_array($nameP,MYSQLI_ASSOC))
		{
			$name=($info["name"]);
		}
		return $name;
	}
	/*=============Displat name type post=====*/
	// Hiển thị loại bài trong file list_news.php
	function display_type_post($id_type){
		global $dbc;
		$query_dq=" SELECT * FROM type_post
					JOIN menu 
					ON type_post.menu_id= menu.id
					AND type_post.id=$id_type";
		$nameP=mysqli_query($dbc,$query_dq);
		// var_dump($query_dq);
		$name="untified";
		while($info=mysqli_fetch_array($nameP,MYSQLI_ASSOC))
		{
			// var_dump($info['name']);
			$name=($info["name"]);
		}
		return $name;
	}
	function display_slug_by_typeid($type_id){
		global $dbc;
		$query_dq="SELECT t.id as tid, m.id as mid,  m.slug FROM type_post as t RIGHT JOIN menu as m ON t.menu_id=m.id WHERE t.id=".$type_id." ORDER BY t.id ASC";
		$result=mysqli_query($dbc,$query_dq);
		$row_cnt = mysqli_num_rows($result);
		$array=array();
		if($row_cnt>0)
		{
			while($info=mysqli_fetch_array($result,MYSQLI_ASSOC))
		
			{
		       return ($info['slug']);
			}
		}
	}
	/*============End Menu===========*/
	function return_active_news($id_news){
		global $dbc;
		$query_dq="SELECT n.id as nid, a.id as aid, a.count, a.id_news, a.state, a.end_date
			 FROM active as a JOIN news as n ON a.id_news=n.id WHERE n.id=$id_news";

		$results=mysqli_query($dbc,$query_dq);
		// var_dump($query_dq);
		// die();
		if(mysqli_num_rows($results)>0)
		{
			while($result=mysqli_fetch_array($results,MYSQLI_ASSOC))
			{
				// $end_date = new DateTime($result['end_date']);
				// $now = new DateTime("now");
				// if($end_date > $now && $result['state']==1) return $result;
				if($result['state']==1) return $result;
			}
		}
		return null;
	}
//End show infomation
/*===============================================FUNCTION HANDLE===================================*/
//Function handle
	//Kiem tra xem ket qua tra ve co dung khong
	function kt_query($result,$query){
		global $dbc;
		if(!$result)
		{
			die("Query {$query} \n<br/> MYSQL Error:".mysqli_error($dbc));
		}
	}
	//Check news is activing?
	function check_active_news($id_news){
		global $dbc;
		$query_dq="SELECT n.id as nid, a.id as aid, a.count, a.id_news, a.state, a.end_date
			 FROM active as a JOIN news as n ON a.id_news=n.id WHERE n.id=$id_news";

		$results=mysqli_query($dbc,$query_dq);
		$kt=FALSE;
		// var_dump($query_dq);
		// die();
		if(mysqli_num_rows($results)>0)
		{
			while($result=mysqli_fetch_array($results,MYSQLI_ASSOC))
			{
				$end_date = new DateTime($result['end_date']);
				$now = new DateTime("now");
				if($end_date > $now && $result['state']==1) $kt=TRUE;
			}
		}
		return $kt;
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

	//Check applies: ARE cancel ?
	function check_BeenAppli($id_active, $oathId){

		$userInfo=display_users_infoBylist('`oauth_uid`',$oathId);
		global $dbc;
		$query_dq="SELECT `id_active`, `id_app`, `timestamp`, `status`, `success` FROM `applies` WHERE id_active=$id_active AND id_app=".$userInfo[0]['id_app'];
		$results=mysqli_query($dbc,$query_dq);
		$kt=FALSE;
		if($results)
		if(mysqli_num_rows($results)>0)
		{
			while($result=mysqli_fetch_array($results,MYSQLI_ASSOC))
			{
				if($result['status']==1) $kt=TRUE;
			}
		}
		// var_dump($userInfo);
		return $kt;
	} 

	// Nums of post is activing
	function list_post_activing(){
		global $dbc;
		$sql_active="SELECT `id_news` FROM active";
		$results_acitve=mysqli_query($dbc,$sql_active);
		$list=array();
	    while($acitve = $results_acitve->fetch_assoc())
	    {
	  		if(check_active_news($acitve['id_news']))
	  		 $arr[]=$acitve['id_news']; 		
	    }
	    if(isset($arr))
	    {
	    	foreach ($arr as $key) {
	    	# code...
	    	if(!in_array($key,$list))
	    		$list[]=$key;
		    }
		    return $list;
	    }
	    else
	    	return null;
	}

	/*Check login */
	function check_loginbySession($id){
		if(isset($_SESSION['user'])){
	    	if($id != $_SESSION['user']['id']) 
	    	header("Location: /index");
		}
	}
	/*End check*/

	/*Check menu contain sub-menu*/
	function check_menu($menu_id){
		global $dbc;
		$query_dq="SELECT * FROM menu WHERE parent=".$menu_id." ORDER BY id ASC";
		$check=mysqli_query($dbc,$query_dq);
		$row_cnt = mysqli_num_rows($check);
		if($row_cnt==0) return FALSE;
		return TRUE;
	}
	function selectCtrl($name,$class){
		global $dbc;
		echo "<select class='form-control' id='danhMuc' name='".$name."' class='".$class."'>";
		echo "<option value=''>SELECT</option>";
		show_categories();
		echo "</select>";
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
	// Code search filter advance
	function list_news_jobsData($get, $limit =null, $offset=null) {
		$state=1;
		$job=null; $province=null; $company=null;
		$sql ="SELECT DISTINCT n.id as nid, n.id_type as ntype, n.title, n.description, n.files,n.price, a.timestamp, a.end_date,m.slug, n.contacts 
			FROM news as n 
			JOIN active as a ON a.id_news=n.id 
			LEFT JOIN type_post as tp ON n.id_type=tp.id 
			LEFT JOIN menu as m ON m.id= tp.menu_id ";

		if($get!='all') $str_q=" m.slug ='$get' AND ";
		else $str_q=" ";
		// m.slug IN ('one-time','fulltime','parttime')

		if(isset($_GET['job'])&&isset($_GET['province'])&&isset($_GET['company']) && isset($_GET['search'])){

		    $job = $_GET['job'];
		    $province = $_GET['province'];
		    $company = $_GET['company'];
		    $search=$_GET['search'];

		    $query = $sql." 
			LEFT JOIN jobs as j
			ON n.id_job= j.id 
			LEFT JOIN province as p
			on n.id_province= p.id
			LEFT JOIN companies as c
			on n.id_subcate= c.id WHERE ". $str_q;
		    //Do real escaping here

		    $conditions = array();
		 
		    if($job!=0 && $job !=null) {
		      $conditions[] = "id_job='$job'";
		    }
		    if($province!=0 && $province !=null) {
		      $conditions[] = "id_province='$province'";
		    }
		    if($company!=0 && $company !=null) {
		      $conditions[] = "id_subcate='$company'";
		    }
		    if($state==1){
		    	$str=implode(',',list_post_activing());
		    	$conditions[]="n.id IN ($str)";
		    }
		    if($state==2)
		    {
		    	$str=implode(',',list_post_activing());
		    	$conditions[]="n.id NOT IN ($str)";
		    }
		    if(isset($search))
		    {
				if($search!=""){
					$conditions[]="title LIKE '%$search%'";
				}
		    
		    }
		    $sql = $query;
		    if (count($conditions) > 0) {
		      $sql .= implode(' AND ', $conditions);
		    }
	    }else{
	    	if($get!='all') $str_q=" WHERE m.slug ='$get' AND";
			else $str_q=" WHERE ";

			if(isset($limit)) $limit = " LIMIT ".$limit;
	    	if(isset($offset)) $limit .= " OFFSET ".$offset;

			$sql =$sql.$str_q." a.end_date > DATE(CURDATE()) AND a.state = 1 AND a.end_date = (SELECT MAX(end_date) FROM `active` WHERE id_news = a.id_news ) ORDER BY a.modified DESC,n.id DESC ".$limit; 
		}
	    return $sql;
	}

	//Display jobs Hot in home page
	function list_news_jobsHot(){
		global $dbc;
		$sql_sidebar="SELECT n.`id` as nid, a.`count` as acount ,n.`id_type`, n.`id_job`, n.`id_province`, n.`id_subcate`, n.`id_typesalary`, n.`title` as ntitle, n.`files` as nfiles, n.`price` as nprice, n.`role` as nrole, n.`timestamp` as ntimestamp, n.`contacts` as ncontacts FROM `news` as n LEFT JOIN active as a ON n.id = a.id_news ORDER BY `a`.`count` DESC";
        $results_sidebar=mysqli_query($dbc,$sql_sidebar);
        if(mysqli_num_rows($results_sidebar)>0)
        {
        	$i=0;
          	while($stpost = $results_sidebar->fetch_assoc())
          	{ 
	          	$listJob[] = $stpost;

	          	array_push($listJob[$i], display_href_article_link($stpost["nid"],$stpost["ntitle"]));

	          	array_push($listJob[$i],  display_news_province($stpost["nid"]));

	          	array_push($listJob[$i], display_news_jobs($stpost["nid"]));

	          	array_push( $listJob[$i], display_name_company($stpost["nid"]));

	          	// array_push($listJob[$i], display_count($stpost['nid']));

	          	$i++;

	         }// END while 
        }// END if
      	
      	if(isset($listJob)){

      		return $listJob;
      	}
      	else {
      		return null;
      	}
	}

	//Code to display sidebar - Favorite jobs 
	function list_news_jobsHotData_SideBar($listJob, $limit){
		global $dbc;
		$sql_sidebar="SELECT n.`id` as nid, n.`title` as ntitle, `count` FROM news as n JOIN active as a ON n.id = a.id_news WHERE n.id IN (".implode(',',$listJob).") ORDER BY count DESC LIMIT ".$limit;
        $results_sidebar=mysqli_query($dbc,$sql_sidebar);
        if(mysqli_num_rows($results_sidebar)>0)
        {
          while($stpost = $results_sidebar->fetch_assoc())
          { 
            $title_sb='<a data-toggle="tooltip" data-original-title="'.$stpost['ntitle'].'"href="'.display_href_article_link($stpost["nid"],$stpost["ntitle"]).'" class="highlight-link" style="float:left; width: 85%;">'.limit_title($stpost['ntitle'],50).'</a>';

            $array_count[$title_sb]=display_count($stpost['nid']);
            
          }// END while 
        }// END if
        if(isset($array_count))
        {

          arsort($array_count); //sorted before display

          foreach ($array_count as $title_sb => $count_sb) {
            # code...
            echo($title_sb." ".'<p style="float:left; width: 15%;">'.$count_sb.'</p>');
          }
        }

	}

//End Function handle 
//Hàm của Thạnh
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
    /**
     * get input
     */
    
    function  getInput($string)
    {
        return isset($_GET[$string]) ? $_GET[$string] : '';
    }
    
    /**
     * post Input kiểm tra có phải biến kh, nếu phải in ra
     */
    
    function  postInput($string)
    {
        return isset($_POST[$string]) ? $_POST[$string] : '';
    }
    //đường dẫn
    function base_url()
    {
    	return $url = "https://" . $_SERVER['SERVER_NAME'];
    }
    function img_user()
    {
    	return base_url() . "../../lib/img/user.jpg";
    }
    $base_url_email='https://cit.cit/email_activation';
    $base_forgotPass ='https://cit.cit/doimk';
    $base_url = "https://cit.cit/";
    //Gửi mail
    function sendMail($title, $content, $nTo, $mTo,$diachicc=''){


		$developmentMode = true;
		$mailer = new PHPMailer($developmentMode);

		try{
		    $mailer->SMTPDebug = 2;
		    $mailer->isSMTP();

		    if($developmentMode){
		        $mailer->SMTPOptions = [
		            'ssl' => [
		                'verify_peer' => false,
		                'verify_peer_name'=>false,
		                'allow_self_signed' => true,
		            ]
		        ];
		    }
		    $mailer->Host ='smtp.gmail.com';
		    $mailer->SMTPAuth = true;
		    $mailer->Username = 'vieclamtheogiocit@gmail.com';
		    $mailer->Password = 'vieclamtheogiocit';
		    $mailer->SMTPSecure = "tls";
		    $mailer->Port       = 587;

		    $mailer->SetFrom('vieclamtheogiocit@gmail.com','CIT');
		    $mailer->addAddress('hoaihuy2011.vn@gmail.com','ABC');

		    $mailer->isHTML(true);
		    $mailer->Subject = 'PHP';
		    $mailer->Body = 'ABC';
		    $mailer->send();
		    $mailer->ClearAllRecipients();
		    echo 'Maill send';
		}
		catch(Exception $e){
		    echo "dont send".$mailer->ErrorInfo;
		}
	}
   
 //Có file và filename   
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
	
	
    // if( ! function_exists('xss_clean') ) {
    //     function xss_clean($data)
    //     {
    //         // Fix &entity\n;
    //         $data = str_replace(array('&amp;','&lt;','&gt;'), array('&amp;amp;','&amp;lt;','&amp;gt;'), $data);
    //         $data = preg_replace('/(&#*\w+)[\x00-\x20]+;/u', '$1;', $data);
    //         $data = preg_replace('/(&#x*[0-9A-F]+);*/iu', '$1;', $data);
    //         $data = html_entity_decode($data, ENT_COMPAT, 'UTF-8');
    //         // Remove any attribute starting with "on" or xmlns
    //         $data = preg_replace('#(<[^>]+?[\x00-\x20"\'])(?:on|xmlns)[^>]*+>#iu', '$1>', $data);
    //         // Remove javascript: and vbscript: protocols
    //         $data = preg_replace('#([a-z]*)[\x00-\x20]*=[\x00-\x20]*([`\'"]*)[\x00-\x20]*j[\x00-\x20]*a[\x00-\x20]*v[\x00-\x20]*a[\x00-\x20]*s[\x00-\x20]*c[\x00-\x20]*r[\x00-\x20]*i[\x00-\x20]*p[\x00-\x20]*t[\x00-\x20]*:#iu', '$1=$2nojavascript...', $data);
    //         $data = preg_replace('#([a-z]*)[\x00-\x20]*=([\'"]*)[\x00-\x20]*v[\x00-\x20]*b[\x00-\x20]*s[\x00-\x20]*c[\x00-\x20]*r[\x00-\x20]*i[\x00-\x20]*p[\x00-\x20]*t[\x00-\x20]*:#iu', '$1=$2novbscript...', $data);
    //         $data = preg_replace('#([a-z]*)[\x00-\x20]*=([\'"]*)[\x00-\x20]*-moz-binding[\x00-\x20]*:#u', '$1=$2nomozbinding...', $data);
    //         // Only works in IE: <span style="width: expression(alert('Ping!'));"></span>
    //         $data = preg_replace('#(<[^>]+?)style[\x00-\x20]*=[\x00-\x20]*[`\'"]*.*?expression[\x00-\x20]*\([^>]*+>#i', '$1>', $data);
    //         $data = preg_replace('#(<[^>]+?)style[\x00-\x20]*=[\x00-\x20]*[`\'"]*.*?behaviour[\x00-\x20]*\([^>]*+>#i', '$1>', $data);
    //         $data = preg_replace('#(<[^>]+?)style[\x00-\x20]*=[\x00-\x20]*[`\'"]*.*?s[\x00-\x20]*c[\x00-\x20]*r[\x00-\x20]*i[\x00-\x20]*p[\x00-\x20]*t[\x00-\x20]*:*[^>]*+>#iu', '$1>', $data);
    //         // Remove namespaced elements (we do not need them)
    //         $data = preg_replace('#</*\w+:\w[^>]*+>#i', '', $data);
    //         do
    //         {
    //             // Remove really unwanted tags
    //             $old_data = $data;
    //             $data = preg_replace('#</*(?:applet|b(?:ase|gsound|link)|embed|frame(?:set)?|i(?:frame|layer)|l(?:ayer|ink)|meta|object|s(?:cript|tyle)|title|xml)[^>]*+>#i', '', $data);
    //         }
    //         while ($old_data !== $data);
    //         // we are done...
    //         return $data;
    //     }
    // }
 //Hàm kiểm tra email đúng định dạng không
        // function emailValid($string) 
        //  { 
        //       if (preg_match ("/^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+\.[A-Za-z]{2,6}$/", $string)) 
        //     return true; 
        //    } 