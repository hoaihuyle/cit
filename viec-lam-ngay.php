<?php 
include('admin/inc/database.php');
include('includes/layout_header.php');
$tinhthanh = $db->fetchAll('province');
$congviec = $db->fetchAll('jobs');
$loailuong = $db->fetchAll('typesalary');
$congty = $db->fetchAll('companies');
$cate_cty = $db->fetchAll('category');
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

  // // của danh mục kinh doanh
  // if(empty($_POST['cate_id'])) {
  //   $errors[]='cate_id';
  // } else {
  //   if(is_numeric($_POST['cate_id']))
  //   {
  //     if($_POST['cate_id'] == 0)
  //     {
  //       $errors[] = 'cate_id';  
  //     }
  //     else 
  //       $cat_cty = $_POST['cate_id'];
  //   }
  //   else
  //   {
  //     $name = $_POST['cate_id'];
  //     $des_cpny_id=" "; 
  //     $stmt_insert = $dbc->prepare($getSQL["C_Cate"]);//Thêm vào CSDL
  //     $stmt_insert->bind_param("ss",$name,$des_job_id);
  //     $stmt_insert->execute();
  //     $cat_cty = $dbc->insert_id;//Lấy id của job vừa tạo
  //   }
    
  // }


  // // của công ty
  // if(empty($_POST['id'])) {
  //   $errors[]='id';
  // } else {
  //   if(is_numeric($_POST['id']))
  //   {
  //     if($_POST['id'] == 0)
  //     {
  //       $errors[] = 'id';  
  //     }
  //     else 
  //       $c_ty = $_POST['id'];
  //   }
  //   else
  //   {
  //     $name = $_POST['id'];
  //     $des_cpny_id=" "; 
  //     $stmt_insert = $dbc->prepare($getSQL["iCompanies"]);//Thêm vào CSDL
  //     $stmt_insert->bind_param("ss",$name,$des_job_id);
  //     $stmt_insert->execute();
  //     $c_ty = $dbc->insert_id;//Lấy id của job vừa tạo
  //     _debug($job_id);

      
  //   }
    
  // }

  if(empty($_POST['etime'])){
    $errors[]='etime';
  }
  else{
    $date = str_replace('/', '-', $_POST['etime'] ); //Change DD/MM/YYYY => YYYY-MM-DD
    $newDate = date("Y-m-d", strtotime($date));  //converting date first to seconds
    $date = DateTime::createFromFormat('Y-m-d', $newDate); //Convert string to Object datatime
    $end_time= new DateTime($date->format('Y-m-d H:i:s'));
    $now = new DateTime("now");
    if($end_time>$now){
      $etime= $end_time->format('Y-m-d H:i:s');
    }
    else 
      $errors[]='etime';
  }

  if(empty($_POST['contacts'])) {
    $errors[]='contacts';
  } else {
    $contacts=$_POST['contacts'];
  }

  if(empty($_POST['province_id'])) {
    $errors[]='province_id';
  } else {
    if($_POST['province_id']==0)
      $errors[]='province_id';

    $province_id=$_POST['province_id'];
  }
  if(empty($_POST['salary_id'])) {
    $errors[]='salary_id';
  } else {
    if($_POST['salary_id']==0)
      $errors[]='salary_id';
    $salary_id=$_POST['salary_id'];
  }
  if(empty($_POST['price'])) {
    $errors[]='price';
  } else {
    $price=$_POST['price'];
    if($price%2!=0 && $price%5!=0 && $price%1000!=0) $errors[]='price';
    else $price = (string)number_format($price);
    // echo $price;
    // die();
  }

  // If $errors empty -> Not Have Error
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
    //Giả xử lý mức giá, ID công ty giao động (sau)
    $start_pr=0;
    $end_pr=0;
    $subcate_id=null;

    $stmt=$dbc->prepare($getSQL["iNews"]);

    $stmt->bind_param("iiiiisiissss", $type_id, $job_id, $province_id, $subcate_id, $salary_id,$price, $start_pr, $end_pr, $title, $description, $img, $contacts);
    // $news_id = mysqli_insert_id($dbc);
    $results=$stmt->execute();
    $news_id = $dbc->insert_id;// id news vừa tạo
    
    // Insert active table
    $stmt=$dbc->prepare($getSQL["iActive"]);
    // $etime= $etime->format('Y-m-d H:i:s');
    $stmt->bind_param("is",$news_id,$etime);
    $results=$stmt->execute();
    //End insert active
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
          <!-- Tiêu đề -->
          <div class="form-group">
            <label>Tên công việc của bạn <strong class="text-danger">*</strong></label>
            <input type="text" class="form-control" name="title" placeholder="- Tên công việc -" value="<?php echo isset($title)?$title:''?>">
            <?php
            if(isset($errors) && in_array('title', $errors)){
              echo "<p class='required'>Thông tin về tiêu đề công việc bạn không được để trống</p>";
            }
            ?>
          </div>
          <!-- End tiêu đề -->

          <!-- Danh mục và công việc -->  
          <!-- <div class="form-group">
              <label>Chọn loại công việc bạn cần đăng ? <strong class="text-danger">*</strong></label>
              <?php 
              $sql ="SELECT tp.id as tid, tp.menu_id, m.id as mid, m.name FROM type_post as tp
              LEFT JOIN menu as m ON tp.menu_id=m.id
              ORDER BY tp.id ASC";
              $results = mysqli_query($dbc, $sql);
              if ($results->num_rows > 0) {
                echo ("<select required name='type_id' class='custom-select'>");
                    // output data of each row
                while($row = $results->fetch_assoc()) {
                  ?>
                  <option  value="<?php echo $row['tid']; ?>" <?php echo ($row['tid']==4)?'selected':'' ?> > <?php echo $row['name']; ?></option>';
                  <?php
                  }// end while  
                  echo '</select>';              
                } // end if
                ?>
                
                <select id="job_ids" name="job_id" class="custom-select" onchange="if(this.options[this.selectedIndex].value=='customOption1'){toggleField(this,this.nextSibling); this.selectedIndex='0';}">
                    <option value="">- Chọn loại công việc -</option>
                  <?php foreach($congviec as $cv){ ?>
                    <option value="<?php echo $cv['id']?>" <?php echo isset($job_id)&&$job_id==$cv['id']?'selected':' '?> ><?php echo $cv['name'] ?></option>
                  <?php } ?>
                  <option value="customOption1">Khác</option>
                </select><input type="text" class="form-control" id="job_ids" name="job_id" style="display:none;" disabled="disabled" onblur="if(this.value==''){toggleField(this,this.previousSibling);}">
                <?php if(isset($errors) && in_array('job_id', $errors)){
                  echo "<p class='required'>Hãy chọn công việc bạn muốn thuê</p>";
                } ?>
          </div> -->
          <!-- End công việc và danh mục -->

          <!-- kinh doanh -->
          

          <!-- Công ty -->
          <!-- <div class="form-group">
              <label id="aaaa">Lựa chọn công ty của bạn <strong class="text-danger">*</strong></label>
                <select id="job_ids" name="id" class="custom-select" onchange="if(this.options[this.selectedIndex].value=='customOption1'){toggleField(this,this.nextSibling); this.selectedIndex='0';}">
                    <option value="">- Chọn công ty -</option>
                  <?php foreach($congty as $cv){ ?>
                    <option value="<?php echo $cv['id']?>" <?php echo isset($c_ty)&&$c_ty==$cv['id']?'selected':' '?> ><?php echo $cv['name'] ?></option>
                  <?php } ?>
                  <option value="customOption1">Khác</option>
                </select><input type="text" class="form-control" id="cty" name="id" style="display:none;" disabled="disabled" onblur="if(this.value==''){toggleField(this,this.previousSibling);}">
                <?php if(isset($errors) && in_array('id', $errors)){
                  echo "<p class='required'>Hãy chọn công ty của bạn</p>";
                } ?>
          </div> -->

          <!-- loại hình công ty -->
          <!-- <div class="form-group" id="cate_cty" style="display:none;">
                        <label>Loại hình kinh doanh <strong class="text-danger">*</strong></label>
                          <select id="cate_cty" name="cate_id" class="custom-select" onchange="if(this.options[this.selectedIndex].value=='customOption1'){toggleField(this,this.nextSibling); this.selectedIndex='0';}">
                              <option value="">- Chọn loại hình -</option>
                            <?php foreach($cate_cty as $cv){ ?>
                              <option value="<?php echo $cv['id']?>" <?php echo isset($cat_cty) && $cat_cty==$cv['id']?'selected':' '?> ><?php echo $cv['name'] ?></option>
                            <?php } ?>
                            <option value="customOption1">Khác</option>
                          </select><input type="text" class="form-control" id="cate_id" name="cate_id" style="display:none;" disabled="disabled" onblur="if(this.value==''){toggleField(this,this.previousSibling);}">
                          <?php if(isset($errors) && in_array('cate_id', $errors)){
                            echo "<p class='required'>Chọn loại hình bạn muốn sử dụng cho công ty</p>";
                          } ?>
          </div> -->

          <!-- end công ty -->
          <!-- Thời hạn -->
          <div class="form-group">
            <label>Hạn cuối ứng tuyển <strong class="text-danger">*</strong></label>
            <?php 
            $now = new DateTime('tomorrow');
            //  Input chỉ ăn Y-m-d
            $etime= $now->format('d-m-Y'); 
            ?>
            <div class="input-group date" id="endFastJobs" data-target-input="nearest">
              <input type="text" class="form-control datetimepicker-input" data-toggle="datetimepicker" data-target="#endFastJobs" name="etime" placeholder="<?php echo($etime); ?>" value="<?php echo(isset($etime)?$etime:''); ?>"/>
              <div class="input-group-append" data-target="#endFastJobs" data-toggle="datetimepicker">
                <div class="input-group-text"><i class="fa fa-calendar"></i></div>
              </div>
            </div>
            <?php
            if(isset($errors) && in_array('etime', $errors)){
              echo "<p class='required'>Thông tin thời gian sai hoặc để trống!</p>";
            }
            ?>
          </div>
          <!-- End thời hạn -->

          <!-- Thông tin liên hệ -->
          <div class="form-group">
            <label>Thông tin cho người ứng tuyển liên hệ với bạn <strong class="text-danger">*</strong></label>
            <input type="text" name="contacts" class="form-control" placeholder="Số điện thoai/ Thông tin liên hệ"
            value="<?php if(isset($_POST['contacts'])){echo $_POST['contacts'];} ?>">
            <?php
            if(isset($errors) && in_array('contacts', $errors)){
              echo "<p class='required'>Thông tin liên hệ không Được Để Trống!</p>";
            }
            ?>
          </div>
          <!-- Thông tin liên hệ -->

          <!-- Địa chỉ tỉnh, thành phố, huyện -->
          <div class="form-group">
            <label>Chọn khu vực bạn cần tuyển <strong class="text-danger">*</strong></label>          
            <select id="provinceid" name="province_id" class="form-control">
              <?php foreach($tinhthanh as $TT){ ?>
                <option value="<?php echo $TT['id']?>" <?php echo ($TT['id']==49)?'selected':''; ?> ><?php echo $TT['name'] ?></option>
              <?php } if(isset($errors) && in_array('etime', $errors)){
              echo "<p class='required'>Thông tin khu vực bạn không được để trống</p>";
              }?>
            </select>
          </div>
          <!-- End địa chỉ-->

          <!-- Lương  -->
          <div class="form-group">
            <div class="row">
              <label class="col-sm-12 control-label">Lương trả theo giờ, dự kiến<strong class="text-danger">*</strong><p id="priMessage" style="display: none; color: red">Số tiền bạn nhập <b id="reward"></b> là không hợp lệ (sau hàng nghìn không được là số lẻ)</p></label>
              <div class="col-sm-9">           
                <input class="form-control" type="number" id="price" name="price" step="1000" min="10000" placeholder="Nhập số tiền mà bạn muốn trả cho người ứng tuyển" value="<?php echo isset($price)?$price:''?>">
                 <?php
                if(isset($errors) && in_array('price', $errors)){
                  echo "<p class='required'>Thông tin về lương của bạn sai quy định, xin bạn nhập lại</p>";
                }
                ?>
              </div>
              <div class="col-sm-3">
                 <select id="salaryid" name="salary_id" class="form-control">
                    <?php foreach($loailuong as $LL){ ?>
                      <option value="<?php echo $LL['id']?>"><?php echo $LL['name'] ?></option>
                    <?php } if(isset($errors) && in_array('salary_id', $errors)){
                    echo "<p class='required'>Xin bạn chọn loại lương </p>";
                    }?>
                  </select>
              </div>           
            </div>
          </div>
          <!-- End lương -->

          <!-- Chi tiết bài đăng -->
          <div class="form-group">
            <label>Yêu cầu Chi Tiết <strong class="text-danger">*</strong></label>
            <textarea id="noidung" rows="5" name="description" class="form-control">

            </textarea>
            <?php
            if(isset($errors) && in_array('description', $errors))
            {
              echo "<p class='required'>Thông Tin Chi Tiết Không Được Để Trống!</p>";
            }
            ?>
            <h5 class="text-danger">(Lưu ý: Set Chiều Cao: 50% & Chiều Dài: 50% Của Ảnh)</h5>
          </div>
          <!-- End chi tiết bài đăng -->

          <!-- Ảnh địa diện -->
          <div class="form-group">
            <label>Chọn Ảnh Đại Diện Của Bài Viết</label>
            <input type="file" name="img">
          </div>
          <!-- End ảnh đại diện -->

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