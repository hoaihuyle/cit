<?php
include('includes/layout_header.php');
if($get==null || !(is_string($get))){
  header("Location: index.php");
}

$jobsData=mysqli_query($dbc,list_news_jobsData($get, 0,$limit_LISTJOBS)); //_list-job.php

$numJob = (mysqli_num_rows($jobsData));
?>

<!-- <===========Main=======> -->
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
            <li class=" breadcrumb-item logo-support-item" aria-current="page"><img src="lib/img/logo/dntrelogo-fit.jpg"></li>
            <li class=" breadcrumb-item logo-support-item" aria-current="page"><img src="lib/img/logo/logoclbit-fit.jpg"></li>
            <li class=" breadcrumb-item logo-support-item" aria-current="page"><img src="lib/img/logo/khoinghiephuelogo-fit.png"></li>
            <li class=" breadcrumb-item logo-support-item" aria-current="page"><img src="lib/img/logo/hsalogo-fit.jpg"></li>
          </ol>
        </nav>
      </div>
      <div class="sp-right text-center">
        <img src="lib/img/sub-page-img-01.png" class="">
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

        <?php include'_list-job.php'; ?>
       

      </div>

    </div>
  </div>
</section>

<section id="logoEmployer" class="padding-space">
  <div class="container">
    <div class="text-center"><div class="main-header text-blue mb-3"><span class="text-yellow"> Nhà tuyển dụng hàng đầu của </span> c-it </div></div>
    <div class="employee-slider slide">
      <div>
        <div class="ih-item employers-square">
          <a href="javascript:void(0)">
           <img class="lazy" src="/lib/img/logoCompany/bigC.png" alt="img">
            <!--  <div class="info">
                <div class="info-back">
                  <h3>Siêu thị BigC</h3>
                </div>
              </div> -->
          </a>
        </div>
      </div>

       <div>
        <div class="ih-item employers-square">
          <a href="javascript:void(0)">
           <img class="lazy" src="/lib/img/logoCompany/gongcha-fit.jpg" alt="img">
         <!--     <div class="info">
                <div class="info-back">
                   <h3>Gong cha</h3>
                </div>
              </div> -->
          </a>
        </div>
      </div>

       <div>
        <div class="ih-item employers-square">
          <a href="javascript:void(0)">
            <img class="lazy" src="/lib/img/logoCompany/july.png" alt="img">
        <!--      <div class="info">
                <div class="info-back">
                  <h3>Coffee July</h3>
                </div>
              </div> -->
          </a>
        </div>
      </div>

       <div>
        <div class="ih-item employers-square">
          <a href="javascript:void(0)">
            <img class="lazy" src="/lib/img/logoCompany/highlands-fit.jpg" alt="img">
             <!-- <div class="info">
                <div class="info-back">
                  <h3>Coffee HighLand</h3>
                </div>
              </div> -->
          </a>
        </div>
      </div>

       <div>
        <div class="ih-item employers-square">
          <a href="javascript:void(0)">
            <img class="lazy" src="/lib/img/logoCompany/grab.jfif" alt="img">
       <!--       <div class="info">
                <div class="info-back">
                  <h3>Grab</h3>
                </div>
              </div> -->
          </a>
        </div>
      </div>

       <div>
        <div class="ih-item employers-square">
          <a href="javascript:void(0)">
             <img class="lazy" src="/lib/img/logoCompany/fnow.png" alt="img">
       <!--       <div class="info">
                <div class="info-back">
                  <h3>Foody NOW</h3>
                </div>
              </div> -->
          </a>
        </div>
      </div>

      <div>
        <div class="ih-item employers-square">
          <a href="javascript:void(0)">
            <div class="img-logo">
             <img class="lazy" src="/lib/img/logoCompany/phuclong.png" alt="img">
            </div>
      <!--        <div class="info">
                <div class="info-back">
                  <h3>Coffee & Tea Phúc Long</h3>
                </div>
              </div> -->
          </a>
        </div>
      </div>

      <div>
        <div class="ih-item employers-square">
          <a href="javascript:void(0)">
            <div class="img-logo">
              <img class="lazy" src="/lib/img/logoCompany/mrtrum.jfif" alt="img">
            </div>
        <!--      <div class="info">
                <div class="info-back">
                  <h3>BBQ & HOTPO MR TRUM</h3>
                </div>
              </div> -->
          </a>
        </div>
      </div>

      <div>
        <div class="ih-item employers-square">
          <a href="javascript:void(0)">
            <div class="img-logo">
              <img class="lazy" src="/lib/img/logoCompany/kingbbq-fit.jpg" alt="img">
            </div>
             <!-- <div class="info">
                <div class="info-back">
                  <h3>Nhà hàng King BBQ Vincom Huế </h3>
                </div>
              </div> -->
          </a>
        </div>
      </div>

       <div>
        <div class="ih-item employers-square">
          <a href="javascript:void(0)">
            <div class="img-logo">
              <img class="lazy" src="/lib/img/logoCompany/sasin.jfif" alt="img">
            </div>
            <!--  <div class="info">
                <div class="info-back">
                  <h3>Mỳ cay sasin</h3>
                </div>
              </div> -->
          </a>
        </div>
      </div>

      <div>
        <div class="ih-item employers-square">
          <a href="javascript:void(0)">
            <div class="img-logo">
              <img class="lazy" src="/lib/img/logoCompany/owl.png" alt="img">
            </div>
             <!-- <div class="info">
                <div class="info-back">
                  <h3>Coffee OWL</h3>
                </div>
              </div> -->
          </a>
        </div>
      </div>

    </div>
  </div>
</section>

<section id="jobHot" class="padding-space">
  <div class="container">
    <div class="text-center">
      <div class="main-header text-blue mb-3"><span class="text-yellow"> Những bài đăng hàng đầu của </span> c-it </div>
    </div>
  
    <div class="jobhot-wrap">
      <div class="row">
        <?php
          $listJobs = (list_news_jobsHot()); $j =0; 
          foreach ($listJobs as $key => $value) { if($j==22) break;
        ?>
        <div class="col-6">
            <div class="list-job-item">
              <div class="jobhot-image">
                <div class="image-post">
                  <img src="upload/<?php echo isset($value["nfiles"])?$value["nfiles"]:"commingsoon"?>" class="mCS_img_loaded lazy" onError="this.onerror=null;this.src='/lib/img/noimage.jpg';">
                </div>
              </div>
              <div class="jobhot-info">
                <div class="job-item-title">
                  <a href="<?php echo $value["0"] ?>"><?php echo limit_title($value["ntitle"],70)?></a>
                </div>

                <div class="job-tag">
                  <span><i class="fas fa-calendar-day"></i><?php echo $value["ntimestamp"]?></span>
                  <span><i class="fas fa-map-marker-alt"></i><?php printf($value["1"]) ?></span>
                  <span><i class="fas fa-briefcase"></i><?php echo $value["2"] ?></span>
                  <!-- <span><i class="fas fa-money-bill-wave"></i></span> -->
                  <span><i class="fas fa-building"></i></span>
                  <a data-toggle="tooltip" data-original-title="Click để xem chi tiết thông tin về công ty" href="/company/92/cong-ty-bao-hiem-nhan-tho-bao-viet" aria-describedby="tooltip507895"><?php echo $value["3"]?></a>
                </div>

                <div class="job-watch">
                  <span class="badge badge-pill badge-secondary"><?php echo $value["acount"] ?> lượt xem <i class="fas fa-eye"></i></span>
                </div>

              </div>
            </div>
        </div>
        <?php $j++; } ?>
      </div>
    </div>
  </div>
</section>

<?php include('includes/layout_footer.php') ?>

