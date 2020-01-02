<?php 
include 'admin/inc/database.php';
include 'admin/inc/function.php';
include 'admin/inc/myconnect.php';

if($_SERVER["REQUEST_METHOD"]=="POST")
{
	//Xử lý thêm tk
      $data= [
          "fullname" => postInput("fullname"),
          "email" => postInput('email'),
          "password" => MD5(postInput('password')),
          "oauth_provider" => "email",
          "picture" => img_user(),
          "created" => date('Y-m-d H:i:s'),
          "modified" => date('Y-m-d H:i:s'),
          "modified" => date('Y-m-d H:i:s'),
          "token" => password_hash('token', PASSWORD_BCRYPT),
          "active" => '0'
        ];
        // _debug($data['email']=='');
        // die();
      $errors = [];
      
        if(postInput("fullname")=='')
      {
        $errors['fullname'] = "Username không được để trống";
      }
      if(postInput("email") == '')
      {
        $errors['email'] = "Email không được để trống";
      }
      if(postInput('password')=='')
      {
        $errors['password'] ="Password không được để trống";
      if(isset($data))
        {
          if(postInput("fullname")=='')
        {
          $errors['fullname'] = "Username không được để trống";
        }
        if(postInput("email") == '')
        {
          $errors['email'] = "Email không được để trống";
        }
        else if (!filter_var(postInput("email"), FILTER_VALIDATE_EMAIL)) {
              $errors['email'] = "Định dạng Email không đúng"; 
              }
        else
        {
          $isset = $db->fetchOne("users","email = '".$data['email']."' " );
              if(count($isset) !=NULL)
              {
                  $errors['email'] = "Tên tài khoản đã tồn tại";
              }
        }
        
        if(postInput('DK_password')=='')
        {
          $errors['DK_password'] ="Password không được để trống";
        }
      
        //Nếu không tồn tại lỗi thì thực thi lệnh
        if(empty($errors))
        {
          //insert dữ liệu
                $insert_dl = $db->insert("users",$data);
                if($insert_dl>0)
                {
                  $title = 'Xác nhận đăng ký';
                  $content = 'Xin chào tài khoản '.$data['fullname'].'. Bạn đã đăng ký thành công tài khoản.!! Vui lòng nhấn vào liên kết này để xác nhận tài khoản của bạn <a href="'.$base_url_email.'?token='.$data["token"].'">'.$base_url_email.'?token='.$data["token"].'</a>';
                  $nTo = $data['fullname'];
                  $mTo =  $data['email'];
                  $diachicc =  $data['email'];
                  $mail = sendMail($title, $content, $nTo, $mTo,$diachicc='');
                  if($mail==1)
                  {
                    header('location: dang-tin.php');
                 
                  } 
                    header('location: chi-tiet-bai-dang.php');
               } 
        }
        else
        {
          $errors = "Thêm mới thất bại";
        }
      }
      //Kết thúc xử lý đăng ký
}

 ?>