<?php 
include 'includes/layout_header.php';
//Thông báo 
$msg='';
$msg1 = '';
if(!empty($_GET['token']) && isset($_GET['token']))
{ //Gán chuỗi token
  $token = $_GET['token']; 
  $is_check = $db->fetchOne('users',"token = '".$token."' ");
  $idUser = intval($is_check['id']);

  if($is_check != null && $is_check['active'] == 0)
  {
    $errors = [];
    if($_SERVER["REQUEST_METHOD"]=="POST")
    {
      // $data['password'] = password_hash('password123',PASSWORD_BCRYPT);
      // $data['active'] = 1;
      $data = [
        'password' => MD5(postInput('password123')),
        'active' => 1
      ];
      
      if(postInput('password123') =='')
      {
        $errors['password'] = "Mật khẩu không được để trống";
      }
      if(empty($errors))
        {
          //insert dữ liệu
                $insert_dl = $db->update('users',$data,array('id' => $idUser));
                if($insert_dl != null)
                {
                  
                  $title = 'XÁC NHẬN ĐỔI MẬT KHẨU';
                  $content = 'Yêu cầu đổi mật khẩu của bạn thành công. Vui lòng đăng nhập để được hoạt động với tư cách thành viên. Đăng nhập : <a href="'.$base_url.'">tại đây</a>';
                  $nTo = $is_check['email'];
                  $mTo =  $is_check['email'];
                  $diachicc =  $is_check['email'];
                  $mail = sendMail($title, $content, $nTo, $mTo,$diachicc='');
                  
                  
                  if($mail==1) 
                  {
                    header('location: index.php');
                  }     
                  
                                    
                }
                $msg1 = "Không thành công";
        }
      }
      
    }
   
  else {
     $msg = "Yêu cầu đổi mật khẩu đã hết hạn";
   }
  
  
}
?>



<div class="sub-panel">
  <div class="container">
    <!-- <div class="sub-panel-title">
      <div class="sp-left">
        <span>Nhân viên</span>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#"><i class="fas fa-home"></i> Trang Chủ</a></li>
            <li class="breadcrumb-item active" aria-current="page">Nhân viên</li>
          </ol>
        </nav>
      </div>
      <div class="sp-right text-center">
        <img src="lib/img/job-upload-01.png" class="img-fluid">
      </div>
    </div> -->
  </div>
</div>
<div class="container-fluid">
  <div class="container-fluid">
  <div style="">
    <?php if($msg == ''): ?>
        <!-- <form role="form" method="POST">
          <h2><?php echo $msg1; ?></h2>
          <p>Nhập mật khẩu mới<p>
          <input type="password" name="password123" id="PassW">
          <h3>Nhập lại mật khẩu mới</h3>
          <input type="password" name="re_password" id="re_PassW" >
          <button type="submit">Xác nhận</button>
         </form> -->
          
         <div class="container" style="height: 300px; margin-top: 100px;">
  <h2 style="text-align: center; padding-bottom: 50px;">Đổi mật khẩu</h2>
  <form class="form" method="POST">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Nhập mật khẩu mới</label>
      <div class="col-sm-10" style="float: right;">
        <input type="password" class="form-control" id="PassW" placeholder="Nhập mật khẩu mới" name="password123">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Nhập lại mật khẩu</label>
      <div class="col-sm-10" style="float: right;">          
        <input type="password" class="form-control" id="re_PassW" placeholder="Nhập lại mật khẩu mới" name="re_password">
      </div>
    </div>
    <div class="form-group" style="float: right; padding-top: 20px;">        
      <div class="col-sm-12">
        <button type="submit" class="btn btn-primary">Xác nhận</button>
      </div>
    </div>
  </form>
</div> 
    <?php else: ?>
       <div class="container" style=" text-align: center;height: 200px; margin-top: 150px;">
          <h2><?php echo $msg; ?></h2>
       </div>
    <?php endif ?>
  </div>
</div>
</div>
<?php include('includes/layout_footer.php');?>

<!-- kiểm tra mật khẩu không khớp  -->
<script type="text/javascript">
    var password = document.getElementById("PassW")
      , confirm_password = document.getElementById("re_PassW");
    function validatePassword(){
      if(password.value != confirm_password.value) {
        confirm_password.setCustomValidity("Mật khẩu không khớp");
      } else {
        confirm_password.setCustomValidity('');
      }
    }
    password.onchange = validatePassword;
    confirm_password.onkeyup = validatePassword;
  </script>