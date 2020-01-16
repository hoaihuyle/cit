<div class="list-job ">
   <!-- Add class name list-job-container to scrolled and CONSTANT  $limit_LISTJOBS -->
  <div id="listJobCon" class="list-job-container">

    <?php
      $jobsData=mysqli_query($dbc,list_news_jobsData($get,$limit_LISTJOBS));
      $dem=0;
      if(mysqli_num_rows($jobsData)>0) {
        while($row = $jobsData->fetch_assoc()){  
          $dem++;
          echo display_htlm_listJobsItem($row);
        } //End while
        if($dem>1 && !isset($numSearchJob)){
    ?>
    <div class="btn-collapse">
			<button type="button" class="btn btn-primary" data-toggle="collapse">Xem thêm</button>
		</div>

    <?php    
        }//end if dem
      }//End if 
      if($dem==1)
        if(isset($numSearchJob)){
          echo '<div class="title-post" style="margin:30px ;" > Không có bài đăng nào phù hợp với kết quả tìm kiếm.</div>';
          echo '<div class="bgc-yellow border m-2">
          <button class="btn btn-outline-dark btn-lg btn-block text-uppercase border-0 bg-transparent" onclick="goBack()"><i class="fas fa-arrow-circle-left"></i>Trờ lại</button>
        </div>';
        }
        else{
          echo '<div class="title-post" style="margin:30px ;" > Hiện tại không có bài đăng nào còn hạn ở phân mục này.</div>';
        }
    ?>
  </div>
</div>
