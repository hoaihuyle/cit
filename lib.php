<?php
#Load template
function loadTemplate($tpl_file) {
	$template = new template_file("$tpl_file");
	if ($template->error) {
		echo ("Error: Template not found :$tpl_file");
		exit;
	} else {
		$strContent = $template->content;
	}
	return $strContent;
}
function handleError($s_msg) {
	print $s_msg;
	exit ();
} // end func

//==== format data
function toHTML($str) {
	return htmlspecialchars($str);
} // end func

function toSql($str) {
	$s_tmp = stripslashes($str);
	$s_tmp = addslashes($s_tmp);
	return trim($s_tmp);
} // end func

function stripEnter($str) {
	return trim(ereg_replace("\r\n", " ", $str));
}

// function sendMail($mailto, $subject, $sender_name, $sender_email, $mailcontent) {
// 	$extra = "From: $sender_name<$sender_email>\nContent-Type:  text/html ";
// 	if (empty ($mailto)) {
// 		return false;
// 	}
// 	return mail($mailto, $subject, $mailcontent, $extra);
// }

function getUploadDir() {
	global $upload_dir;
	return $upload_dir;
}

function saveUploadedFile($file, $file_name, $s_path) {
	//$s_upload_dir= getUploadDir() ;	    
	$s_real_path = realpath($s_path);
	//$s_file_name= getUniqueFileName($file_name) ;
	$s_file_name = $file_name;
	if (move_uploaded_file($file, $s_real_path . "/" . $s_file_name))
		return $s_file_name;
	return "";
} // end func

function saveUploadedFile_v2($file, $s_path) {
	$fileName = date('Ymjgis').".pdf";
	move_uploaded_file($file["tmp_name"], $s_path . $fileName);
	return $fileName;
} // end func

function deleteUploadedFile($file_name, $s_path) {
	//$s_upload_dir= getUploadDir() ;	    
	$s_real_path = realpath($s_path);
	return @ unlink($s_real_path . "/" . $file_name);
}

function getFileExt($file_name) {
	$pos = strrpos($file_name, ".");
	if ($pos > 0)
		return substr($file_name, $pos);
	return "";
} // end func	

function getUniqueFileName($file_name) {
	return getNextValue() . "_" . $file_name;
}

function getOriginalFileName($file_name) {
	if (strlen(file_name) == 0)
		return "";
	$arr_str = split("_", $file_name, 2);
	if (count($arr_str) <= 1)
		return $file_name;
	else
		return $arr_str[1];
}

function getNextValue() {
	global $db, $b_debug;
	$s_sql = "INSERT INTO SEQUENCES(seq_value) VALUES(null)";
	$stmt = new Query($db, $s_sql);
	return $db->getLastID();
} // end func

//==== create list	
function getListByRange($start, $end, $jump = 1, $id = 0) {
	$start = (int) $start;
	for ($i = $start; $i <= $end; $i += $jump) {
		$sel = ($i == $id) ? "selected" : "";
		$list .= "<option value='$i' $sel>$i</option>\r\n";
	}
	return $list;
} // end func

function getListByArray($arr_option, $option) {
	while (list ($opt, $val) = each($arr_option)) {
		$sel = ($opt == $option) ? "selected" : "";
		$list .= "<option value='$opt' $sel>$val</option>\r\n";
	}
	return $list;
} // end func

function getListBySql($str_sql, $id = "") {
	global $db;
	$stmt = new Query($db, $str_sql);
	$tpl = "<option value='@value' @selected>@name</option>\r\n";
	while ($stmt->getRow()) {
		$selected = ($id == trim($stmt->row['id'])) ? "selected" : "";
		$record = ereg_replace('@value', trim($stmt->row['id']), $tpl);
		$record = ereg_replace('@name', $stmt->row['name'], $record);
		$record = ereg_replace('@selected', $selected, $record);
		$records .= $record;
	}
	return $records;
}

function selected($varsource, $vardes) {
	if ($varsource == $vardes)
		return "Selected";
}
//date format input dd/mm/yyyy
function dateDiff($from, $to) {
	$arr_from = split('/', $from);
	$d_f = intval($arr_from[0]);
	$m_f = intval($arr_from[1]);
	$y_f = intval($arr_from[2]);

	$arr_to = split('/', $to);
	$d_t = intval($arr_to[0]);
	$m_t = intval($arr_to[1]);
	$y_t = intval($arr_to[2]);
	$diff = ((mktime(0, 0, 0, $m_t, $d_t, $y_t) - mktime(0, 0, 0, $m_f, $d_f, $y_f)) / 86400);
	return $diff;

}
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
function make_thumb($img_name,$filename)
{
	$new_w = 480;
	$new_h = 271;
	$ext=getExtension($img_name);
	if(!strcmp("jpg",$ext) || !strcmp("jpeg",$ext))
		$src_img=imagecreatefromjpeg($img_name);
	if(!strcmp("png",$ext))
		$src_img=imagecreatefrompng($img_name);
	$old_x=imageSX($src_img);
	$old_y=imageSY($src_img);
	$ratio1=$old_x/$new_w;
	$ratio2=$old_y/$new_h;
	if($ratio1>$ratio2) {
		$thumb_w=$new_w;
		$thumb_h=$old_y/$ratio1;
	}
	else {
		$thumb_h=$new_h;
		$thumb_w=$old_x/$ratio2;
	}
	$dst_img=ImageCreateTrueColor($thumb_w,$thumb_h);
	imagecopyresampled($dst_img,$src_img,0,0,0,0,$thumb_w,$thumb_h,$old_x,$old_y);
	if(!strcmp("png",$ext))
		imagepng($dst_img,$filename);
	else
		imagejpeg($dst_img,$filename);
	imagedestroy($dst_img);
	imagedestroy($src_img);
}

function getExtension($str) {
	$i = strrpos($str,".");
	if (!$i) { return ""; }
	$l = strlen($str) - $i;
	$ext = substr($str,$i+1,$l);
	return $ext;
}
// md5
function encryptIt( $q, $cryptKey) {
    //$qEncoded      = base64_encode( mcrypt_encrypt( MCRYPT_RIJNDAEL_256, md5( $cryptKey ), $q, MCRYPT_MODE_CBC, md5( md5( $cryptKey ) ) ) );
    $qEncoded = md5($q.$cryptKey);
    return( $qEncoded );
}

function decryptIt( $q, $cryptKey) {
    $qDecoded      = rtrim( mcrypt_decrypt( MCRYPT_RIJNDAEL_256, md5( $cryptKey ), base64_decode( $q ), MCRYPT_MODE_CBC, md5( md5( $cryptKey ) ) ), "\0");
    return( $qDecoded );
}
// random string 6 characters
function RandomString()
{
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < 6; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}

// function sendeMail($mailto, $subject, $sender_name, $sender_email, $mailcontent) {
//     $extra= "Content-Type: text/plain;charset=utf-8\r\n";
//     $extra = "From: bDoctor<$sender_email>\nContent-Type:  text/html ";
//     if (empty ($mailto)) {
//         return false;
//     }
//     return mail($mailto, $subject, $mailcontent, $extra);
// };
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