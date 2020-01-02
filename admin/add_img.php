<?php
ob_start(); 
include('includes/header.php');
include('inc/myconnect.php');
include('inc/function.php');
include('../sysenv.php'); 
include('../lib.php');
?>
<style type="text/css">
.required {
	color: red;
}
</style>
<div class="row">
	<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
		<?php
		if($_SERVER['REQUEST_METHOD']=='POST') 
		{
			$errors=array();
			if(empty($_POST['title'])) {
				$errors[]='title';
			} else {
				$title=$_POST['title'];
			}
			if(empty($_POST['short_des'])) {
				$errors[]='short_des';
			} else {
				$short_des=$_POST['short_des'];
			}
			if(empty($errors))
			{
				
					// if ($_FILES['img']['size']=='')
					// {
					// 	$message="Bạn Chưa Chọn File Ảnh";
					// }else if(($_FILES['img']['type']!="image/gif")
					// 	&&($_FILES['img']['type']!="image/png")
					// 	&&($_FILES['img']['type']!="image/jpg")
					// 	&&($_FILES['img']['type']!="image/jpeg")
					// 	)
					// {
					// 	$message="File Không Đúng Định Dạng";
					// }
					// elseif ($_FILES['img']['size']>6000000)
					// {
					// 	$message="Kích Thước Phải Nhỏ Hơn 6MB";
					// }
					// else
					// {
					// 	$img=$_FILES['img']['name'];

					// 	move_uploaded_file($_FILES['img']['tmp_name'],"../upload/".$img);
					// }
				if(isset($_FILES["img"]) && !empty($_FILES['img']['name'])){
					$allowed =  array('gif','png' ,'jpg');
					$filename = $_FILES['img']['name'];
					$ext = pathinfo($filename, PATHINFO_EXTENSION);
					$messageError = "";

					if ($_FILES["img"]["error"] > 0) {
						$messageError .= "Lỗi quá trình mở file.";
					}

					if (!in_array($ext, $allowed)) {
						$messageError .= " File không đúng định dạng.";
					}

					if ($_FILES["img"]["size"] > 6*1024*1024) {
						$messageError .= " Dung lượng file không được lớn hơn 6MB.";
					}

					if($messageError == ""){
						$img = uploadImagesThumb($_FILES['img'], '../upload/', '../upload/thumb/');
					}else {
						$message = $messageError;
					}
				} else {
					$img = ''; 
				}
				$stmt=$dbc->prepare($getSQL["iImage"]);
				$stmt->bind_param("sss",$title,$img,$short_des);
				$results=$stmt->execute();
				if(mysqli_affected_rows($dbc)==1)
				{
					header('Location: list_img.php');
					// echo "<p class='required'>Thêm Mới Thành Công</p>";
				}
				else
				{
					echo "<p class='required'>Thêm Mới Không Thành Công</p>";
				}
				// $_POST['title']='';
			} 
			else
			{
				$message="<p class='required'>Bạn Hãy Nhập Đầy Đủ Thông Tin</p>";
			}
		}
		?>
		<form name="frmadd_slider" method="POST" enctype="multipart/form-data">
			<?php
			if(isset($message))
			{
				echo $message;
			}
			?>
			<h3>THÊM MỚI HÌNH ẢNH </h3>
		<!-- 	<div class="form-group">
				<label style="display: block;">Chọn Dòng Sản Phẩm Mới</label>
				<?php
					selectCtrl('parent','forFormdim');
				?>
			</div> -->
			<!-- <div class="form-group">
				<label style="display: block;">Chọn Dòng Sản Phẩm</label>
				<select id="newsid" name="parentid">
					<option value="">SELECT</option>
				</select>
			</div> -->
		<!-- 	<div class="form-group">
				<label style="display: block;">Chọn Dòng Sản Phẩm</label>
				<select id="menuid" name="menu_id" class="form-control">
					<option value="">SELECT</option>
				</select>
			</div> -->
			<div class="form-group">
				<label>Tiêu Đề</label>
				<input type="text" name="title" class="form-control" placeholder="Tiêu Đề"
				value="<?php 
				if(isset($_POST['title']))
				{
					echo $_POST['title'];
				}
				?>"
				>
				<?php
				if(isset($errors) && in_array('title', $errors))
				{
					echo "<p class='required'>Tiêu Đề Không Được Để Trống</p>";
				}
				?>
			</div>
				<div class="form-group">
					<label>Mô tả</label>
					<textarea id="noidung" name="short_des" class="form-control"
					value="<?php 
					if(isset($_POST['short_des']))
					{
						echo $_POST['short_des'];
					}
					?>"
					></textarea>
					<?php
					if(isset($errors) && in_array('short_des', $errors))
					{
						echo "<p class='required'>Bạn Chưa Nhập Mô Tả</p>";
					}
					?>
				</div>
				<div class="form-group">
				<label>Chọn Ảnh</label> 
				<input type="file" name="img">
			</div>
				<input type="hidden" name="menuid" id="menu-id" value="">
				<input type="submit" name="submit" class="btn btn-primary" value="THÊM MỚI">
			</form>
		</div>
	</div>
	<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="ckfinder/ckfinder.js"></script>
	<script type="text/javascript">
		CKEDITOR.replace('noidung');
	</script>
	<script src="js/jquery.min.js"></script>
	<!-- <script type="text/javascript">
		$(document).ready(function(){
			$.ajax({
				type: 'POST',
				url: 'inc/getProject.php',
				data: {
					'menuid': 2
				},
				success: function (data) {
					var data_obj = JSON.parse(data);
			            //$('#menuid').empty();
			            for (var i = 0; i < data_obj.length; i++) {
			            	$('#menuid').append('<option value=' + data_obj[i].id + '>' + data_obj[i].name + '</option>');
			            }
			        }
			    });
		});
	</script> -->
	<?php 
	include('includes/footer.php');
	ob_flush();
	?>