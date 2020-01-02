<?php

include('includes/layout_header.php');

$company_id =null;
if(isset($_GET["company_id"])){
$company_id=$_GET['company_id'];
}
// echo($actual_link);
if($company_id==null || !(is_string($company_id))){
header("Location: index.php");
}
else 
{

	$companyInfo=display_data_company($company_id);
	$companyId =$companyInfo[0]['cid'];
	
	// if(isset($userInfo[0]['afullname'])) $fullname = $userInfo[0]['afullname'];
	// else $fullname = $userInfo[0]['ufullname'];

	// if(isset($userInfo[0]['apicture'])) $picture = 'upload/uploadUser/'.$userInfo[0]['apicture'];
	// else $picture = $userInfo[0]['upicture'];

	// $id = $userInfo[0]['uid'];

	// $id_em = $userInfo[0]['id_em'];

	// $id_app = $userInfo[0]['id_app'];

	// if(!isset($id_em)) $kt =true;
	// else $kt= false;
}

?>
<div class="sub-panel">
  <div class="container">
    <div class="sub-panel-title">
      <div class="sp-left">
        <span>Công ty</span>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/index"><i class="fas fa-home"></i> Trang Chủ</a></li>
            <li class="breadcrumb-item active" aria-current="page">Công ty</li>
            <li class="breadcrumb-item active" aria-current="page">Chi tiết công ty</li>
          </ol>
        </nav>
      </div>
      <div class="sp-right text-center">
        <img src="/lib/img/sub-page-img-01.png" class="img-fluid">
      </div>
    </div>
  </div>
</div>

<section id="detail-a-company" class="padding-space">
	<div class="container">
		<div>
			<?php include('includes/goback.php'); ?>	
		</div>
		<div class="row">
			<div class="col-sm-12 col-md-6 col-lg-4 company-left border border-0">
				<div class="avatar">
					<?php $image = (is_null($companyInfo[0]["cfiles"]))?$companyInfo[0]["cfiles"]:"/lib/img/commingsoon.jpg"; ?>
					<img src="<?php echo $image ?>">
				</div>
				<div class="wrap-validate-rating">
					<span class="heading">Đánh giá sao</span>
					<?php 
					$rateMark = $companyInfo[0]['rateMark'];
					if(isset($rateMark)) {
						$i=0;
						while ($i <= 4) {
					?>
					<span class="fa fa-star <?php echo(($i+1< $rateMark)?'checked':''); ?>"></span>
							
					<?php $i++; } //end while 
					}//end if 
					else { ?>
					<span class="fa fa-star"></span>
					<span class="fa fa-star"></span>
					<span class="fa fa-star"></span>
					<span class="fa fa-star"></span>
					<span class="fa fa-star"></span>
					<?php } //end else ?>
					<p id="title-rating-company"> <b> <?php echo total_numsMark_company($companyId); ?> </b> điểm trên tổng số <b> <?php echo total_countAppli_company($companyId); ?></b> lượt đánh giá</p>
					<hr style="border:3px solid #0093ff">
					<?php for ($i=5; $i > 0 ; $i--) { ?>
					<div class="row">
						<?php
						//Tính % 
						if(total_countAppli_company($companyId)<>0)
						$percent = total_countAppli_company($companyId,$i)/total_countAppli_company($companyId)*100;
						else  $percent=0;
						// var_dump($percent);
						// var_dump(total_countAppli_company($companyId,$i));
						// die();
						// var_dump(total_countAppli_company($companyId));
						?>
						<div class="col-2">
							<div class="quality-stars"><?php echo $i; ?> sao:</div>
						</div>
						<div class="col-8">
							<div class="progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="max-width:<?php echo $percent.'%'?>">
								<span class="title"><?php echo $percent.'%'; ?></span>
								</div>
							</div>
						</div>
						<div class="col-2">
							<div class="nums-rating"><?php echo total_countAppli_company($companyId,$i); ?><i class="fa fa-user" aria-hidden="true" ></i></div>
						</div>
					</div>
					<?php } //end For ?>
				</div>
			</div>
			<div class="col-sm-12 col-md-6 col-lg-8 company-right">
				<div class="containt-company">
					<h2 class="company-name">
					<?php echo $companyInfo[0]["cname"]; ?> 
					</h2>
					<!-- <span class="css_flcompany">Theo dõi nhà tuyển dụng</span> -->
					<div class="btn-social">
						<a href="">Facebook</a>
						<a href="">Email</a>
						<a href="">Website</a>
					</div>
					<table class="info_company" style="width: auto">
	                        <tbody>
		                        <tr class="marginBottom20">
		                            <td class="icon-detail-company">
		                                <span class="icon-24 icon-address2"></span>
		                            </td>
		                            <td class="address-company">
		                                <b>Địa chỉ công ty:&nbsp;</b>
		                                <span><?php echo isset($companyInfo[0]["aname"])?$companyInfo[0]["aname"].', '.$companyInfo[0]["dtitle"].', '.$companyInfo[0]["pname"]:'Cập nhập sau.....'; ?> </span>
		                                <!-- Show province and link to jobs in there -->
		                                <!-- <span><?php echo $addfull; ?> <a class="text-primary" href="https://viectotnhat.com/vi%E1%BB%87c-l%C3%A0m-qu%E1%BA%ADn-1-t%E1%BA%A1i-h%E1%BB%93-ch%C3%AD-minh" title="Quận 1">Quận 1</a></span> -->
		                            </td>
		                        </tr>
		                        <tr class="marginBottom20">
		                            <td class="icon-detail-company">
		                                <span class="icon-24 icon-scale2"></span>
		                            </td>
		                            <!-- <td class="detail-info-company">
		                                <b>Quy mô công ty:&nbsp;</b>
		                                <span>Trên 500 người</span>
		                            </td> -->
		                        </tr>
	                        </tbody>
	                </table>
	                <div class="description-company">
	                	<b>Thông tin sơ lược về doanh nghiệp:&nbsp;</b>
	                	<br>
	                	<?php echo $companyInfo[0]["description"]; ?> 
	                	<!-- <p>We are a leading and fastest-growing Smart Supply Chain service provider in China. Our multisided platform combines technology, integrated logistics and supply chain services, last-mile services and value-added services. BEST Cloud, our proprietary technology platform that seamlessly connects our systems with those of our ecosystem participants, is the backbone that powers our integrated services and solutions. Our logistics and supply chain services encompass B2B and B2C supply chain management, express and less-than-truckload delivery, cross-border supply chain management and a real-time bidding platform to source truckload capacity. Our last-mile services include online merchandise sourcing and store management for convenience stores as well as B2C services. In addition, we provide value-added services to support our ecosystem participants and help them grow.
						We believe we are well positioned to transform the logistics and supply chain industry in China and capture growth opportunities in the New Retail era, which is the seamless integration of online and offline retail to offer a consumer-centric, omni-channel and global shopping experience through digitization and just-in-time delivery.
						</p> -->
	                </div>
				</div>
			</div>
		</div>
	</div>
</section>

<section id="jobs-company" class="padding-space">
	<div class="container">
		<h3 align="center" class="company-name"><div class="title-content-page fontSize24">Việc làm <?php echo $companyInfo[0]["cname"]; ?>  </div></h3>
		<div class="list-jobs-company">
			<?php include('_template-list.php') ?>
		</div>
	</div>
</section>

<section id="place-company" class="padding-space">
	<div class="container">
		<?php 
		$newadd = str_replace(' ', '+', $companyInfo[0]["aname"]);
		$newdis = str_replace(' ', '+', $companyInfo[0]["dtitle"]);
		$newpro =str_replace(' ', '+', $companyInfo[0]["pname"]);

		$place = $newadd.','.$newdis.','.$newpro;
		?>
		<iframe width="100%" height="350" frameborder="0" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyAYkWdfGJ5Py6iZjNHOBsc0jp-0h8QqE0c
    &q=<?php echo $place;?>,Việt+Nam" allowfullscreen></iframe>
	</div>
</section>

<?php include('includes/layout_footer.php') ?>