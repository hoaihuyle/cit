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
			if(empty($_POST['menu_id']))
			{
				$errors[]='menu_id';
			} else {
				$menu_id=$_POST['menu_id'];
			}
			if(empty($_POST['description']))
			{
				$description=null;
			} else {
				$description=$_POST['description'];
			}

			if(empty($errors))
			{
				// $query="INSERT INTO menu(name, parent_id) VALUES('{$name}','{$parent_id}')";
				// $results=mysqli_query($dbc,$query) or die("Query {$query} \n <br> Mysql_errors:".mysqli_error($dbc));
				//insert vao csdl
				// $menu_id=$_POST['menu_id'];
				$stmt_insert = $dbc->prepare($getSQL["iType"]);
				$stmt_insert->bind_param("is",$menu_id,$description);
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
			<h3>THÊM MỚI DANH MỤC</h3>

			<div class="form-group">
				<label style="display: block;">Chọn Loại Menu</label>
				<select id="menuid" name="menu_id" class="form-control">
					<option value="">SELECT</option>
				</select>
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
