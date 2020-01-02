<?php
ob_start();
include ('includes/header.php'); 
include('inc/myconnect.php');
include ('inc/function.php');
?>
<style type="text/css">
.required{
	color: red;
}
</style>
<div class="row">
	<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
		<?php 
		//kiểm tra id có phải kiểu số không
		if (isset($_GET['id']) && filter_var($_GET['id'], FILTER_VALIDATE_INT,array('min_range'=>1))) {
			$id=$_GET['id'];
		} else {
			header('Location:list_category.php');
			exit();
		}
		if ($_SERVER['REQUEST_METHOD']=='POST') {
			$errors=array();
			if (empty($_POST['name'])) {
				// $errors[]='name';
			} else {
				$name=$_POST['name'];
			}
			if(empty($_POST['description'])) {
			
				// $errors[]='description';
			}
			else{
				$description=$_POST['description'];
			}
			if (empty($errors)) {
				$query="UPDATE category SET name='{$name}', description='{$description}' WHERE id={$id}";
				$results=mysqli_query($dbc,$query) or die ("Query {$query} \n <br> Mysql_errors:".mysqli_error($dbc));
				if(mysqli_affected_rows($dbc)==1)
				{
			        	// echo "<p style='color:green;'>Sua thanh cong</p>";
					header('Location:list_info.php');

				} else {
					if (!isset($message)) {
						echo "<p class='required'>Bạn Chưa Sửa Gì Cả</p>";
					}
				}
			} else {
				$message="<p class='required'>Bạn Hãy Nhập Đầy Đủ Thông Tin</p>";
			}
		}
		$query_id= "SELECT id, name, description FROM category WHERE id={$id} ";
		$result_id=mysqli_query($dbc,$query_id);
		kt_query($result_id,$query_id);
		if(mysqli_num_rows($result_id)==1)
		{
			list($id,$name, $description)=mysqli_fetch_array($result_id,MYSQLI_NUM);
		} else {
			$message="<p class='required'>ID Bài Viết Không Tồn Tại</p>";
			    //echo $message; die();
		}
		?>

		<form name="frmedit_info" method="POST" >
			<h3>Sửa thông tin: <?php if (isset($name)) { echo $name ;}?> </h3>
			<div class="form-group">
				<label>Tên thông tin mới</label>
				<input type="text" name="name" class="form-control" placeholder="Tên thông tin mới" value="<?php if (isset($name)){echo $name;}?>">
				<?php 
				// if(isset($errors) && in_array('name', $errors))
				// {
				// 	echo "<p class='required'>Bạn Chưa Nhập Thông Tin</p>";
				// }
				?> 
			</div>
			<div class="form-group">
				<label>Mô tả </label>
				<textarea class="form-control" id="noidung" name="description">
					<?php if(isset($description)){ echo $description;}?>
				</textarea>
			</div>
			<input type="submit" name="submit" class="btn btn primary" value="Sửa">
			<a href="list_info.php"><button type="button" class="btn btn-danger"><i class="fa fa-times-circle" aria-hidden="true"></i> TRỞ VỀ</button></a>
			
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