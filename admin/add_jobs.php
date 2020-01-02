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
		

			if(empty($errors))
			{
				// $query="INSERT INTO menu(name, parent_id) VALUES('{$name}','{$parent_id}')";
				// $results=mysqli_query($dbc,$query) or die("Query {$query} \n <br> Mysql_errors:".mysqli_error($dbc));
				//insert vao csdl
				// $menu_id=$_POST['menu_id'];
				$stmt_insert = $dbc->prepare($getSQL["iJobs"]);
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
		<form name="name_jobs" method="POST">
			<?php
			if(isset($message))
			{
				echo $message;
			}
			?>
			<h3>THÊM MỚI JOBS</h3>

			<div class="form-group">
				<label>Thêm Jobs</label>
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
