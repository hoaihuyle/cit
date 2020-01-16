<!-- Lấy các bài đang hoạt động -->
<?php
  
  $list=list_post_activing();
?>

<div class="card filter-job mb-3">
  <div class="card-header" style="background: #ff9800;color: #fff;">
    <span><i class="fas fa-newspaper mr-2"></i>Bài đăng nổi bật</span>
    <div class="icon-rotate"><i class="fas fa-angle-down"></i></div>
  </div>
  <div class="card-body">
    <?php 
    if (isset($list)) {
       list_news_jobsHotData_SideBar($list, 7);
      # code...
    }
    else 
    {
      echo('<a href="" class="highlight-link" style="float:left; width: 90%;"> Không có bài đăng tồn tại </a>');
    }
    ?>

  </div>
</div>

<a class="text-center text-uppercase nav-link css-sendFastJobs m-2" id="sendFastJobs" href="/viec-lam-ngay" >
<strong> Đăng tuyển ngay </strong>
<i class="fa fa-bolt" style="padding-left: 10px;" aria-hidden="true"></i></a>

