<?php 
ob_start();
include('includes/header.php');
include('inc/myconnect.php');
include('inc/function.php');
include('../sysenv.php');	
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
			if(empty($_POST['name']))
			{
				$errors[]='name';
			} else {
				$name=$_POST['name'];
			}
			if(empty($_POST['description']))
			{
				$errors[]='description';
			} else {
				$description=$_POST['description'];
			}
		
			if(empty($_POST['parent_id'])) {
				$parent=0;
			} else {
				$parent=$_POST['parent_id'];
			}

			if(empty($_POST['slug'])) {
				$khongdau=khongdau($name);
				
				$slug=str_replace(' ', '-', strtolower($khongdau));
			} else {
				$slug=strtolower($_POST['slug']);
			}

			if(empty($errors))
			{

				$stmt_insert = $dbc->prepare($getSQL["iInfo"]);
				$stmt_insert->bind_param("ssis",$name,$description,$parent,$slug);
				$stmt_insert->execute();
				
				if(mysqli_affected_rows($dbc)==1)
				{
					header('Location: index.php');
				} else {
					echo "<p>Thêm Mới Không Thành Công</p>";
				}
			} else {
				$message="<p class='required'>Bạn Hãy Nhập Đầy Đủ Thông Tin</p>";
			}
		}
		?>
		<form name="name_info" method="POST">
			<?php
			if(isset($message))
			{
				echo $message;
			}
			?>
			<h3>THÊM MỚI MENU</h3>

			<!-- <div class="form-group">
				<label style="display: block;">Chọn Thông Tin</label>
				<?php
					selectCtrl('parent','forFormdim');
				?>
			</div> -->
			<div class="form-group">
				<label style="display: block;">Chọn Menu Cha</label>
				<select id="menuid" name="parent_id" class="form-control">
					<option value="">SELECT</option>
				</select>
			</div>
			<div class="form-group">
				<label>Thêm Menu</label>
				<input type="text" name="name" class="form-control" placeholder="Tên Menu"
				value="<?php 
				if(isset($_POST['name']))
				{
					echo $_POST['name'];
				}
				?>"
				>
				<?php
				if(isset($errors) && in_array('name', $errors))
				{
					echo "<p class='required'>Xin Hãy Nhập Tên Menu</p>";
				}
				?>
			</div>
			<div class="form-group">
				<label>Thêm slug</label>
				<input type="text" name="slug" class="form-control" placeholder="Tên slug"
				value="">
			</div>
			<div class="form-group">
				<label>Mô tả </label>
				<textarea id="noidung" name="description" class="form-control" value="<?php 
				if(isset($_POST['description']))
				{
					echo $_POST['description'];
				}
				?>"></textarea>
				<?php
				if(isset($errors) && in_array('description', $errors))
				{
					echo "<p class='required'>Bạn Chưa Nhập Mô Tả</p>";
				}
				?>
				<h5 class="text-danger">(Lưu ý: Set Chiều Cao: 50% & Chiều Dài: 50% Của Ảnh)</h5>
			</div>
			<input type="submit" name="submit" class="btn btn-primary" value="THÊM MỚI">

		</form>
	</div>
</div>
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="ckfinder/ckfinder.js"></script>
<script type="text/javascript">
	CKEDITOR.replace('noidung');
</script>
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			type: 'POST',
			url: 'inc/getProject.php',
			data: {
				'menuid': 0
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
</script>
<?php 
include('includes/footer.php');
ob_flush();
?>
