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
			header('Location:list_info.php');
			exit();
		}
		if ($_SERVER['REQUEST_METHOD']=='POST') {
			$errors=array();
			if (empty($_POST['parentid'])) {
				$parentid=0;
			} else {
				$parentid=$_POST['parentid'];
			}
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
			if(empty($_POST['slug']))
			{
				$name2=strtolower(khongdau($name));
				$slug=str_ireplace(" ","-",$name2);
			} else {
				$slug=strtolower($_POST['slug']);
			}
			if (empty($errors)) {
				$query="UPDATE menu SET parent='{$parentid}', name='{$name}', description='{$description}', slug='{$slug}' WHERE id={$id}";
				$results=mysqli_query($dbc,$query) or die ("Query {$query} \n <br> Mysql_errors:".mysqli_error($dbc));
				if(mysqli_affected_rows($dbc)==1)
				{
			        	// echo "<p style='color:green;'>Sua thanh cong</p>";
					header('Location:list_info.php');
				} 
				else {
		
					echo "<p class='required'>Bạn Chưa Sửa Gì Cả</p>";
				}
			} 
			if (isset($message) && $message != ""){
				$message="<p class='required'>Bạn Hãy Nhập Đầy Đủ Thông Tin</p>";
			}
		}
		
		$query_id= "SELECT id, name, description, parent, slug FROM menu WHERE id={$id} ";
		$result_id=mysqli_query($dbc,$query_id);
		kt_query($result_id,$query_id);
		if(mysqli_num_rows($result_id)==1)
		{
			list($id, $name,$description, $parentid, $slug)=mysqli_fetch_array($result_id,MYSQLI_NUM);
		} else {
			$message="<p class='required'>ID Bài Viết Không Tồn Tại</p>";
			    //echo $message; die();
		}

		?>

		<form name="frmedit_info" method="POST" >
			<h3>Sửa thông tin: <?php if (isset($name)) { echo $name ;}?> </h3>
			<div class="form-group">
				<label style="display: block;">Chọn Menu Cha</label>
				<!-- <select id="menuid" name="menuid" class="form-control">
				Chưa select lại cái đã chọn
					<option value="">SELECT</option>

				</select> -->
				
				<!--=========Cần tối ưu code hơn======= -->
					<?php
					// if ($menuid==0) {
					// 	echo '<br/><select id="menuid" name="menuid" class="form-control">';
					// 	 echo '<option value="">SELECT </option>';
					// 	  echo '</select>';    
					// }
					// else
					// {
						$sql = "SELECT * FROM menu";
	                    $results = mysqli_query($dbc, $sql);
	                    if ($results->num_rows > 0) {
	                    	echo '<br/><select id="menuid" name="parentid" class="form-control">';
	                        // output data of each row
	                        echo '<option value="">SELECT </option>';
	                        while($row = $results->fetch_assoc()) {
	                            echo '<option value="'.$row['id'].'" '.($parentid==$row['id'] ? 'selected':'') .'>'.$row['name'].'</option>';

	                        }  
	                        echo '</select>';              
	                    }
					// }
                    ?>

				<!-- </select> -->
			</div>
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
				<label>Slug</label>
				<input type="text" name="slug" class="form-control" placeholder="Slug" value="<?php if (isset($slug)){echo $slug;}?>">
				<?php 
				// if(isset($errors) && in_array('slug', $errors))
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
<!-- <script type="text/javascript">
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
			            	$('#menuid').append('<option value=' + data_obj[i].id +'>' + data_obj[i].name + '</option>');
			            }
			        }
			    });
	});
</script> -->
<?php 
include('includes/footer.php');
ob_flush();
?>