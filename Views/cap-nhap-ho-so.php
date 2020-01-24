<?php 
include('includes/layout_header.php');
include('lib.php');
$user_id =null;
if(isset($_GET["user_id"])){
$user_id=$_GET['user_id'];
}
// echo($actual_link);
if(($user_id==null || !(is_string($user_id)))){
header("Location: index.php");
} 
	$userInfo=display_users_infoBylist('u.id',$user_id);
	check_loginbySession($userInfo[0]['oauth_uid']);

	if($_SERVER['REQUEST_METHOD']=='POST')
	{

		if ($_FILES['img']['size']=='')
		{
			$link_img=$_POST['anh_hi'];
		} 
		else {
		//upload ảnh
			if(($_FILES['img']['type']!="image/gif")
			&&($_FILES['img']['type']!="image/png")
			&&($_FILES['img']['type']!="image/jpg")
			&&($_FILES['img']['type']!="image/jpeg"))
			{
				$message="File Không Đúng Định Dạng";  
			}
			else{
				if ($_FILES['img']['size']>6000000) {
					$message="Kích Thước Phải Nhỏ Hơn 6MB";
				}
				else{ 
					$img=$_FILES['img']['name'];
					$link_img=$img;
					// move_uploaded_file($_FILES['img']['tmp_name'],"../upload/".$img);
					$link_img = uploadImagesThumb($_FILES['img'], 'upload/uploadUser/', 'upload/uploadUser/thumb/');
				}
			}
			$sql="SELECT picture FROM applicant WHERE id={$userInfo[0]['aid']}";
			$query_a=mysqli_query($dbc,$sql); 
			$anhInfo=mysqli_fetch_assoc($query_a);
			unlink('upload/uploadUser/'.$anhInfo['picture']);
			// unlink('../upload/images/'.$anhInfo['files']);
			unlink('upload/uploadUser/thumb/'.$anhInfo['picture']);
			
		}

		$query_up="UPDATE applicant SET picture='{$link_img}' WHERE id={$userInfo[0]['aid']}";

		$result_up=mysqli_query($dbc,$query_up);
		var_dump($result_up);
		if(mysqli_affected_rows($dbc)==1){
			//echo "<p style='color:green;'>Sửa Thành Công</p>";
			header('Location: /account/'.$userInfo[0]['uid']);
		}
		else{
			echo "<p class='required'>Thông Tin Vẫn Chưa Được Chỉnh Sửa</p>";
		}
	}

?>



<div class="sub-panel">
  <div class="container">
    <div class="sub-panel-title">
      <div class="sp-left">
        <span>Thông tin</span>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index"><i class="fas fa-home"></i> Trang Chủ</a></li>
            <li class="breadcrumb-item active" aria-current="page">Tài khoản</li>
            <li class="breadcrumb-item active" aria-current="page">Hồ sơ</li>
          </ol>
        </nav>
      </div>
      <div class="sp-right text-center">
        <img src="/lib/img/detail-user-img-03.png" class="img-fluid">
      </div>
    </div>
  </div>
</div>


<section id="info-a-user" class="padding-space">
	<div class="container">
		<div>
			<?php include('includes/goback.php'); ?>	
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-6 col-lg-4 user-left border border-top-0">
				<div class="avatar-wrap">
					<form name="frmedit_user" method="POST" enctype="multipart/form-data">
						<div class="avatar">
							<div class="pencil-edit">
								<i class="fas fa-pencil-alt"></i>
							</div>
							<?php 
								$files = isset($userInfo[0]['apicture'])?'/upload/uploadUser/'.$userInfo[0]['apicture']:($userInfo[0]['upicture']);
							?>
							<img src="<?php echo($files);  ?>">													
						</div>
						<div class="text-center mb-3">
							<div class="btn-change-img">
									<div class="input-file-container d-inline-block" >

									<input type="hidden" name="anh_hi" value="<?php echo $files;?>">

								    <input class="input-file" name="img" id="my-file" type="file">
								    <label tabindex="0" for="my-file" class="input-file-trigger" >Gởi ảnh</label>
									</div>
									<p class="file-return"></p>
									<input type="submit" name="submit" class="btn btn-outline-primary text-uppercase d-inline-block" value="CẬP NHẬP AVATAR">
									<!-- class hide/show button: "btn-change-img" -->
									<!-- <button type="button"  class="btn btn-outline-primary text-uppercase d-inline-block">CẬP NHẬP AVATAR</button> -->
							</div>
						</div>
							
					</form>
				</div>
			</div>
			<div class="col-sm-12 col-md-6 col-lg-8 user-right">
				<div class="info-user-wrap">
					<div class="pencil-edit">
						<i class="fas fa-pencil-alt"></i>
					</div>
					<!-- Show detail infomation -->
					<div class="info-user-form">
						<div class="name-user">
							<h2><?php if(isset($userInfo[0]['afullname'])) echo($userInfo[0]['afullname']); else echo($userInfo[0]['ufullname']); ?></h2>
							<p>Xin mời bạn điền thông tin ở đây <i class="fas fa-mouse-pointer"> (Click here)</i></p>
						</div>
					</div>
					<div class="info-user-edit">
						<!-- <form id="upInfo" action="" method="post"> -->
							<div class="row">
							
								<div class="col-sm-12">
									<div class="form-group">
										<label><strong class="text-danger">*</strong>Họ và Tên</label>
										<input type="text" class="form-control" placeholder="Họ và Tên" id="upInfoname" value="<?php if(isset($userInfo[0]['afullname'])) echo($userInfo[0]['afullname']); else echo($userInfo[0]['ufullname']); ?>">
									</div>
								</div>
								
								<div class="col-sm-12 col-md-6">
									<div class="form-group">
										<label><strong class="text-danger">*</strong>Địa chỉ email</label>
										<input type="email" class="form-control" placeholder="email@gmail.com" id='upInfoemail' value="<?php echo($userInfo[0]['email']); ?>">
									</div>
								</div>
								<div class="col-sm-12 col-md-6">
									<div class="form-group">
										<label ><strong class="text-danger">*</strong>Số Điện Thoại</label>

										<div class="PhoneNumber">
											<input type="text" class="form-control" placeholder="Số điện thoại di động" id="upInfophone" value="<?php echo($userInfo[0]['aphone']); ?>">
										</div>
									</div>
								</div>
								<?php $birthday =null;
								 if(isset($userInfo[0]['birthday'])) $birthday = date("d-m-Y", strtotime($userInfo[0]['birthday']));  
								 ?>
								<div class="col-12">
									<div class="form-group">
										<label ><strong class="text-danger">*</strong>Ngày tháng năm sinh</label>
										<div class="form-group" >
											<div class="input-group date" id="birthday" data-target-input="nearest">
							                    <input type="text" class="form-control datetimepicker-input" data-toggle="datetimepicker" data-target="#birthday" id="upInfobirth" value="<?php echo(isset($birthday)?$birthday:''); ?>"/>
							                    <div class="input-group-append" data-target="#birthday" data-toggle="datetimepicker">
							                        <div class="input-group-text"><i class="fa fa-calendar"></i></div>
							                    </div>
							                </div>
										</div>
										
									</div>
								</div>
								<div class="col-12">
									<label><strong class="text-danger">*</strong>Giới Tính</label>
									<br>
									<div class="form-check-inline">
									  <label class="form-check-label icheck-material-indigo">
									    <input type="radio" class="form-check-input" id="male" name="optradio" value="male" <?php echo($userInfo[0]['gender']==1?'checked':'') ?> >
									    <label for="male">Nam</label>
									  </label>
									</div>
									<div class="form-check-inline">
									  <label class="form-check-label icheck-material-indigo">
									    <input type="radio" class="form-check-input" id="female" name="optradio" value="female" <?php echo($userInfo[0]['gender']==0?'checked':'') ?>>
									    <label for="female">Nữ</label>
									  </label>
									</div>
									
								</div>

								<div class="col-sm-12">
									<div class="text-right mb-4">
										<button class="btn btn-default cancel-edit-form">Hủy</button>

										<button id="btnSaveInfo" class="btn btn-success" /> Lưu </button>
									</div>
								</div>
							
							</div>
						<!-- </form> -->
					</div>
				</div>
			</div>
		</div>

		
	</div>
</section>

<!-- <section id="list-cat" class="padding-space">
	<div class="container">
		<div class="header-lc">
			<i class="fa fa-fw fa-list"></i>
			<span class="">Thông tin chung </span>
		</div>
		<div class="body-lc">
			
		</div>
	</div>
</section> -->


<!-- <table class="table table-striped">
			<thead>
				<tr>
					<th></th>
					<th class="text-center">Thứ 2</th>
					<th class="text-center">Thứ 3</th>
					<th class="text-center">Thứ 4</th>
					<th class="text-center">Thứ 5</th>
					<th class="text-center">Thứ 6</th>
					<th class="text-center">Thứ 7</th>
					<th class="text-center">Chủ Nhật</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Ca sáng</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" id="sa-2">
							<label for="sa-2"></label>
						</div>
					</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" id="sa-3">
							<label for="sa-3"></label>
						</div>
					</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" id="sa-4">
							<label for="sa-4"></label>
						</div>
					</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" id="sa-5">
							<label for="sa-5"></label>
						</div>
					</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" id="sa-6">
							<label for="sa-6"></label>
						</div>
					</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" id="sa-7">
							<label for="sa-7"></label>
						</div>
					</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" id="sa-cn">
							<label for="sa-cn"></label>
						</div>
					</td>
				</tr>
				<tr>
					<td>Ca sáng</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" checked="" id="indigo">
							<label for="indigo"></label>
						</div>
					</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" checked="" id="indigo">
							<label for="indigo"></label>
						</div>
					</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" checked="" id="indigo">
							<label for="indigo"></label>
						</div>
					</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" checked="" id="indigo">
							<label for="indigo"></label>
						</div>
					</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" checked="" id="indigo">
							<label for="indigo"></label>
						</div>
					</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" checked="" id="indigo">
							<label for="indigo"></label>
						</div>
					</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" checked="" id="indigo">
							<label for="indigo"></label>
						</div>
					</td>
				</tr>
				<tr>
					<td>Ca sáng</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" checked="" id="indigo">
							<label for="indigo"></label>
						</div>
					</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" checked="" id="indigo">
							<label for="indigo"></label>
						</div>
					</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" checked="" id="indigo">
							<label for="indigo"></label>
						</div>
					</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" checked="" id="indigo">
							<label for="indigo"></label>
						</div>
					</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" checked="" id="indigo">
							<label for="indigo"></label>
						</div>
					</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" checked="" id="indigo">
							<label for="indigo"></label>
						</div>
					</td>
					<td>
						<div class="icheck-material-indigo">
							<input type="checkbox" checked="" id="indigo">
							<label for="indigo"></label>
						</div>
					</td>
				</tr>
			</tbody>
		</table> -->

<?php include('includes/layout_footer.php') ?>

<script type="text/javascript">
	
	$(document).ready(function(){

		$('#btnSaveInfo').click(function(evt){  
		    // Get the Login Name value and trim it
		    var id = String('<?php echo $userInfo[0]['id_app']; ?>');
		    var name = $.trim($('#upInfoname').val());
		    var email = $.trim($('#upInfoemail').val());
		    var phone = $.trim($('#upInfophone').val());
		    var male = $.trim($('#male').val());
		    var female = $.trim($('#female').val());
		    var birth = $.trim($('#upInfobirth').val());
		    // Check if empty of not
		   if(birth.length!=0 && email.length!=0 && phone.length !=0 && (male.length!=0 || female.length!=0)){
		   		if(validateEmail(email))
		   		{
		   			appliData = {'id': id, 'name': name, 'email': email,'phone': phone,'male': male,'female':female, 'birth':birth }
		   			 $.post('/user/upAppli.php',
				    {
				       appliData:JSON.stringify(appliData)
				    },
				    function (data){ 
				      if(data !=null)
				      {
				      	animatSuccess(1000);
				      	setTimeout(function(){goBack();}, 1100);
				      	
				      }
				      else alert('Cập nhập không thành công');
				    });
		   		}
		   }
		   else{
		   		alert('Xin hãy điền đẩy đủ thông tin');
		   }
	    });
	});

</script>
