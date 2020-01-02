<?php
include('../lib.php');
if($_SERVER['REQUEST_METHOD'] == 'POST') {
	$mailfrom = 'cit@viectheogiocit.com';//main mail

	$lastname='';
	$email='';
	$phone='';

	$name_applicant='';
	$email_applicant='';
	$phone_applicant='';
	$gender_applicant='';
	$birth_applicant='';

	if(isset($_POST['appArr'])){
		$appArr=$_POST['appArr'];

		$name_applicant=$appArr['afullname'];
		$email_applicant=$appArr['email'];
		$phone_applicant=$appArr['aphone'];
		$gender_applicant=$appArr['sex'];
		$birth_applicant=$appArr['birthday'];
		// Hỉnh ảnh ứng viên
		// Hỉnh ảnh CV
		// 
	} 
	$title='';
	$end_date='';
	$cname='';
	if(isset($_POST['compArr'])){
		$compArr=$_POST['compArr'];

		$title=$compArr['title'];
		$end_date=$compArr['end_date'];
		$cname=isset($compArr['name'])?$compArr['name']:'<b>Không phải bài đăng công ty</b>';
	}

	if(isset($_POST['empArr'])){
		$empArr=$_POST['empArr'];

		$lastname = $empArr['efullname'];//Name's receiver
		$email = $empArr['ueemail'];// Address email's receiver
		$phone = $empArr['ac'];
		// $comments = 'Yêu cầu tuyển dụng';
	}

	/*Receiver*/
	$content_receive = 'Thông tin người ứng tuyển <br>';
	$content_receive .= '<br>Full Name: ' .$name_applicant;
	$content_receive .= '<br> Email: '.$email_applicant;
	$content_receive .= '<br> Phone Number: '.$phone_applicant;
	$content_receive .= '<br> Giới tính: '.$gender_applicant;
	$content_receive .= '<br> Ngày tháng năm sinh: '.$birth_applicant.'<br>';
	
	$content_receive .= '<br>Thông tin khác';
	$content_receive .= '<br> Bài đăng: '.$title;
	$content_receive .= '<br> Ngày kết thúc: '.$end_date;
	$content_receive .= '<br> Tên công ty: '.$cname. '<br>';

	$content_receive .= '<br>Thông tin nhà tuyển dụng';
	$content_receive .= 'br>Full Name: ' .$lastname;
	$content_receive .= '<br> Email: '.$email;
	$content_receive .= '<br> Phone Number: '.$phone.'<br>';
	$contentHTML ='<div>-------Đỗi ngũ C-IT trân trọng cảm ơn-------</div>
	<table><tbody><tr><td style="padding-right:7px;vertical-align:top;border-right:3px solid rgb(27,156,223)"><div style="max-width:200px"><img src="https://drive.google.com/uc?id=1fIO_Nw3Xa1qYy3yFusbStGrJYrNKtrtR" style="max-width:100%;height:auto;vertical-align:middle;border:0px;border-radius:0px"></div></td><td style="min-width:310px;padding-left:12px;"><table style="max-width:100%;background-color:transparent;border-collapse:collapse;border-spacing:0px"><tbody><tr style="display:block"><td style="margin-bottom:8px;font-family:&quot;Open Sans&quot;,sans-serif;font-size:16px;font-weight:600"><span style="color:rgb(27,156,223)">Việc theo giờ C-IT</span></td></tr><tr style="display:block"><td style="font-family:&quot;Open Sans&quot;,sans-serif;font-style:italic;line-height:21px"><span>Kết nối Sinh viên - Doanh Nghiệp</span></td></tr><tr style="display:block"><td style="font-family:&quot;Open Sans&quot;,sans-serif;line-height:21px"><span>EMAIL: <a href="mailto:cit@viectheogiocit.com" target="_blank">cit@viectheogiocit.com</a></span></td></tr><tr style="display:block"><td style="font-family:&quot;Open Sans&quot;,sans-serif;line-height:21px"><span style="width:20px;display:inline;color:rgb(27,156,223)">m:</span>&nbsp;<span style="padding-right:10px">0855566145</span></td></tr><tr style="display:block"><td style="font-family:&quot;Open Sans&quot;,sans-serif;line-height:21px;word-break:break-word"><span style="width:20px;color:rgb(27,156,223);display:inline-block">a:</span><span>20 Lê Lợi, T.P. Huế, T.T. Huế, Việt Nam</span></td></tr><tr style="display:block"><td style="font-family:&quot;Open Sans&quot;,sans-serif;line-height:21px"><div style="float:left;word-break:break-all"><span style="color:rgb(27,156,223);width:20px;display:inline-block">w:</span><span style="padding-right:10px"><a href="https://viectheogiocit.com/" style="color:rgb(51,51,51)" target="_blank">https://viectheogiocit.com/</a></span></div><div style="display:inline-block;word-break:break-all"><span style="color:rgb(27,156,223);width:17px;display:inline-block">e:</span>&nbsp;<span><a href="mailto:vieclamtheogiocit@gmail.com" style="color:rgb(51,51,51)" target="_blank">vieclamtheogiocit@gmail.com</a></span></div></td></tr><tr style="display:block"><td style="margin-top:8px"><a href="https://www.facebook.com/viectheogiocit/" style="color:rgb(0,136,204);margin-right:5px" target="_blank"><img src="https://www.thuengay.vn/img/icon/facebook.png" style="max-width:100%;height:auto;vertical-align:middle;border:0px"></a><a href="https://www.youtube.com/channel/UCK5SScE6h-O8dhNpvTlI2cg?view_as=subscriber" style="color:rgb(0,136,204);margin-right:5px" target="_blank"><img src="https://www.thuengay.vn/img/icon/youtube.png" style="max-width:100%;height:auto;vertical-align:middle;border:0px"></a></td></tr></tbody></table></td></tr></table>';
	/*End content Receiver*/
	sendeMail('vieclamtheogiocit@gmail.com', 'viectheogiocit.com', 'Việc Theo Giờ C-IT', 'vieclamtheogiocit@gmail.com', $content_receive);//Send email from  System to my email. Same email to save duplicate


	if(isset($empArr) && $email!=''){
		$content_send = 'Xin Chào '.$lastname.',<br><br>';
		$content_send .= 'Cám ơn bạn đã sử dụng dịch vụ của chúng tôi.<br><br>';
		$content_send .= 'Chúng tôi vừa nhận được, yêu cầu ứng tuyển của'.$name_applicant.'.<br><br>';
		$content_send = 'Thông tin người ứng tuyển gồm <br>';
		$content_send .= '<br>Full Name: ' .$name_applicant;
		$content_send .= '<br> Email: '.$email_applicant;
		$content_send .= '<br> Phone Number: '.$phone_applicant;
		$content_send .= '<br> Giới tính: '.$gender_applicant. '<br>';
		$content_send .= '<br> Ngày sinh: '.$birth_applicant. '<br>';
		$content_send .= 'Liên hệ với chúng tôi qua email này, nếu bạn không liên lạc được với ứng viên.<br><br>';
		$content_send .= 'Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi.<br><br>';
		$content_send .='<br>'.$contentHTML.'<br>';
		sendeMail($email, 'viectheogiocit.com', 'Việc Theo Giờ C-IT', $mailfrom, $content_send);//Send email to Customer
	}

	echo json_encode(0);
}
?>