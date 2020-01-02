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
		
			if(empty($_POST['cateid'])) {
				$errors[]='cateid';
			} else {
				$cateid=$_POST['cateid'];
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

			if(empty($errors))
			{ 
			
				/*Upload hình ản*/
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
						$img = uploadImagesThumb($_FILES['img'], '../upload/uploadCompany/', '../upload/uploadCompany/thumb/');
					}else {
						$message = $messageError;
					}
				} else { 
					$img = ''; 
				}

				/*Thêm address sau đó lấy id vừa thêm thêm vào company*/
				$stmt_insert = $dbc->prepare($getSQL["iAdd"]);

				$stmt_insert->bind_param("is",$distrid,$add);
				$stmt_insert->execute();
				$addlast_id = $dbc->insert_id;// id sub_cate vừa tạo
				/*Thêm*/
				$stmt_insert = $dbc->prepare($getSQL["iSub"]);
				$stmt_insert->bind_param("isss",$addlast_id,$name,$description,$img);
				$stmt_insert->execute();
				$last_id = $dbc->insert_id;// id sub_cate vừa tạo
				foreach ($cateid as $key) {
					# code...
					$stmt=$dbc->prepare($getSQL["iSubcate_Cate"]);
					$stmt->bind_param("ii",$key,$last_id);
					$results=$stmt->execute();
				}
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
		<form name="name_cate" method="POST" enctype="multipart/form-data">
			<?php
			if(isset($message))
			{
				echo $message;
			}
			?>
			<h3>THÊM MỚI Category</h3>

			<!-- <div class="form-group">
				<label style="display: block;">Chọn Thông Tin</label>
				<?php
					selectCtrl('parent','forFormdim');
				?>
			</div> -->
			<div class="form-group">
				<label style="display: block;">Chọn Category Cha (Nhấn  Ctrl (windows) / Command (Mac) để chọn nhiều)</label>
				<select multiple="" id="cateid" name="cateid[]" class="form-control">
				</select>
			</div>
			<div class="form-group">
				<label>Thêm Tên Công Ty/ Cửa hàng</label>
				<input type="text" name="name" class="form-control" placeholder="Tên Tên Công Ty/ Cửa hàng"
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
				<label style="display: block;">Chọn khu vực quận/huyện</label>
				<?php  
					 // var_dump($sql);
                    $results = mysqli_query($dbc, $getSQL["gDisct"]);
                    if ($results->num_rows > 0) {
                    	echo '<select  name="distrid" class="form-control">';
                        // output data of each row
                        echo '<option selected value="350"> Thành phố Huế </option>';
                        while($row = $results->fetch_assoc()) {
                        	if($row['published']==1){
                            	echo '<option value="'.$row['id'].'">'.$row['title'].'</option>';
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
				<label>Nhập chính xác địa chỉ Công ty/ Cửa hàng</label>
				<input type="text" name="add" class="form-control" placeholder="26 Nguyễn Tri Phương"
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
			<div class="form-group">
				<label>Chọn Ảnh Đại Diện Của Bài Viết</label>
				<input type="file" name="img">
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
			'cateid': 0
		},
		success: function (data) {
			// console.log(data);
			var data_obj = JSON.parse(data);
		            //$('#menuid').empty();
		            for (var i = 0; i < data_obj.length; i++) {
		            	$('#cateid').append('<option value=' + data_obj[i].id + '>' + data_obj[i].name + '</option>');
		            }
		        }
		    });
});
</script>
<?php 
include('includes/footer.php');
ob_flush();
?>
