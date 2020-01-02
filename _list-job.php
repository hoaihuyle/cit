<?php 
//  display on search
//If do not have a var $_GET["searchJob"]
// Sql will override 
// if(!isset($idJob)){

//   if($get!='all')
//   {
//     $str_q=" WHERE m.slug ='$get'";
    
//   }
//   else{
//     $str_q='';
//   }
  
//   $sql =" SELECT n.id as nid,n.id_type as ntype, n.title, n.description, n.files,n.price, n.timestamp, m.slug,n.start_pr, n.end_pr, n.contacts
//   FROM news as n 
//   LEFT JOIN type_post as tp 
//   ON n.id_type=tp.id
//   LEFT JOIN menu as m
//   ON m.id= tp.menu_id 
//   ".$str_q."
//   ORDER BY n.id DESC "; 
//   $results=mysqli_query($dbc,$sql);
// }

?>

<div class="list-job ">
  <!-- FORM for search -->
  <div class=" card filter-job mb-3">
    <div class="card-header" style="background: #ff9800;color: #fff;">
      <span><i class="fas fa-newspaper mr-2"></i>Tìm kiếm</span>
      <div class="icon-rotate"><i class="fas fa-angle-down"></i></div>
    </div>
    <div class="card-body">
      <form action="tim-kiem.php" method="GET">

        <div class="row filter-select">
          <div class="col-md-4">
            <select class="custom-select jobFilter" name="job">
              <option selected value="0">Ngành nghề</option>
              <?php
              $jobs=mysqli_query($dbc,$getSQL["gJobs"]);
              if(mysqli_num_rows($jobs)>0)
              {
                while($job = $jobs->fetch_assoc()){    
                  ?>
                  <option value="<?php echo($job['id']); ?>"><?php echo($job['name']) ?></option>
                <?php }
              }
              ?>
            </select>
          </div>
          <div class="col-md-4">
            <select class="custom-select companyFilter" name="company">
              <option selected value="0">Cửa hàng</option>
              <?php
              $companies=mysqli_query($dbc,$getSQL["gSub"]);
              if(mysqli_num_rows($companies)>0)
              {
                while($company = $companies->fetch_assoc()){    
                  ?>
                  <option value="<?php echo($company['id']); ?>"><?php echo($company['name']) ?></option>
                <?php }
              }
              ?>
            </select>
          </div>
          <div class="col-md-4">
            <select class="custom-select cityFilter" name="province">
              <option  value="0">Thành phố</option>
              <?php
              $results_p=mysqli_query($dbc,$getSQL["gProvinceActive"]);
              if(mysqli_num_rows($results_p)>0){
                while($result_p = $results_p->fetch_assoc()){    ?>
                  <option <?php echo ($result_p['id']==49)?'selected':''; ?> value="<?php echo($result_p['id']); ?>">
                    <?php echo($result_p['name']) ?>
                  </option>
                  <?php }//End while
                }?>
            </select>
          </div>
        </div>

        <div class="form-group search-job dropdown">
          <div class="input-group mb-3">
            <input type="text" id="searchNewsInput" class="form-control" onkeyup="searchTitleNews()" placeholder="Tìm tên bài đăng" title="Nhập tên bài đăng" name="search">
            <ul id="elementNews" class="dropdown-content">
              <?php
              /*Create new var query for $sql*/
              $r=mysqli_query($dbc,list_news_jobsData($get));
              if(mysqli_num_rows($r)>0) {
                $i=0;
                while($result = $r->fetch_assoc()) {
                  $bg_color = $i % 2 === 0 ? "secondary" : "light";
                  $txt_color = $i % 2 === 0 ? "light" : "dark";
                  $i++;
              ?>

              <li>
                <a href="<?php echo display_href_article_link( $result["nid"], $result["title"]); ?>" class="bg-<?php echo $bg_color; ?> text-<?php echo $txt_color; ?>"><i class="fas fa-search " ></i><?php echo $result['title']?></a>
              </li>

              <?php 
                }//End while
                }else {
                  echo '<li>
                          <a> 
                            <i class="fas fa-search " ></i>
                            Hiện tại không có bài đăng nào tồn tại
                          </a>
                        </li>';
                }
              ?>
            </ul>
            <div class="input-group-append"><button type="submit" name="searchJob"class="btn btn-orange input-group-text" value="Lọc" placeholder="Lọc">
                <i class="fas fa-search"></i></button>
            </div>

          </div>
        </div>
      </form>
    </div>
  </div>
   <!-- END FORM for search -->
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
      }//End if 
      if($dem==0)
        if(!isset($idJob)){
          echo '<div class="title-post" style="margin:30px ;" > Không có bài đăng nào phù hợp với kết quả tìm kiếm.</div>';
        }
        else{
          echo '<div class="title-post" style="margin:30px ;" > Hiện tại không có bài đăng nào còn hạn ở phân mục này.</div>';
        }
    ?>
  </div>
</div>

<div class="btn-collapse">
 <button type="button" class="btn btn-primary" data-toggle="collapse">Xem thêm</button>
</div>
