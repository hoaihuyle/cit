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
		//check post
		if($_SERVER['REQUEST_METHOD']=='POST')
		{
			$errors=array();
			if(empty($_POST['title'])) {
				$errors[]='title'; 
			} else {
				$title=$_POST['title'];
			}

			if(empty($_POST['description'])) {
				$errors[]='description';
			} else {
				$description=$_POST['description'];
			}

			if(empty($_POST['type_id'])) {
				$errors[]='type_id';
			} else {
				if($_POST['type_id']==0)
				$errors[]='type_id';
				$type_id=$_POST['type_id'];
			}

			if(empty($_POST['subcate_id'])) {
				$errors[]='subcate_id';
			} else {
				if($_POST['subcate_id']==0)
				$errors[]='subcate_id';

				$subcate_id=$_POST['subcate_id'];
			}

			if(empty($_POST['job_id'])) {
				$errors[]='job_id';
			} else {
				if($_POST['job_id']==0)
				$errors[]='job_id';
				$job_id=$_POST['job_id'];
			}

			if(empty($_POST['province_id'])) {
				$errors[]='province_id';
			} else {
				if($_POST['province_id']==0)
				$errors[]='province_id';
				$province_id=$_POST['province_id'];
			}

			// if(empty($_POST['start_pr'])) {
			// 	$errors[]='start_pr';
			// } else {
			// 	$start_pr=$_POST['start_pr'];
			// }

			// if(empty($_POST['end_pr'])) {
			// 	$end_pr=0;
			// } else {
			// 	$end_pr=$_POST['start_pr'];
			// }
				$start_pr=0;
				$end_pr=0;
			if(empty($_POST['priceSalary'])){
				if(empty($_POST['price'])) {
				// $errors[]='price';
				$price=0;
				} else {
					$price=$_POST['price'];

				    if($price%2!=0 && $price%5!=0 && $price%1000!=0) $errors[]='price';
				    else $price = (string)number_format($price);
				}
				if(empty($_POST['salary_id'])) {
					$errors[]='salary_id';
				} else {
					if($_POST['salary_id']==0)
					$errors[]='salary_id';
					$salary_id=$_POST['salary_id'];
				}
			}else{
				$salary_id=null;
				$price=0;
			}
			if(empty($_POST['contacts'])) {
				$errors[]='contacts';
			} else {
				$contacts=$_POST['contacts'];
			}

			if(empty($_POST['active'])){
				$active=null;
			}
			else{
				if (empty($_POST['etime'])) {
					# code...
					$errors[]='etime';
				}
				else{
					$end_time= new DateTime($_POST['etime']);
					$now = new DateTime("now");
					if($end_time>=$now)
						{
							
							$etime=	$end_time->format('Y-m-d H:i:s');
						}
						
						else 
							$errors[]='etime';
				}

				$active=$_POST['active'];
			}

			// If $errors not empty -> Have Error
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
						$img = uploadImagesThumb($_FILES['img'], '../upload/', '../upload/thumb/');
					}else {
						$message = $messageError;
					}
				} else { 
					$img = ''; 
				}
				/*Thêm*/
				$stmt=$dbc->prepare($getSQL["iNews"]);
				$stmt->bind_param("iiiiisiissss",$type_id, $job_id, $province_id, $subcate_id, $salary_id, $price,$start_pr,$end_pr,$title,$description,$img,$contacts);
				$results=$stmt->execute();
				$news_id = $dbc->insert_id;// id news vừa tạo
				// foreach ($cate_id as $key) {
				// 	# code...
				// 	$stmt=$dbc->prepare($getSQL["iNewsCate"]);
				// 	$stmt->bind_param("ii",$key,$news_id);
				// 	$results=$stmt->execute();
				// }
				
				$stmt=$dbc->prepare($getSQL["iActive"]);
				if(isset($active))
				{
					
					$stmt->bind_param("is",$news_id,$etime);
					
				}
				else{

					$now = new DateTime("now");
					$now=$now->format('Y-m-d H:i:s');
					$stmt->bind_param("is",$news_id,$now);
				}
				$results=$stmt->execute();

				if(mysqli_affected_rows($dbc)==1)
				{ 
					header('Location: list_news.php');

				}
				else
				{	
					echo "<p class='required'>Thêm Mới Không Thành Công</p>";
				}
				
			}
			else
			{

				$message="<p class='required'>Bạn Hãy Nhập Đầy Đủ Thông Tin</p>";
			}
		}
		//end check
		?>

		<form name="frmadd_slider" method="POST" enctype="multipart/form-data">
			<?php
			if(isset($message))
			{
				echo $message;
			}
			?>
			<h3>THÊM MỚI BÀI VIẾT</h3>

			<div class="form-group">
				<label class="control-label" style="display: block;">Chọn Loại bài</label>
				<?php  

                    $results = mysqli_query($dbc, $getSQL["gTypeMenu"]);
                    if ($results->num_rows > 0) {
                    	echo ("<select name='type_id' class='form-control'>");
                        // output data of each row
                        echo '<option value="0" selected> SELECT </option>';
                        while($row = $results->fetch_assoc()) {
                            echo '<option value="'.$row['tid'].'">'.($row['name']).'</option>';

                        }  
                        echo '</select>';              
                    }
                ?>
                <?php
				if(isset($errors) && in_array('type_id', $errors))
				{
					echo "<p class='required'>Loại bài không Được Để Trống!</p>";
				}
				?>
			</div>
			<div class="form-group">
				<label class="control-label" style="display: block;"> Chọn công ty</label>
				<?php  
					 // var_dump($sql);
                    $results = mysqli_query($dbc, $getSQL["gSub"]);
                    if ($results->num_rows > 0) {
                    	echo '<select id="subcateid" name="subcate_id" class="form-control">';
                        // output data of each row
                        echo '<option selected value="0"> SELECT </option>';
                        while($row = $results->fetch_assoc()) {
                        	if($row['published']<>1){
                            	echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
                        	}

                        }  
                        echo '</select>';              
                    }
                ?>
                <?php
				if(isset($errors) && in_array('subcate_id', $errors))
				{
					echo "<p class='required'>Công ty không Được Để Trống!</p>";
				}
				?>
			</div>
			<div class="form-group purple-border">
			  <label for="textContacts">Số điện thoai/ Thông tin liên hệ</label>
			  <textarea class="form-control" name="contacts" dirname="contacts.dir" id="textContacts" rows="3" placeholder="Nhập thông tin Hồ sơ phỏng vấn tại đây"><?php if(isset($_POST['contacts'])){echo $_POST['contacts'];}?></textarea>
				<?php
				if(isset($errors) && in_array('contacts', $errors))
				{
					echo "<p class='required'>Thông tin liên hệ không Được Để Trống!</p>";
				}
				?>
			</div>
			<div class="form-group">
				<label class="control-label" style="display: block;"> Chọn công việc</label>
				<?php  
                    $results_job = mysqli_query($dbc, $getSQL["gJobs"]);
                    if ($results_job->num_rows > 0) {
                    	echo '<select id="jobid" name="job_id" class="form-control">';
                        // output data of each row
                        echo '<option selected value="0"> SELECT </option>';
                        while($row_job = $results_job->fetch_assoc()) {

                            echo '<option value="'.$row_job['id'].'">'.$row_job['name'].'</option>';

                        }  
                        echo '</select>';              
                    }
                ?>
                <?php
				if(isset($errors) && in_array('job_id', $errors))
				{
					echo "<p class='required'>Công việc Không Được Để Trống!</p>";
				}
				?>
			</div>

			<div class="form-group">
				<label class="control-label" style="display: block;"> Chọn khu vực</label>
				
				<?php  
					
                    $results_area = mysqli_query($dbc, $getSQL["gProvince"]);
                    if ($results_area->num_rows > 0) {
                    	echo '<select id="provinceid" name="province_id" class="form-control">';
                        // output data of each row
                        echo '<option selected value="0"> SELECT </option>';
                        while($row_area = $results_area->fetch_assoc()) {
                        	if($row_area['published']<>1){
                            	echo '<option value="'.$row_area['id'].'">'.$row_area['name'].'</option>';
                        	}

                        }  
                        echo '</select>';              
                    }
                ?>
                <?php
				if(isset($errors) && in_array('province_id', $errors))
				{
					
					echo "<p class='required'>Khu vực không Được Để Trống!</p>";
				}
				?>
			</div>

			<div class="form-group">
				<label class="control-label">Tiêu Đề </label>
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
					echo "<p class='required'>Tiêu Đề Không Được Để Trống!</p>";
				}
				?>
			</div>
			<div class="form-group">
				<label class="control-label">Tình trạng</label>
				<br>
				<input type="checkbox" name="active" value="active" checked > Hiển thị
				<input type="date" name="etime" value="">
				<?php
				if(isset($errors) && in_array('etime', $errors))
				{
					echo "<p class='required'>Thông tin thời gian sai hoặc để trống!</p>";
				}
				?>
			</div>
			<!-- <div class="form-group">
				<label>Lương</label>
				
				<input type="number" name="start_pr" min="20000" step="1000" value="20000" />
				-
				<input type="number" name="end_pr" min="30000" step="1000"  />
				<input type="text" name="price" class="form-control" placeholder="Tiêu Đề"
				value="<?php 
				if(isset($_POST['price']))
				{
					echo $_POST['price'];
				}
				?>"  /> 
			</div> -->
			 <!-- Lương  -->
			<div class="form-group">
				<label style="padding-left: 0;" class="col-sm-12 control-label">Lương trả theo giờ, dự kiến<strong class="text-danger">*</strong><p id="priMessage" style="display: none; color: red">Số tiền bạn nhập <b id="reward"></b> là không hợp lệ (sau hàng nghìn không được là số lẻ)</p></label>
				<!-- Tiền Lương -->
				<div style="padding-left: 0;" class="col-sm-6">           
				  <input class="form-control" type="number" id="price" name="price" step="1000" min="10000" placeholder="Nhập số tiền mà bạn muốn trả cho người ứng tuyển" value="<?php echo isset($_POST['price'])?$_POST['price']:''?>">
				</div>
				<!-- Loại lương -->
				<div class="col-sm-6">
				<?php
                    $results = mysqli_query($dbc, $getSQL["gSalary"]);
                    if ($results->num_rows > 0) {
                    	echo ("<select name='salary_id' class='typesalary form-control'>");
                        // output data of each row
                        echo '<option value="0" selected> Loại lương </option>';
                        while($row = $results->fetch_assoc()) {
                            echo '<option value="'.$row['id'].'">'.($row['name']).'</option>';

                        }  
                        echo '</select>';              
                    }
					if(isset($errors) && in_array('salary_id', $errors)){
						echo "<p class='required'>Loại lương không Được Để Trống!</p>";
					}
				?>
				</div>
				<input type="checkbox" name="priceSalary" value="y"> Lương thỏa thuận (Chọn lương thỏa thuận khi không nhập phần ở trên)
			</div>
			<!-- End lương -->
			<div class="form-group">
				<label class="control-label ">Thông Tin Chi Tiết </label>
				<textarea id="noidung" name="description" class="form-control" value="<?php 
				if(isset($_POST['description']))
				{
					echo $_POST['description'];
				}
				?>"></textarea>
				<?php
				if(isset($errors) && in_array('description', $errors))
				{
					echo "<p class='required'>Thông Tin Chi Tiết Không Được Để Trống!</p>";
				}
				?>
				<h5 class="text-danger">(Lưu ý: Set Chiều Cao: 50% & Chiều Dài: 50% Của Ảnh)</h5>
			</div>
			<div class="form-group">
				<label class="control-label">Chọn Ảnh Đại Diện Của Bài Viết</label>
				<input type="file" name="img">
			</div>
			<!-- <input type="hidden" name="typeid" id="type-id" value=""> -->
			<input type="submit" name="submit" class="btn btn-primary" value="THÊM MỚI">
		</form>
	</div>
</div>
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="ckfinder/ckfinder.js"></script>
<script type="text/javascript">
	CKEDITOR.replace('noidung');
</script>
<!-- <script src="js/jquery.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			type: 'POST',
			url: 'inc/getProject.php',
			data: {
				'typeid': 0
			},
			success: function (data) {
				var data_obj = JSON.parse(data);
			            //$('#menuid').empty();
			            for (var i = 0; i < data_obj.length; i++) {
			            	$('#typeid').append('<option value=' + data_obj[i].id + '>' + data_obj[i].name + '</option>');
			            }
			        }
			    });
	});
</script> -->
<!-- <script src="js/jquery.min.js"></script>
	<script type="text/javascript">
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

<script type="text/javascript">
$( "#price" ).change(function(){
  // $(document).on('input', '#price', function(){
    var coins = $("#price").val();
    $("#reward").text(coins);//Add coins to html 
    if(coins!=0){
      if(coins%2==0 && coins%5==0 && coins%1000==0){
         $('#priMessage').css('display','none');
      }
      else{

        $('#priMessage').css('display','block');
      }
    }
    else{
      $('#priMessage').css('display','none');
    }
  // });
})
</script>