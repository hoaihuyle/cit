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

