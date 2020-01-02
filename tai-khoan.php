<?php 

include('includes/layout_header.php');
$user_id =null;
if(isset($_GET["user_id"])){
$user_id=$_GET['user_id'];
}
// echo($actual_link);
if($user_id==null || !(is_string($user_id))){
	header("Location: /index");
}
else 
{

	$userInfo=display_users_infoBylist('u.id',$user_id);
	check_loginbySession($userInfo[0]['oauth_uid']);
	
	if(isset($userInfo[0]['afullname'])) $fullname = $userInfo[0]['afullname'];
	else $fullname = $userInfo[0]['ufullname'];

	if(isset($userInfo[0]['apicture'])) $picture = '/upload/uploadUser/'.$userInfo[0]['apicture'];
	else $picture = $userInfo[0]['upicture'];

		$id = $userInfo[0]['uid'];

		$id_em = $userInfo[0]['id_em'];

		$id_app = $userInfo[0]['id_app'];
}

?>

<!-- ================Main=============== -->

<div class="sub-panel">
  <div class="container">
    <div class="sub-panel-title">
      <div class="sp-left">
        <span>Tài khoản</span>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/index"><i class="fas fa-home"></i> Trang Chủ</a></li>
            <li class="breadcrumb-item active" aria-current="page">Tài khoản</li>
           <!--  <li class="breadcrumb-item active" aria-current="page">Chi tiết bài đăng</li> -->
          </ol>
        </nav>
      </div>
      <div class="sp-right text-center">
        <img src="/lib/img/detail-user-img-02.jpg" class="img-fluid" style="">
      </div>
    </div>
  </div>
</div>
	
<section id="detail-a-user" class="padding-space">

  <div class="container">
  		<div class="bgc-yellow border shadow m-2">
			<?php include('includes/goback.php'); ?>	
		</div>
		<div class="row">
			<div class="col-md-4 col-xs-12 left-aside">
				<div class="wrap-leftas border-box">
					<div class="avatar">
						<img src="<?php echo($picture); ?>">
					</div>
					<div class="name-user">
						<h2><?php echo $fullname; ?></h2>

					</div>
					<div class="text-center">
						<!-- <a href="cap-nhap-ho-so.php?user_id=<?php echo $user_id ?>"><button type="submit" class="btn btn-orange">Cập nhập hồ sơ</button></a> -->
						<a href="/user/<?php echo($id) ?>"><button type="submit" class="btn btn-orange">Chi tiết tài khoản</button></a>
			        	
			        </div>


				</div>
				<!-- <div class="calendar">
					<div class="header-post ">
						<div class="title-post">
							Lịch làm việc
						</div>
					</div>
					<div class="datepicker"></div>
				</div> -->
			</div>

			<div class="col-md-8 col-xs-12 right-aside">

				<!-- <div class="row wrap-box">
					<div class="col-sm-6">
						<button class="btn btn-orange btn-bid btn-block">Nhà Tuyển Dụng</button>
					</div>
					<div class="col-sm-6">
						<button class="btn btn-orange btn-bid btn-block">Người Ứng Tuyển</button>
					</div>
				</div> -->
				
				<!-- <div class="row wrap-box">
					<div class="col-6">
						<div class="box">
							
						</div>
					</div>
					<div class="col-6">
						<div class="box">
							
						</div>
					</div>
					<div class="col-sm-4">
						<div class="box">
							
						</div>
					</div>
				</div> -->

				<div class="container-post border-box">
					<!-- Employers -->
		            <div class="title-post">
		            	<ul class="nav nav-tabs" id="myTab" role="tablist">

				          <li class="nav-item">
				            <a class="nav-link active" id="App-tab" data-toggle="tab" href="#AppliedForm" role="tab" aria-controls="home" aria-selected="true">Ứng tuyển  <sup><span class="badge badge-pill badge-secondary"><?php echo isset($id_app)?displat_totalapp($id_app):' 0 ';  ?></span></sup></a>
				          </li>

				          <li class="nav-item">
				            <a class="nav-link" id="Post-tab" data-toggle="tab" href="#PostedForm" role="tab" aria-controls="profile" aria-selected="false">Đăng tin <sup><span class="badge badge-pill badge-secondary"><?php echo isset($id_emp)?displat_totalemp($id_app):' 0 '; ?></span></sup></a>
				          </li>

				        </ul>
		             </div>
					 <div class="body-post">
						<div class="tab-content" id="myTabContent">
							<!-- Tab Applicant -->
			          		<div class="tab-pane fade show active list-jobs-company" id="AppliedForm" role="tabpanel" aria-labelledby="App-tab">
					 		<?php include('_template-list.php') ?>
					 		</div>
					 		<!-- Tab Employee/Poster -->
					 		<div class="tab-pane fade " id="PostedForm" role="tabpanel" aria-labelledby="Post-tab">
					 		Đang phát triển
					 		</div>
					 	</div>
			        </div>
				</div>
			</div>
		</div>
	</div>
</section>







<?php include('includes/layout_footer.php') ?>