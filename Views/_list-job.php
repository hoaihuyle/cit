
<div class="sub-panel">
  <div class="container">
    <div class="sub-panel-title">
      <div class="sp-left">
        <span>danh sách việc</span>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
             <li class="breadcrumb-item"><a href="/index"><i class="fas fa-home"></i> Trang Chủ</a></li>
             <li class="breadcrumb-item active" aria-current="page">Danh sách việc</li>
             <li class="breadcrumb-item active" aria-current="page"><?php if($get='all') echo 'TỔNG HỢP'; else echo strtoupper($get); ?></li>
          </ol>
          <ol class=" breadcrumb logo-support">
            <li class=" breadcrumb-item logo-support-item" aria-current="page"><img src="/lib/img/logo/dntrelogo-fit.jpg"></li>
            <li class=" breadcrumb-item logo-support-item" aria-current="page"><img src="/lib/img/logo/logoclbit-fit.jpg"></li>
            <li class=" breadcrumb-item logo-support-item" aria-current="page"><img src="/lib/img/logo/khoinghiephuelogo-fit.png"></li>
            <li class=" breadcrumb-item logo-support-item" aria-current="page"><img src="/lib/img/logo/hsalogo-fit.jpg"></li>
          </ol>
        </nav>
      </div>
      <div class="sp-right text-center">
        <img src="/lib/img/sub-page-img-01.png" class="">
      </div>
      </div>
    </div>
  </div>
</div>
<section id="job-list-wrap" class="padding-space">
  <div class="container">
    <div class="row">

      <div class="col-md-3">

      <?php include'_sidebar.php'; ?>
      
      </div>
      <div class="col-md-9 list-job-containt">

      <div class="list-job">
        <!-- Add class name list-job-container to scrolled and CONSTANT  $limit_LISTJOBS -->
        <div id="listJobCon" class="list-job-container">

          <?php
          //  var_dump(($newsRecents));
          // die();
          if(!empty($newsRecents[0])){
            foreach ($newsRecents as $news){ 
                echo display_htlm_listJobsItem($news);
            // }
            // if(isset($numSearchJob)&&$numSearchJob==0){
            //   echo '<div class="title-post" style="margin:30px ;" > Không có bài đăng nào phù hợp với kết quả tìm kiếm.</div>';
            //   echo '<div class="bgc-yellow border m-2">
            //   <button class="btn btn-outline-dark btn-lg btn-block text-uppercase border-0 bg-transparent" onclick="goBack()"><i class="fas fa-arrow-circle-left"></i>Trờ lại</button>
            // </div>';
            // }
            // if(isset($numJob)&&$numJob==0){
            //   echo '<div class="title-post" style="margin:30px ;" > Hiện tại không có bài đăng nào còn hạn ở phân mục này.</div>';
            // }
            // if(isset($numJob)&&$numJob>0){
            }
            if(count($newsRecents)>6){
          ?>

          <div class="btn-collapse">
            <button type="button" class="btn btn-primary" data-toggle="collapse">Xem thêm</button>
          </div>
          <?php
            }}else{
             echo '<div class="job-header mt-5"><h2>Hiện phân mục này đã hết công việc còn hạn</h2></div>';
            }
          ?>
        </div>
      </div>

      </div>

    </div>
  </div>
</section>

