<?php
ob_start();
include ('includes/header.php'); 
include('inc/myconnect.php');
include ('inc/function.php');
include('../sysenv.php');
include('../lib.php');
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
			header('Location:list_subcategory.php');
			exit();
		}
		if ($_SERVER['REQUEST_METHOD']=='POST') {
			// var_dump($_POST);
			// die();
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
			if(empty($_POST['cate_id'])) {
			
				// $errors[]='description';
			}
			else{
				$cate_id=$_POST['cate_id'];
			}
			if(empty($_POST['distrid'])) {
				$errors[]='distrid';
			} else {
				$distrid=$_POST['distrid'];
			}

			if(empty($_POST['add'])) {
				$errors[]='add';
			} else {
				$add=$_POST['add'];
			}

			if (empty($errors)) {
				if ($_FILES['img']['size']==''){
					$link_img=$_POST['anh_hi'];
				} 
				else{
				//upload ảnh
				if(($_FILES['img']['type']!="image/gif")
				&&($_FILES['img']['type']!="image/png")
				&&($_FILES['img']['type']!="image/jpg")
				&&($_FILES['img']['type']!="image/jpeg"))
				{
					$message="File Không Đúng Định Dạng";  
				}
				else
					if ($_FILES['img']['size']>6000000) 
				{
					$message="Kích Thước Phải Nhỏ Hơn 6MB";
				}
				else
				{ 
					$img=$_FILES['img']['name'];
					$link_img=$img;
					// move_uploaded_file($_FILES['img']['tmp_name'],"../upload/".$img);
					$link_img = uploadImagesThumb($_FILES['img'], '../upload/uploadCompany/', '../upload/uploadCompany/thumb/');
				}
				$sql="SELECT files FROM news WHERE id={$id}";
				$query_a=mysqli_query($dbc,$sql); 
				$anhInfo=mysqli_fetch_assoc($query_a);
				unlink('../upload/uploadCompany/'.$anhInfo['files']);
				// unlink('../upload/images/'.$anhInfo['files']);
				unlink('../upload/uploadCompany/thumb/'.$anhInfo['files']);
				}

				// Update
				$query_up="UPDATE companies SET name='{$name}', description='{$description}', files='{$link_img}' WHERE id={$id}";
				$results=mysqli_query($dbc,$query_up) or die ("Query {$query} \n <br> Mysql_errors:".mysqli_error($dbc));
				// Delete
				$query_de="DELETE FROM cate_company WHERE id_subcate=$id ";
				$results=mysqli_query($dbc,$query_de) or die ("Query {$query} \n <br> Mysql_errors:".mysqli_error($dbc));
				// Insert
				foreach ($cate_id as $key) {
					# code...
					$query_id="INSERT INTO cate_company VALUES ('$key','$id')";
					$results=mysqli_query($dbc,$query_id) or die ("Query {$query} \n <br> Mysql_errors:".mysqli_error($dbc));
				}
				if(mysqli_affected_rows($dbc)==1)
				{
			        	// echo "<p style='color:green;'>Sua thanh cong</p>";
					header('Location:list_subcategory.php');

				} 
				else 
				{
					
						echo "<p class='required'>Bạn Chưa Sửa Gì Cả</p>";
					
				}
			} 
			if (isset($message) && $message != ""){
				$message="<p class='required'>Bạn Hãy Nhập Đầy Đủ Thông Tin</p>";
			}
		}

		$query_id= "SELECT id, id_address, name, description, files, validate FROM companies WHERE id={$id} ";
		$result_id=mysqli_query($dbc,$query_id);
		kt_query($result_id,$query_id);
		if(mysqli_num_rows($result_id)==1)
		{
			list($id, $id_address,$name, $description, $files, $validate)=mysqli_fetch_array($result_id,MYSQLI_NUM);
		} else {
			$message="<p class='required'>ID Bài Viết Không Tồn Tại</p>";
			    //echo $message; die();
		}
		?>

		<form name="frmedit_subcategory" method="POST" enctype="multipart/form-data">
			<h3>Sửa thông tin: <?php if (isset($name)) { echo $name ;}?> </h3>
			<div class="form-group">
				<label style="display: block;">Chọn Danh mục (Nhấn  Ctrl (windows) / Command (Mac) để chọn nhiều)</label>
				<?php

					$sql = "SELECT * FROM cate_company WHERE id_subcate=".$id;

					$results = mysqli_query($dbc, $sql);
                    while ($cat=mysqli_fetch_array($results,MYSQLI_ASSOC)) {
                    		$catArr[]=$cat['id_cate'];
					}

					$sql = "SELECT * FROM category ";
					 // var_dump($sql);
                
                    $results = mysqli_query($dbc, $sql);
                    if ($results->num_rows > 0) {
                    	//Save id -> array is used to check 
                    	echo '<br/><select multiple id="cateid" name="cate_id[]" class="form-control">';
                        // output data of each row
                        while($row = $results->fetch_assoc()) {

                            echo '<option value="'.$row['id'].'" '.(in_array($row['id'],$catArr) ? 'selected':'') .'>'.($row['name']==null? 'SELECT':$row['name']).'</option>';

                        }  
                        echo '</select>';              
                    }
                ?>
			</div>
			<div class="form-group">
				<label>Tên thông tin mới</label>
				<input type="text" name="name" class="form-control" placeholder="Tên thông tin mới" value="<?php if (isset($name)){echo $name;}?>">
				<?php 
				if(isset($errors) && in_array('name', $errors))
				{
					echo "<p class='required'>Bạn Chưa Nhập Thông Tin</p>";
				}
				?> 
			</div>
			<div class="form-group">
				<label style="display: block;">Chọn khu vực quận/huyện</label>
				<?php  
					
					$result_id=mysqli_query($dbc, "SELECT d.id FROM `district` as d JOIN `address` as a ON d.id = a.id WHERE a.id = $id_address");
					$disctsID=mysqli_fetch_array($result_id,MYSQLI_NUM);
                    $results = mysqli_query($dbc, $getSQL["gDisct"]);

                    if ($results->num_rows > 0) {
                    	echo '<select  name="distrid" class="form-control">';
                        // output data of each row
                        echo '<option value="350"> Thành phố Huế </option>';
                        while($row = $results->fetch_assoc()) {
                        	if($row['published']==1){
                            	echo '<option value="'.$row['id'].'" '.($disctsID[0]==$row['id'] ? 'selected':'') .'>'.$row['title'].'</option>';
                        	}

                        }  
                        echo '</select>';              
                    }
                ?>
                <?php
				if(isset($errors) && in_array('distrid', $errors))
				{
					echo "<p class='required'>Khu vực không được để trống</p>";
				}
				?>
			</div>
			<div class="form-group">
				<?php 
					$result_id=mysqli_query($dbc, "SELECT a.name FROM `address` as a  WHERE a.id = $id_address");
					$addName=mysqli_fetch_array($result_id,MYSQLI_NUM);;
                    
				?>
				<label>Nhập chính xác địa chỉ Công ty/ Cửa hàng</label>
				<input type="text" name="add" class="form-control" placeholder="<?php echo(isset($addName)?$addName[0]:''); ?>"
				value="<?php 
				if(isset($_POST['add']))
				{
					echo $_POST['add'];
				}
				?>"
				>
				<?php
				if(isset($errors) && in_array('add', $errors))
				{
					echo "<p class='required'>Xin Hãy Nhập địa chỉ</p>";
				}
				?>
			</div>
			<div class="form-group">
				<label>Mô tả </label>
				<textarea class="form-control" id="noidung" name="description">
					<?php if(isset($description)){ echo $description;}?>
				</textarea>
			</div>
			<div class="form-group">
				<label>Ảnh Đại Diện Mới Của Sản Phẩm</label>
				<p><img width="250" src="<?php echo isset($files)?'../upload/uploadCompany/'.$files:'../lib/img/noimage.jpg' ?>"></p>
				<input type="hidden" name="anh_hi" value="<?php echo $files;?>">
				<input type="file" name="img">
			</div>
			<input type="submit" name="submit" class="btn btn primary" value="Sửa">
			<a href="list_subcategory.php"><button type="button" class="btn btn-danger"><i class="fa fa-times-circle" aria-hidden="true"></i> TRỞ VỀ</button></a>
			
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
				'cateid': 0
			},
			success: function (data) {
				var data_obj = JSON.parse(data);
			            //$('#menuid').empty();
			            for (var i = 0; i < data_obj.length; i++) {
			            	$('#cateid').append('<option value=' + data_obj[i].id + '>' + data_obj[i].name + '</option>');
			            }
			        }
			    });
	});
</script> -->
<?php 
include('includes/footer.php');
ob_flush();
?>