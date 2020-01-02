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
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))) {
				$id=$_GET['id'];
			} else {
				header('Location: list_news.php');
				exit();
			}
			//------ check exist bai viet in db

			// $stmt=$dbc->prepare($getSQL["gNewsfield"]);
			// $stmt->bind_param("i",$id);
			// $stmt->execute();
			// $results_tk = $stmt->get_result();
			$sql="SELECT n.id, id_type, id_job, id_province, id_subcate,  id_typesalary, title, description, files, price, start_pr, end_pr, `timestamp`, contacts FROM news as n WHERE n.id=".$id ;
			$results_tk=mysqli_query($dbc,$sql);
			// kt_query($result_id,$results_tk);
			//Kiem tra xem id co ton tai khong
			if(mysqli_num_rows($results_tk)==1) {

				list($id, $id_type, $id_job, $id_province, $id_subcate, $salary_id, $title, $description, $files, $price, $start_pr, $end_pr, $timestamp, $contacts)=mysqli_fetch_array($results_tk,MYSQLI_NUM);
			} else {
				$message="<p class='required'>Bài Viết Không Tồn Tại</p>";
			}

			// Lấy end_date, id của tabale active mới nhất từ hệ thống
			// $stmt=$dbc->prepare($getSQL["sNewsActive"]);
			// $stmt->bind_param("i",$id);
			// $stmt->execute();
			// $result_active = $stmt->get_result();
			$sql="SELECT * FROM active WHERE id_news = ".$id;
			$result_active=mysqli_query($dbc,$sql);
			if(mysqli_num_rows($result_active)>0)
			{
				while ($result_ac=mysqli_fetch_array($result_active,MYSQLI_ASSOC)) {
					# code...
					$end_date=$result_ac['end_date'];
					$id_active=$result_ac['id'];
				}
			}
			// end
						
			// var_dump($id_active);
			// die();
			if($_SERVER['REQUEST_METHOD']=='POST') 
			{
				$errors=array();
				if(empty($_POST['title'])) {
					$errors[]='title'; 
				} else {
					$title=$_POST['title'];
					str_replace("'","/'",$title);
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
				// 	$end_pr=$_POST['end_pr'];
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
						$salary_id=$_POST['salary_id'];
						if($salary_id==0) $errors[]='salary_id';
					}
				}else{
					$price = 0;
					$salary_id = null;
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
						// So sánh ngày giờ post từ người dùng với ngày hiện tại
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
				// Image
				if(empty($errors))
				{
					if ($_FILES['img']['size']=='')
					{
						$link_img=$_POST['anh_hi'];
					} else {
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
							$link_img = uploadImagesThumb($_FILES['img'], '../upload/', '../upload/thumb/');
						}
						$sql="SELECT files FROM news WHERE id={$id}";
						$query_a=mysqli_query($dbc,$sql); 
						$anhInfo=mysqli_fetch_assoc($query_a);
						unlink('../upload/'.$anhInfo['files']);
						// unlink('../upload/images/'.$anhInfo['files']);
						unlink('../upload/thumb/'.$anhInfo['files']);

					}
					
					// Active table
					// Kiểm tra có đang hoạt động
					// Nếu không hoạt động nhưng tồn tại biến active -> INSERT
					if(check_active_news($id)==FALSE && isset($active))
					{
						$sql_insert="INSERT INTO active (id_news,end_date) VALUES ('{$id}','{$etime}')";
						$result_up=mysqli_query($dbc,$sql_insert);

					}
					// Nếu bài đăng vẫn trong thời gian hoạt động, người dùng gia hạn ngày -> Update
					if (check_active_news($id)==TRUE) {
						//Không muốn bài đăng hiển thị
						if (!isset($active)) {
							# code...
							$sql_update="UPDATE active SET state=0, modified='".date("Y-m-d H:i:s")."' WHERE id=$id_active";
							$result_up=mysqli_query($dbc,$sql_update);
						}
						else{
							// end_date: lấy từ hệ thống
							//  etiem: post
							if ($end_date<$etime) {

								$sql_update="UPDATE active SET end_date='{$etime}', modified='".date("Y-m-d H:i:s")."' WHERE id=$id_active";
								$result_up=mysqli_query($dbc,$sql_update);
								// $sql_insert="INSERT INTO active (id_news,end_date) VALUES ('{$id}','{$etime}')";
								// $result_up=mysqli_query($dbc,$sql_insert);
							}
							else{
								echo "<p class='required'>Bạn không thay đổi ngày đăng</p>";
							}
						}
					}
					// // Delete news_cate table
					// $query_de="DELETE FROM news_cate WHERE id_news=$id";
					// $result_de=mysqli_query($dbc,$query_de);
					// kt_query($result_de,$query_de);

					//Insert news_cate table
					// foreach ($id_cate as $key) {
					// 	# code...
					// 	$query_id="INSERT INTO news_cate VALUES ('$id','$key')";
					// 	$result_id=mysqli_query($dbc,$query_id);
					// kt_query($result_id,$query_id);
					// }
					// var_dump(mysqli_affected_rows($dbc));
					$query_up="UPDATE news SET `id_type`='{$type_id}', `id_job`='{$job_id}', `id_province`='{$province_id}', `id_subcate`='{$subcate_id}',  `id_typesalary`='{$salary_id}',`title`='{$title}', `description`='{$description}', `files`='{$link_img}',`price`='{$price}',`start_pr`='{$start_pr}', `end_pr`='{$end_pr}', `contacts` = '{$contacts}' WHERE id={$id}";
					$result_up=mysqli_query($dbc,$query_up);

					kt_query($result_up,$query_up);
					if(mysqli_affected_rows($dbc)==1)
					{
						//echo "<p style='color:green;'>Sửa Thành Công</p>";
						header('Location: list_news.php');
					}
					else
					{

						echo "<p class='required'>Thông Tin Vẫn Chưa Được Chỉnh Sửa</p>";
					}
				}
				else
				{
					// var_dump($errors);
					$message="<p class='required'>Bạn Hãy Nhập Đầy Đủ Thông Tin</p>";
				}
			}
				 
		?>
		<form name="frmedit_baiviet" method="POST" enctype="multipart/form-data">
			<?php if(isset($message)){ echo $message; } ?>
			<h3>SỬA BÀI VIẾT: <?php if(isset($title)){echo $title;} ?></h3>
			<div class="form-group">
				<label style="display: block;">Chọn Loại bài</label>
				<?php  
                    $results = mysqli_query($dbc, $getSQL["gTypeMenu"]);
                    if ($results->num_rows > 0) {
                    	echo '<select id="typeid" name="type_id" class="form-control">';
                        // output data of each row
                         echo '<option value="0"> SELECT </option>';
                        while($row = $results->fetch_assoc()) {
                            echo '<option value="'.$row['tid'].'" '.($id_type==$row['tid'] ? 'selected':'') .'>'.($row['name']).'</option>';

                        }  
                        echo '</select>';              
                    }
                ?>
			</div>
			<div class="form-group">
				<label style="display: block;"> Chọn công ty</label>
				<?php  
                    $results = mysqli_query($dbc, $getSQL["gSub"]);
                     if ($results->num_rows > 0) {
                    	echo '<select id="subcateid" name="subcate_id" class="form-control">';
                        // output data of each row
                         echo '<option value="0"> SELECT </option>';
                        while($row = $results->fetch_assoc()) {
                            echo '<option value="'.$row['id'].'" '.($id_subcate==$row['id'] ? 'selected':'') .'>'.($row['name']).'</option>';

                        }  
                        echo '</select>';              
                    }
                ?>
			</div>
			<div class="form-group purple-border">
			  	<label for="textContacts">Số điện thoai/ Thông tin liên hệ</label>
				<textarea class="form-control" name="contacts" dirname="contacts.dir" id="textContacts" rows="3"><?php if(isset($contacts)){echo $contacts;}?></textarea>
				<?php
				if(isset($errors) && in_array('contacts', $errors))
				{
					echo "<p class='required'>Thông tin liên hệ không Được Để Trống!</p>";
				}
				?>
			</div>
			<div class="form-group">
				<label style="display: block;"> Chọn công việc</label>
				<?php  
					 // var_dump($sql);
                    $results = mysqli_query($dbc, $getSQL["gJobs"]);
                     if ($results->num_rows > 0) {
                    	echo '<select id="jobid" name="job_id" class="form-control">';
                        // output data of each row
                        echo '<option value="0"> SELECT </option>';
                        while($row = $results->fetch_assoc()) {
                            echo '<option value="'.$row['id'].'" '.($id_job==$row['id'] ? 'selected':'') .'>'.($row['name']).'</option>';

                        }  
                        echo '</select>';              
                    }
                ?>
			</div>	
			<div class="form-group">
				<label style="display: block;"> Chọn khu vực</label>
				<?php  

                    $results = mysqli_query($dbc, $getSQL["gProvince"]);
                     if ($results->num_rows > 0) {
                    	echo '<select id="provinceid" name="province_id" class="form-control">';
                        // output data of each row
                         echo '<option value="0"> SELECT </option>';
                        while($row = $results->fetch_assoc()) {
                            echo '<option value="'.$row['id'].'" '.($id_province==$row['id'] ? 'selected':'') .'>'.($row['name']).'</option>';

                        }  
                        echo '</select>';              
                    }
                ?>
			</div>
			<div class="form-group">
				<label>Tiêu Đề Mới </label>
				<input type="text" name="title" class="form-control"
					value="<?php if(isset($title)){echo $title;}?>">
				<?php
					if(isset($errors) && in_array('title', $errors))
					{
						echo "<p class='required'>Tiêu Đề Không Được Để Trống</p>";
					}
				?>
			</div>
			<div class="form-group">
				<label>Tình trạng</label>
				<br>
				<input type="checkbox" name="active" value="active" <?php echo(check_active_news($id)?'checked':''); ?> > Hiển thị
				<?php 
					// $date=date_format(date_create($etime),'d/m/Y');
					// echo($date);
					// $timeDb = isset($etime)?date_format(date_create($etime),'d/m/Y'):'';
					// $date=date_format(date_create($etime),'d/m/Y');
				 ?>
				 <p>Format datetime Y-M-D 00:00:00</p>
				<input type="text" class="form-control" name="etime" value="<?php echo isset($end_date)?$end_date:''; ?>">
				
				<?php
				if(isset($errors) && in_array('etime', $errors))
				{
					echo "<p class='required'>Thông tin thời gian không hợp lệ!</p>";
				}
				?>
			</div>
			<!--  <div class="form-group">
				<label>Lương</label>
				<input type="text" class="form-control" name="price" value="<?php echo ($price!=0)?$price:''; ?>">
				<input type="number" name="start_pr" min="20000" step="1000" value="<?php echo $start_pr; ?>" />
				-
				<?php $endprice =(isset($end_pr)?$end_pr:0); ?>
				<input type="number" name="end_pr" min="<?php echo($endprice) ?>" step="1000" value="<?php echo $endprice ?>" />
			</div>  -->
			<!-- Lương  -->
			<div class="form-group">
				<label style="padding-left: 0;" class="col-sm-12 control-label">Lương trả theo giờ, dự kiến<strong class="text-danger">*</strong><p id="priMessage" style="display: none; color: red">Số tiền bạn nhập <b id="reward"></b> là không hợp lệ (sau hàng nghìn không được là số lẻ)</p></label>
				<div style="padding-left: 0;" class="col-sm-6">           
				  <input class="form-control" type="number" id="price" name="price" step="1000" min="10000" placeholder="Nhập số tiền mà bạn muốn trả cho người ứng tuyển" value="<?php echo isset($price)?$price:''?>">
				</div>
				<div class="col-sm-6">
				<?php  
                    $results = mysqli_query($dbc, $getSQL["gSalary"]);
                    if ($results->num_rows > 0) {
                    	echo '<select id="salaryid" name="salary_id" class="form-control">';
                        // output data of each row
                         echo '<option value="0"> SELECT </option>';
                        while($row = $results->fetch_assoc()) {
                            echo '<option value="'.$row['id'].'" '.($salary_id==$row['id'] ? 'selected':'') .'>'.($row['name']).'</option>';

                        }  
                        echo '</select>';              
                    }
                ?>
				</div>
				<input type="checkbox" name="priceSalary" value="y"> Lương thỏa thuận (Chọn lương thỏa thuận khi không nhập phần ở trên)
			</div>
          	<!-- End lương -->
			<div class="form-group">
				<label>Thông Tin Chi Tiết </label>
				<textarea class="form-control" id="noidung" name="description">
					<?php echo $description ?>
				</textarea>
				<?php 
					if (isset($errors) && in_array('description', $errors)) {
						echo "<p class='required'>Thông Tin Chi Tiết Không Được Để Trống</p>";
					}
				?>
			</div>

			<div class="form-group">
				<label>Ảnh Đại Diện Mới Của Sản Phẩm</label>
				<p><img width="250" src="../upload/<?php echo $files;?>"></p>
				<input type="hidden" name="anh_hi" value="<?php echo $files;?>">
				<input type="file" name="img">
			</div>

			<input type="submit" name="submit" class="btn btn-primary" value="SỬA">
			<a href="list_news.php"><button type="button" class="btn btn-danger"><i class="fa fa-times-circle" aria-hidden="true"></i> TRỞ VỀ</button></a>
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
 