
<?php include(ROOT.'Views/'.'_list-job.php'); ?>

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
        $j =0;
        foreach ($newsHot as $news){ if($j==14) break;
        ?>
        <div class="col-6">
            <div class="list-job-item">
                <div class="jobhot-image">
                    <div class="image-post">
                    <img src="upload/<?php echo isset($news["files"])?$news["files"]:"commingsoon"?>" class="mCS_img_loaded lazy" onError="this.onerror=null;this.src='/lib/img/noimage.jpg';">
                    </div>
                </div>
                <div class="jobhot-info">
                    <div class="job-item-title">
                        <a href="<?php echo (display_href_article_link($news["id"],$news["title"]))?>"><?php echo limit_title($news["title"],70)?></a>
                    </div>

                    <div class="job-tag">
                        <span><i class="fas fa-calendar-day"></i><?php echo $news["timestamp"]?></span>
                        <span><i class="fas fa-map-marker-alt"></i><?php echo($news["province"]["name"]) ?></span>
                        <span><i class="fas fa-briefcase"></i><?php echo $news["job"]["name"] ?></span>
                        <!-- <span><i class="fas fa-money-bill-wave"></i></span> -->
                        <span><i class="fas fa-building"></i></span>
                        <a data-toggle="tooltip" data-original-title="Click để xem chi tiết thông tin về công ty" href="/company/92/cong-ty-bao-hiem-nhan-tho-bao-viet" aria-describedby="tooltip507895"><?php echo $news["company"]["name"]?></a>
                    </div>

                    <div class="job-watch">
                        <span class="badge badge-pill badge-secondary"><?php echo $news["total"] ?> lượt xem <i class="fas fa-eye"></i></span>
                    </div>
                </div>
            </div>
        </div>
        <?php $j++; } ?>
      </div>
    </div>
  </div>
</section>




