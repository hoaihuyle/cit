<?php
include('includes/layout_header.php');
$get=$_SESSION['get'];
// if(isset($_GET["searchJob"]) && $_GET["searchJob"] !=""){
//     //mess = "";
//     // var_dump($get);
//     $idJob = $_GET["job"];
// }
// if($get=='all') $where=' WHERE ';
// else
// $where = ' WHERE m.slug = '.$get ." AND ";
if($_GET["job"]==0 && $_GET["province"]==0 && $_GET["company"]==0){

  header("Location: tim-viec.php?get=$get");
}
$results=mysqli_query($dbc,list_news_jobsData($get));
?>

 <!-- <===========Main=======> -->
<div class="sub-panel">
  <div class="container">
    <div class="sub-panel-title">
      <div class="sp-left">
        <span>Tìm kiếm</span>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
             <li class="breadcrumb-item"><a href="/index"><i class="fas fa-home"></i> Trang Chủ</a></li>
            <li class="breadcrumb-item active" aria-current="page">Tìm kiếm</li>
            <li class="breadcrumb-item active" aria-current="page"><?php echo $get; ?></li>
          </ol>
        </nav>
      </div>
      <div class="sp-right text-center">
        <img src="/lib/img/sub-page-img-01.png" class="img-fluid">
      </div>
    </div>
  </div>
</div>

<section id="job-list-wrap" class="padding-space">
  <div class="container">
    <div class="row">
     <!--  <div class="col-md-3">
          <div class="card filter-job mb-3">
            <div class="card-header" style="background: #ff9800;color: #fff;">
              <span><i class="fas fa-newspaper mr-2"></i>Bài đăng nổi bật</span>
              <div class="icon-rotate"><i class="fas fa-angle-down"></i></div>
            </div>
            <div class="card-body">
              <a href="#" class="highlight-link">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a>
              <a href="#" class="highlight-link">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a>
              <a href="#" class="highlight-link">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a>
            </div>
          </div>  
      </div> -->
      <div class="col-md-3">
         <?php include'_sidebar.php'; ?>
      </div>
        <div class="col-md-9">
          <div class="list-job">
            <h2><?php echo(strtoupper($get)); ?></h2>
            <h2>Kết quả tìm kiếm: <?php echo(mysqli_num_rows($results)); ?> bài đăng 
            </h2>

        </div>
         <?php include'_list-job.php'; ?>
      </div>
    </div>
  </div>
</section>

<?php include('includes/layout_footer.php') ?>

