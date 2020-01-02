<?php
ob_start(); 
include('includes/header.php');
include('inc/myconnect.php');
include('inc/function.php');
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
		if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1)))
		{
			$id=$_GET['id'];
		}
		else
		{ 
			header('Location: list_img.php');
			exit();
		}
			//------ check exist bai viet in db

		$query_id="SELECT title,short_des,file_name FROM files WHERE id={$id}";
		$result_id=mysqli_query($dbc,$query_id);
		kt_query($result_id,$query_id);
			//Kiem tra xem id co ton tai khong
		if(mysqli_num_rows($result_id)==1)
		{
			list($title,$short_des,$file_name)=mysqli_fetch_array($result_id,MYSQLI_NUM);
		}
		else
		{
			$message="<p class='required'>ID Bài Viết Không Tồn Tại</p>";
			echo $message; die();
		}

			//------ end check


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
				if ($_FILES['img']['size']=='')
				{
					$link_img=$_POST['anh_hi'];
				}
				else
				{
					// upload ảnh
					if(($_FILES['img']['type']!="image/gif")
						&&($_FILES['img']['type']!="image/png")
						&&($_FILES['img']['type']!="image/jpg")
						&&($_FILES['img']['type']!="image/jpeg"))
						{
							$message="File Không Đúng Định Dạng"; 
						}
						elseif ($_FILES['img']['size']>6000000) 
						{
							$message="Kích Thước Phải Nhỏ Hơn 6MB";
						}
						else
						{ 
							$img=$_FILES['img']['name'];
							$link_img=$img;
							// move_uploaded_file($_FILES['img']['tmp_name'],"../upload/".$img);
							$link_img = uploadImagesThumb($_FILES['img'], '../upload/', '../upload/thumb/');
						}
						$sql="SELECT file_name FROM files WHERE id={$id}";
						$query_a=mysqli_query($dbc,$sql);
						$anhInfo=mysqli_fetch_assoc($query_a);
						unlink('../upload/'.$anhInfo['file_name']);
						// unlink('../upload/images/'.$anhInfo['files']);
						unlink('../upload/thumb/'.$anhInfo['file_name']);
				}
				$query_in="UPDATE files
				SET title='{$title}',
				short_des='{$short_des}',
				file_name='{$link_img}'
				WHERE id={$id}
				";
				$result_in=mysqli_query($dbc,$query_in);
				kt_query($result_in,$query_in);
				if(mysqli_affected_rows($dbc)==1)
				{
						// echo "<p style='color:green;'>Sua thanh cong</p>";
					header('Location: list_img.php');
				}
				else
				{
					echo "<p class='required'>Bạn Chưa Sửa Gì</p>";
				}
			}

				// check user input data
			if (isset($message) && $message != ""){
				$message="<p class='required'>Bạn Hãy Nhập Đầy Đủ Thông Tin</p>";
			}
		}

		?>
		<form name="frmedit_baiviet" method="POST" enctype="multipart/form-data">
			<?php
			if(isset($message))
			{
				echo $message;
			}
			?>
			<h3>SỬA THÔNG TIN HÌNH ẢNH: <?php if(isset($title)){echo $title;} ?></h3>
			<div class="form-group">
				<label>Tiêu Đề Mới</label>
				<input type="text" name="title" class="form-control"
				value="<?php 
				if(isset($title))
				{
					echo $title;
				}
				?>">
				<?php
				if(isset($errors) && in_array('title', $errors))
				{
					echo "<p class='required'>Tiêu Đề Không Được Để Trống</p>";
				}
				?>
			</div>
			<div class="form-group">
				<label>Mô Tả</label>
				<textarea class="form-control" id="noidung" name="short_des">
					<?php
					if(isset($short_des))
					{
						echo $short_des;
					}
					?>
				</textarea>
				<?php 
				if (isset($errors) && in_array('short_des', $errors)) {
					echo "<p class='required'>Mô Tả Mới Không Được Để Trống!</p>";
				}
				?> 
			</div>
			<div class="form-group">
				<label>Ảnh Đại Diện Mới</label>
				<p><img width="250" src="../upload/<?php echo $file_name;?>"></p>
				<input type="hidden" name="anh_hi" value="<?php echo $file_name;?>">
				<input type="file" name="img">
			</div>
			<input type="submit" name="submit" class="btn btn-primary" value="SỬA">
			<a href="list_img.php"><button type="button" class="btn btn-danger"><i class="fa fa-times-circle" aria-hidden="true"></i> TRỞ VỀ</button></a>

		</form>
	</div>
</div>
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="ckfinder/ckfinder.js"></script>
<script type="text/javascript">
	CKEDITOR.replace('noidung');
</script>
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
		            	var menuId = '';
		            	if ($('#menu_id').val() == data_obj[i].id) {
		            		menuId = "selected";
		            	}
		            	$('#menuid').append('<option value=' + data_obj[i].id + ' '+ menuId +' >' + data_obj[i].name + '</option>');
		            }
		        }
		    });
	});
</script> -->
<?php 
include('includes/footer.php');
ob_flush();
?>
