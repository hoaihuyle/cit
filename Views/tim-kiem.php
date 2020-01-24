<?php
include('includes/layout_header.php');

$jobsData=mysqli_query($dbc,list_news_jobsData('all',0));
// var_dump(list_news_jobsData('all'));
// die();
$numSearchJob = (mysqli_num_rows($jobsData));
?>
<section id="job-list-wrap" class="padding-space mt-5">
  <div class="container">
    <div class="row">
      <div class="col-md-3">
         <?php include'_sidebar.php'; ?>
      </div>
        <div class="col-md-9 list-job-search">
          <div class="list-job">
            <!-- <h2><?php echo(strtoupper($get)); ?></h2> -->
            <?php if($numSearchJob>1){ ?><h2>Kết quả tìm kiếm: <?php echo($numSearchJob); ?> bài đăng <?php } ?> </h2>
          </div>
         <?php include'_list-job.php'; ?>
      </div>
    </div>
  </div>
</section>

<?php 
include('includes/layout_footer.php') ;
?>

