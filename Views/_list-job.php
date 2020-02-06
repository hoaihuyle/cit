<div class="list-job ">
   <!-- Add class name list-job-container to scrolled and CONSTANT  $limit_LISTJOBS -->
  <div id="listJobCon" class="list-job-container">

    <?php
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
    ?>

    <!-- <div class="btn-collapse">
			<button type="button" class="btn btn-primary" data-toggle="collapse">Xem thêm</button>
		</div> -->
      <?php } ?>
  </div>
</div>
