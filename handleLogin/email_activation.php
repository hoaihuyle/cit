<?php include('includes/layout_header.php');?>
<?php 

//Thông báo 
$msg='';
if(!empty($_GET['token']) && isset($_GET['token']))
{	//Gán chuỗi token
	$token = $_GET['token']; 
	
	
	$c=mysqli_query($dbc,"SELECT id FROM users WHERE token='$token'");
	
	if(mysqli_num_rows($c) > 0)
	{

	$count=mysqli_query($dbc,"SELECT id FROM users WHERE token='$token' and active='0'");

	if(mysqli_num_rows($count) == 1)
	{
    mysqli_query($dbc,"UPDATE users SET active='1' WHERE token='$token'");
    $msg="Tài khoản của bạn đã được kích hoạt";	
    }
    else
    {
	$msg ="Tài khoản của bạn đã được kích hoạt, bạn không cần kích hoạt lại";
    }

    }
    else
    {
	$msg ="Mã kích hoạt sai.";
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
	<div style="height: 300px; margin-top: 150px; text-align: center;">
		<h2><?php echo $msg; ?></h2>
	</div>
</div>
<?php include('includes/layout_footer.php');?>