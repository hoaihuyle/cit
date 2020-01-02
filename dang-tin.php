<?php 
  include('admin/inc/database.php');
  include('includes/layout_header.php');
  $Cty = $db->fetchAll('companies');
  $tinhthanh = $db->fetchAll('province');
  $congviec = $db->fetchAll('jobs');

  //Check if account's post -> can access

  // if not -> payment


  // $get =null;
  // if(isset($_GET["get"])){
  //   $get=$_GET['get'];
  //   $_SESSION['get'] = $get;
  // }
  // if($get=='tuyen-cap-toc')
  //   header("Location: dang-phat-trien");
  // // echo($actual_link);
  // if($get==null || !(is_string($get))){
  //   header("Location: index.php");
  // }

?>

<style type="text/css">
.required {
  color: red;
} 
</style>

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
    // $errors[]='subcate_id';
  } else {
   
   
    if(is_numeric($_POST['subcate_id']))
    {
       if($_POST['subcate_id']==0 )
        $errors[]='subcate_id';
      else
        $subcate_id=$_POST['subcate_id'];
    }
    else{
      // Thiếu các thông tin khác của bài đăng 
      $name = $_POST['subcate_id'];
      $des_sub_id=" "; 
      $stmt_insert = $dbc->prepare($getSQL["iSub"]);//Thêm vào CSDL
      $stmt_insert->bind_param("ss",$name,$des_sub_id);
      $stmt_insert->execute();
      $subcate_id = $dbc->insert_id;//Lấy id của công ty vừa tạo
    }
  }
  if(empty($_POST['job_id'])) {
    $errors[]='job_id';
  } else {
    // if($_POST['job_id']==0)
    // $errors[]='job_id';
    // else 
    // $job_id=$_POST['job_id'];
    if(is_numeric($_POST['job_id']))
    {
      if($_POST['job_id'] == 0)
      {
        $errors[] = 'job_id';  
      }
      else 
        $job_id = $_POST['job_id'];
    }
    else
    {
      $name = $_POST['job_id'];
      $des_job_id=" "; 
      $stmt_insert = $dbc->prepare($getSQL["iJobs"]);//Thêm vào CSDL
      $stmt_insert->bind_param("ss",$name,$des_job_id);
      $stmt_insert->execute();
      $job_id = $dbc->insert_id;//Lấy id của công ty vừa tạo
      // _debug($job_id);
    }
    
  }
  if(empty($_POST['province_id'])) {
    $errors[]='province_id';
  } else {
    if($_POST['province_id']==0)
    $errors[]='province_id';
    $province_id=$_POST['province_id'];
  }
  if(empty($_POST['start_pr'])) {
    $errors[]='start_pr';
  } else {
    $start_pr=$_POST['start_pr'];
  }
  if(empty($_POST['end_pr'])) {
    $end_pr=0;
  } else {
    $end_pr=$_POST['start_pr'];
  }
  if(empty($_POST['etime'])){
    $errors[]='etime';
  }
  else{
    $end_time= new DateTime($_POST['etime']);
    $now = new DateTime("now");
    if($end_time>$now)
      {
        
        $etime= $end_time->format('Y-m-d H:i:s');
      }
      
      else 
        $errors[]='etime';
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
        $img = uploadImagesThumb($_FILES['img'], 'upload/', 'upload/thumb/');
      }else {
        $message = $messageError;
      }
    } else {
      $img = ''; 
    }
    /*Thêm*/
   
    $stmt=$dbc->prepare($getSQL["iNews"]);
    $stmt->bind_param("iiiiiisss",$type_id,$job_id,$province_id,$subcate_id,$start_pr,$end_pr,$title,$description,$img);
    // $news_id = mysqli_insert_id($dbc);
    $results=$stmt->execute();
    $news_id = $dbc->insert_id;// id news vừa tạo
    $stmt=$dbc->prepare($getSQL["iActive"]);
    $stmt->bind_param("is",$news_id,$etime);
    $results=$stmt->execute();
    if(mysqli_affected_rows($dbc)==1)
    { 
      header('Location: tim-viec?get='.(display_slug_by_typeid($type_id)));
      // _debug($type_id);
    }
    
  }
  else
  { 
    // var_dump($errors);
    // die();
    $message="<p class='required'>Bạn Hãy Nhập Đầy Đủ Thông Tin</p>";
    
  }
}
//end check
?>
<!-- <===========Main=======> -->
<div class="sub-panel">
  <div class="container">
    <div class="sub-panel-title">
      <div class="sp-left">
        <span>đăng tuyển việc</span>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
             <li class="breadcrumb-item"><a href="/index"><i class="fas fa-home"></i> Trang Chủ</a></li>
            <li class="breadcrumb-item active" aria-current="page">Đăng tuyển việc</li>
          </ol>
        </nav>
      </div>
      <div class="sp-right text-center">
        <img src="/lib/img/job-upload-01.png" class="img-fluid">
      </div>
    </div>
  </div>
</div>

<section id="job-post">
  <div class="container">
    <div class="row">
      <div class="col-md-8 mx-auto job-post-wrap">
        <h4>Vui lòng điền thông tin công việc bạn cần đăng tuyển</h4>

        <form method="POST" enctype="multipart/form-data">
          <?php
            if(isset($message))
            {
              echo $message;
            }
          ?>
          <div class="form-group">
            <label>Tên công việc của bạn</label>
            <input type="text" class="form-control" required="" name="title" placeholder="- Tên công việc -">
          </div>  
          <div class="form-group">
            <label>Loại công việc bạn cần đăng là gì?</label>
              <!-- Danh mục -->
              <?php 
                $sql ="SELECT tp.id as tid, tp.menu_id, m.id as mid, m.name FROM type_post as tp
                LEFT JOIN menu as m ON tp.menu_id=m.id
                ORDER BY tp.id ASC";
                $results = mysqli_query($dbc, $sql);
                if ($results->num_rows > 0) {
                  echo ("<select required name='type_id' class='custom-select'>");
                    // output data of each row
                    echo ' <option value="">- Chọn danh mục lĩnh vực công việc bạn cần đăng -</option>';
                    while($row = $results->fetch_assoc()) {
                        echo '<option value="'.$row['tid'].'">'.($row['name']).'</option>';
                    }  
                  echo '</select>';              
                }
                
                // if(isset($errors) && in_array('subcate_id', $errors))
                // {
                //   echo "<p class='required'>Không Được Để Trống!</p>";
                // }
              ?>

              <!-- Công việc -->

              <?php
                // if(isset($errors) && in_array('subcate_id', $errors))
                // {
                //   echo "<p class='required'>Không Được Để Trống!</p>";
                // }
              ?>

            <!-- <select class="custom-select">
                <option selected>Chọn loại công việc</option>
                 <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
              </select> -->


              <?php  
                // $sql = "SELECT * FROM jobs ";
                //   // var_dump($sql);
                //   $results = mysqli_query($dbc, $sql);
                //   if ($results->num_rows > 0) {
                //     echo '<select required id="jobid" name="job_id" class="custom-select" >';
                //       // output data of each row
                //       echo '<option value="">- Chọn loại công việc- </option>';
                //       while($row = $results->fetch_assoc()) {
                //           echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
                //       }  
                //       echo '</select>';              
                //   }
              ?>

               <select required="" id="job_ids" name="job_id" class="custom-select" onchange="if(this.options[this.selectedIndex].value=='customOption1'){toggleField(this,this.nextSibling); this.selectedIndex='0';}">
                  <option value="">- Chọn loại công việc -</option>
                <?php foreach($congviec as $cv){ ?>
                <option value="<?php echo $cv['id']?>"><?php echo $cv['name'] ?></option>
                <?php } ?>
                <option value="customOption1">Khác</option>
              </select><input type="text" required="" class="form-control" id="job_ids" name="job_id" style="display:none;" disabled="disabled" onblur="if(this.value==''){toggleField(this,this.previousSibling);}">

              <?php
                // if(isset($errors) && in_array('job_id', $errors))
                // {
                //   echo "<p class='required'>Công việc Không Được Để Trống!</p>";
                // }
              ?>
          </div>
          <div class="form-group">
            <label>Tên công ty</label>
              <select required="" id="subcateid" name="subcate_id" class="custom-select" onchange="if(this.options[this.selectedIndex].value=='customOption'){toggleField(this,this.nextSibling); this.selectedIndex='0';}">
                  <option value="">- Chọn tên công ty -</option>
                <?php foreach($Cty as $ct){ ?>
                <option value="<?php echo $ct['id']?>"><?php echo $ct['name'] ?></option>
                <?php } ?>
                <option value="customOption">Khác</option>
              </select><input type="text" required="" class="form-control" id="subcateid" name="subcate_id" style="display:none;" disabled="disabled" onblur="if(this.value==''){toggleField(this,this.previousSibling);}">
                 
          </div>
          <!-- Thời hạn -->
          <div class="form-group">

            <label>Bạn cần nhận báo giá đến khi nào *</label>
            <?php 
              $now = new DateTime('tomorrow');
              //  Input chỉ ăn Y-m-d
              $etime= $now->format('Y-m-d'); 
            ?>
            <input type="date" name="etime" value="<?php echo($etime);  ?>" class="form-control">
            <?php
            if(isset($errors) && in_array('etime', $errors))
            {
              echo "<p class='required'>Thông tin thời gian sai hoặc để trống!</p>";
            }
            ?>
          </div>
          <!-- Địa chỉ tỉnh, thành phố, huyện -->
          <div class="form-group">
            <label>Bạn cần tuyển ở đâu</label>          
            <select id="provinceid" name="province_id" class="form-control">

              <?php foreach($tinhthanh as $TT){ ?>
                  <option value="<?php echo $TT['id']?>" <?php echo ($TT['id']==49)?'selected':''; ?> ><?php echo $TT['name'] ?></option>
              <?php } ?>
            </select>

          </div>

          <div class="form-group">
            <label>Ngân sách dự kiến (VNĐ): </label>           
            <input  required="" class="form-control" type="text" name="start_pr" placeholder="Nhập số tiền mà bạn muốn trả cho tuyển dụng ">
              </div>
          <div class="form-group">
            <label>Yêu cầu Chi Tiết </label>
            <textarea id="noidung" rows="5" name="description" class="form-control" required="">
              
            </textarea>
            <?php
            // if(isset($errors) && in_array('description', $errors))
            // {
            //   echo "<p class='required'>Thông Tin Chi Tiết Không Được Để Trống!</p>";
            // }
            ?>
            <h5 class="text-danger">(Lưu ý: Set Chiều Cao: 50% & Chiều Dài: 50% Của Ảnh)</h5>
          </div>

          <div class="form-group">
            <label>Chọn Ảnh Đại Diện Của Bài Viết</label>
            <input required="" type="file" name="img">
          </div>
          

          <div class="text-right">
            <!--  <input type="submit" name="submit" class="btn btn-primary" value="THÊM MỚI"> -->
            <button type="submit" class="btn btn-orange">ĐĂNG TUYỂN VIỆC</button>
          </div>

        </form>

      </div>
    </div>
  </div>
</section>
<script type="text/javascript" src="admin/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="admin/ckfinder/ckfinder.js"></script>
<script type="text/javascript">
  CKEDITOR.replace('noidung');
</script>
<!-- Công ty -->
<script type="text/javascript">
        function toggleField(hideObj,showObj){
       hideObj.disabled=true;   
       hideObj.style.display='none';
       showObj.disabled=false;  
       showObj.style.display='inline';
       showObj.focus();
        }
</script>
<!-- <===========/////End Main=======> -->
<?php include('includes/layout_footer.php');?>