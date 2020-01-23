<?php
ob_start();

include('includes/layout_header.php');


if(isset($_GET["news_id"])){

  $id=$_GET['news_id'];
}
// var_dump($_GET['news_id']) ;
// die();
if($id==null || !(is_numeric($id))){
  // header("Location: index.php");
}
else 
{
  // $stmt=$dbc->prepare($getSQL["gNewsfield"]);
  // $stmt->bind_param("i",$id);
  // $stmt->execute();
  // $results_tk = $stmt->get_result();
  // kt_query($result_id,$results_tk);
  //Kiem tra xem id co ton tai khong
  $sql="SELECT n.id, id_type, id_job, id_province, id_subcate,  title, description, files, price, start_pr, end_pr, `timestamp`, contacts FROM news as n WHERE n.id=".$id ;
  $results_tk=mysqli_query($dbc,$sql);
  
  if(mysqli_num_rows($results_tk)==1) {

    list($id, $id_type, $id_job, $id_province, $id_subcate,$title, $description, $files, $price, $start_pr, $end_pr, $timestamp, $contacts)=mysqli_fetch_array($results_tk,MYSQLI_NUM);
  }
  $end_date=null;
  if(check_active_news($id))
  {
    $query_active="SELECT * FROM active WHERE $id=id_news";
    $result_active=mysqli_query($dbc,$query_active);

      if(mysqli_num_rows($result_active)>0)
      {
        while ($result_ac=mysqli_fetch_array($result_active,MYSQLI_ASSOC))
        {
          # code...
          $end_date=$result_ac['end_date'];
          $id_active=$result_ac['id'];
          $count=$result_ac['count'];
        }
      } 
    $count=$count+1;
    $update=" UPDATE active SET count = $count WHERE id=$id_active";
    $result_update=mysqli_query($dbc,$update);
  }
}
?>
<!-- <===========Main=======> -->
<div class="sub-panel">
  <div class="container">
    <div class="sub-panel-title">
      <div class="sp-left">
        <span>Chi tiết bài đăng</span>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/index"><i class="fas fa-home"></i> Trang Chủ</a></li>
            <li class="breadcrumb-item active" aria-current="page"><a href="/tim-viec/<?php echo $user_id; ?>"><i class="fas fa-home"></i> Bài Đăng</a></li>
            <li class="breadcrumb-item active" aria-current="page">Chi tiết bài đăng</li>
          </ol>
        </nav>
      </div>
      <div class="sp-right text-center">
        <img src="/lib/img/sub-page-img-01.png" class="img-fluid">
      </div>
    </div>
  </div>
</div>

<!-- Container -->
<section id="detail-a-post" class="padding-space">
  <div class="container">
    <div class="bgc-yellow border shadow m-2">
      <?php include('includes/goback.php'); ?>
    </div>
      
    <div class="row">
      <div class="col-lg-3">
         <?php include'_sidebar.php'; ?>
         <a class="text-center text-uppercase nav-link css-findJobs mb-3" href="/all" ><strong> Tìm việc </strong><i class="fas fa-search-dollar"></i></a>
      </div>

      <div class="col-lg-9 container-post">
      
        <div class="header-post">
          <div class="row">
            <div class="col-md-9">
              <div class="title-post">
                <!-- Title -->
                <?php echo($title); ?>
              </div>
              <div class="job-tag">
                <!-- jobs, place, time, company -->
                <span><i class="fas fa-calendar-day"></i><?php echo(date_format(date_create($timestamp),'d/m/Y h:m:i')); ?></span>
                <!-- <span><i class="fas fa-list"></i>
                <?php
                 // print_r(display_name_cate_news($id,"\t"))
                ?>
                </span> -->
                <span><i class="fas fa-map-marker-alt"></i><?php echo display_news_province($id); ?></span>
                <span><i class="fas fa-briefcase"></i><?php echo display_news_jobs($id); ?></span>

                <span><i class="fas fa-building"></i><?php echo display_name_company($id); ?></span>
              </div>

              <div class="job-sologan">
                <p>Khi liên hệ nhà tuyển dụng vui lòng nói rõ tham khảo việc làm tại website: viectheogiocit.com để được ưu tiên khi ứng tuyển hãy cảnh giác với bất kỳ hình thức thu phí nào từ nhà tuyển dụng, nếu có vui lòng báo lại cho website biết thông tin.</p>
              </div>

            </div>

            <div class="col-md-3">
              <div class="price-post">
                 <?php 
                    if(isset($_SESSION['user']))
                    echo  display_html_box($id, $contacts,$price,$end_date, $_SESSION['user']['id']); 
                    else{
                    echo  display_html_box($id, $contacts,$price,$end_date);
                    }
                  ?>
              </div>
            </div>

          </div> 
          
        </div>
        <div class="body-post">
          <div class="detail-post">
            <div class="image-post">
              <img src="<?php echo ($files!=0)?'/upload/'.$files:'/lib/img/noimage.jpg'; ?>">
            </div>
            <?php echo($description); ?>
          </div>
        </div>
       
        <div class="employers-post">
          <!-- thumbnail and detail employers, company -->
        </div>

      </div>
    </div>
  </div>
</section>

<?php include('includes/layout_footer.php') ?>

<?php 
// $show_modal="";
  
// if(!isset($_SESSION["user"])){
//   $show_modal="1";
//   include("scripts/scripts-ctbd.js.php");

?>
  <!--Modal: modalPush-->
  <div class="modal fade" id="modalctbd" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false" >
    <div class="modal-dialog modal-notify modal-info" role="document">
      <!--Content-->
      <div class="modal-content text-center">
        <!--Header-->
        <div class="modal-header d-flex justify-content-center bg-primary text-white font-weight-bolder text-uppercase">
          <p class="heading">Thông báo hệ thống</p>
        </div>
         
        <!--Body-->
        <div class="modal-body">
          <div id="textContacts"></div>
          <i class="fas fa-bell fa-4x animated rotateIn mb-4"></i>
          <p class="text-uppercase"> Bạn chưa đăng nhập </p>
          <div class="border-primary shadow m-2">
            <button class="btn btn-orange btn-bid btn-block" data-toggle="modal" data-target="#modalLogin">Đăng nhập
          </button>
          </div>

          <div class="bgc-yellow border shadow m-2">
            <?php include('includes/goback.php') ?>
          </div>
          
        </div>

      </div>
      <!--/.Content-->
    </div>
  </div>
  <!--Modal: modalPush-->

