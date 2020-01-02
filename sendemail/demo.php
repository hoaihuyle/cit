<?php

function sendeMail($mailto, $subject, $sender_name, $sender_email, $mailcontent) {
    $extra = "From: $sender_name<$sender_email>\nContent-Type:  text/html ";
    if (empty ($mailto)) {
        return false;
    }
    return mail($mailto, $subject, $mailcontent, $extra);
};


$mailfrom = "vieclamtheogiocit@gmail.com";//main mail

$lastname = "Hoài Huy Lê";//Name's receiver
$email = "hoaihuy2011.vn@gmail.com";// Address email's receiver
$phone = "TestEmail";
$comments = "121212121212";

$content_send = "Xin Chào ".$lastname.",<br><br>";
$content_send .= "Cám ơn bạn đã sử dụng dịch vụ của chúng tôi.<br><br>";
$content_send .= "Chúng Tôi Sẽ Liên Hệ Với Bạn Trong Thời Gian Ngắn Nhất.<br><br>";
$content_send .= "Best Regards,<br>";
$content_send .= "bData team";

$content_receive = "Thông Tin Khách Hàng Đã Đặt Hàng Trên Hệ Thống Máy Bán Hàng Tự Động ( hethongbanhangtudong.com )<br>";
$content_receive .= "<br>Full Name: " .$lastname;
$content_receive .= "<br> Email: ".$email;
$content_receive .= "<br> Phone Number: ".$phone;
$content_receive .= "<br> Địa Chỉ: ".$comments. "<br>";
$contentHTML ='<div>-----Cảm ơn bạn đã ủng hộ và sử dụng dịch vụ của C-IT-----</div>
	<table><tbody><tr><td style="padding-right:7px;vertical-align:top;border-right:3px solid rgb(27,156,223)"><div style="max-width:200px"><img src="https://drive.google.com/uc?id=1fIO_Nw3Xa1qYy3yFusbStGrJYrNKtrtR" style="max-width:100%;height:auto;vertical-align:middle;border:0px;border-radius:0px"></div></td><td style="min-width:310px;padding-left:12px;"><table style="max-width:100%;background-color:transparent;border-collapse:collapse;border-spacing:0px"><tbody><tr style="display:block"><td style="margin-bottom:8px;font-family:&quot;Open Sans&quot;,sans-serif;font-size:16px;font-weight:600"><span style="color:rgb(27,156,223)">Việc theo giờ C-IT</span></td></tr><tr style="display:block"><td style="font-family:&quot;Open Sans&quot;,sans-serif;font-style:italic;line-height:21px"><span>Kết nối Sinh viên - Doanh Nghiệp</span></td></tr><tr style="display:block"><td style="font-family:&quot;Open Sans&quot;,sans-serif;line-height:21px"><span>EMAIL: <a href="mailto:cit@viectheogiocit.com" target="_blank">cit@viectheogiocit.com</a></span></td></tr><tr style="display:block"><td style="font-family:&quot;Open Sans&quot;,sans-serif;line-height:21px"><span style="width:20px;display:inline;color:rgb(27,156,223)">m:</span>&nbsp;<span style="padding-right:10px">0855566145</span></td></tr><tr style="display:block"><td style="font-family:&quot;Open Sans&quot;,sans-serif;line-height:21px;word-break:break-word"><span style="width:20px;color:rgb(27,156,223);display:inline-block">a:</span><span>20 Lê Lợi, T.P. Huế, T.T. Huế, Việt Nam</span></td></tr><tr style="display:block"><td style="font-family:&quot;Open Sans&quot;,sans-serif;line-height:21px"><div style="float:left;word-break:break-all"><span style="color:rgb(27,156,223);width:20px;display:inline-block">w:</span><span style="padding-right:10px"><a href="https://viectheogiocit.com/" style="color:rgb(51,51,51)" target="_blank">https://viectheogiocit.com/</a></span></div><div style="display:inline-block;word-break:break-all"><span style="color:rgb(27,156,223);width:17px;display:inline-block">e:</span>&nbsp;<span><a href="mailto:vieclamtheogiocit@gmail.com" style="color:rgb(51,51,51)" target="_blank">vieclamtheogiocit@gmail.com</a></span></div></td></tr><tr style="display:block"><td style="margin-top:8px"><a href="https://www.facebook.com/viectheogiocit/" style="color:rgb(0,136,204);margin-right:5px" target="_blank"><img src="https://www.thuengay.vn/img/icon/facebook.png" style="max-width:100%;height:auto;vertical-align:middle;border:0px"></a><a href="https://www.youtube.com/channel/UCK5SScE6h-O8dhNpvTlI2cg?view_as=subscriber" style="color:rgb(0,136,204);margin-right:5px" target="_blank"><img src="https://www.thuengay.vn/img/icon/youtube.png" style="max-width:100%;height:auto;vertical-align:middle;border:0px"></a></td></tr></tbody></table></td></tr></table>'
	$content_receive .='<br>'.$contentHTML.'<br>';
// sendeMail($email, "viectheogiocit.com", "C-IT Việc làm theo giờ", $mailfrom, $content_send);//Send email to Customer
sendeMail($mailfrom, "viectheogiocit.com", "C-IT Việc làm theo giờ", $mailfrom, $content_receive);//Send email to System

echo json_encode(0);




?>