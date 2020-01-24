<?php  
if(isset($user_id)){
	if(isset($id_app))
		$newsInfo=display_newsInfo_by_appID($id_app);
		// var_dump($newsInfo);
		// die();
}
if(isset($company_id)){
	$newsInfo=display_newsInfo_by_companyID($company_id);
}
?>

<div class="apply-post ">
	<?php
	if(isset($newsInfo))
		foreach ($newsInfo as $key) { ?>
			<div class="list-apply ">
				<div class="job-header job-tag">		
					<a href=" <?php echo display_href_article_link( $key["nid"],$key["title"]) ?>" ><?php echo limit_title($key['title'],40); ?><sup><span class="badge badge-pill badge-secondary"><?php echo $key['count']; ?> lượt xem</span></sup> </a>

				</div>

				<div class="apply-thumbnail">
					<img src="<?php echo ($key['files']!='')?'/upload/thumb/'.$key['files']:'/lib/img/noimage.jpg' ?>">

					<div class="remain-days bg-warning text-dark rounded btn-sm">
						<?php
 				 		// So sánh ngày giờ post từ người dùng với ngày hiện tại
						$day= new DateTime($key['end_date']);
						$now = new DateTime("now");
						// var_dump($day->format('d-m-y'));
						$existN=($day>$now)?true:false;
						echo ($existN)?("Còn ".dateDifference($day,$now))." ngày":"Đã hết hạn";
						?>
					</div>
					<?php if(!$existN && isset($id_app) && isset($key['id_subcate']) ){ ?>
					<div id="rateId" class="star-rating">
						<span class="fa fa-star" data-toggle="tooltip" title="Rất tệ" data-rating="1"></span>
			            <span class="fa fa-star" data-toggle="tooltip" title="Kém" data-rating="2"></span>
			            <span class="fa fa-star" data-toggle="tooltip" title="Bình thường" data-rating="3"></span>
			            <span class="fa fa-star" data-toggle="tooltip" title="Tốt" data-rating="4"></span>
			            <span class="fa fa-star" data-toggle="tooltip" title="Rất tốt" data-rating="5"></span>
						<input type="hidden" name="whatever3" class="rating-value" value="<?php echo(isset($key['rating'])?$key['rating']:0) ?>"> 
					</div>
					<div  id="rateSucess" class="btn-group-sm" role="group" aria-label="Basic example">

							<button  id="rateSucessSend" onclick="rateRequest(<?php echo($id_app.','.$key['acid'].','. $key['id_subcate'] );?>)" type="button" class="btn btn-sm btn-info waves-effect waves-primary text-light">Gởi KQ</button>
							<!-- <button id="rateSucessCancel" onclick="window.location.reload(false);" type="button" class="btn btn-sm btn-outline-secondary waves-effect">Hủy</button> -->
					</div>
					<?php } // End if user_id ?>
				</div>
				<div class="apply-info">
					<div class="apply-item-title job-tag">

						<span data-toggle="tooltip" title="Thông tin về thời gian bạn ứng tuyển công việc này"><i class="fas fa-calendar-day"></i><?php echo(date_format(date_create($key['end_date']),'d/m/Y')); ?></span>
						<span><i class="fas fa-map-marker-alt"></i><?php echo display_news_province($key['nid']); ?></span>
						<span><i class="fas fa-briefcase"></i><?php echo display_news_jobs($key['nid']); ?></span>
						<span><i class="far fa-building"></i><?php echo display_name_company($key['nid']) ?></span>
					</div>
					<div class="job-content">
						<?php 
						$st='chi-tiet-bai-dang.php?news_id='.$key['nid']; 
						echo limit_text_length($key['description'],150,$st)
						?>
					</div>
				</div>
			</div>
	<?php 
	}//end foreach
	else{
		echo '<div style=" text-align: center; margin-top: 100px;"> Không có bài đăng nào tồn tại trong mục này... </div>';
	} ?>
</div>
