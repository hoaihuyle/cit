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
				$description="";
			} else {
				$description=$_POST['description'];
			}
		
			if(empty($errors))
			{
				$stmt_insert = $dbc->prepare($getSQL["iCate"]);
				$stmt_insert->bind_param("ss",$name,$description);
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
			<h3>THÊM MỚI Danh mục</h3>

			<!-- <div class="form-group">
				<label style="display: block;">Chọn Thông Tin</label>
				<?php
					selectCtrl('parent','forFormdim');
				?>
			</div> -->
			<div class="form-group">
				<label>Thêm Danh mục</label>
				<input type="text" name="name" class="form-control" placeholder="Tên category"
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
					echo "<p class='required'>Xin Hãy Nhập Tên Category</p>";
				}
				?>
			</div>
			<div class="form-group">
				<label>Mô tả </label>
				<textarea id="noidung" name="description" class="form-control" value="<?php 
				if(isset($_POST['description']))
				{
					echo $_POST['description'];
				}
				?>"></textarea>
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
<?php 
include('includes/footer.php');
ob_flush();
?>
