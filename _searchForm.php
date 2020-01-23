<?php include('admin/inc/function.php'); ?>
<!-- FORM for search -->
<!-- <div class=" card filter-job mb-3">
<div class="card-header" style="background: #ff9800;color: #fff;">
  <span><i class="fas fa-newspaper mr-2"></i>Tìm kiếm</span>
  <div class="icon-rotate"><i class="fas fa-angle-down"></i></div>
</div> -->
<!-- <form action="tim-kiem.php" method="GET"> -->
<form id="searchForm" name="searchForm" action="/Controller/SearchController.php" method="GET">
  <div class="wrap-close"> <button type="button" class="close" onclick="$('#searchFormNav').fadeToggle('fast', 'swing');">×</button> </div>
  <div class="row filter-select">
    <div class="col-md-4">
      <select class="custom-select jobFilter" id="jobSr" name="job">
        <option selected value="0">Ngành nghề</option>
        <?php foreach ($listJob as $job){ ?>
            <option value="<?php echo($job['id']); ?>"><?php echo($job['name']) ?></option>
        <?php } ?>
      </select>
    </div>
    <div class="col-md-4">
      <select class="custom-select companyFilter" id="companySr" name="company">
        <option selected value="0">Cửa hàng</option>
        <?php foreach ($listCompany as $company){ ?>
            <option value="<?php echo($company['id']); ?>"><?php echo($company['name']) ?></option>
        <?php } ?>
      </select>
    </div>
    <div class="col-md-4">
      <select class="custom-select cityFilter" id="provinceSr" name="province">
        <option selected value="0">Thành phố</option>
        <?php foreach ($listPro as $province){ ?>
        <option value="<?php echo($province['id']); ?>"><?php echo($province['name']) ?></option>
        <?php } ?>
      </select>
    </div>
  </div>
  <div class="form-group search-job dropdown">
    <div class="input-group mb-3">
      <input type="text" id="searchNewsInput" class="form-control" onkeyup="searchTitleNews()" placeholder="Tìm tên bài đăng" title="Nhập tên bài đăng" name="search">
      <ul id="elementNews" class="dropdown-content">
        <?php
          $i=0;
          foreach($listNews as $news){
            $bg_color = $i % 2 === 0 ? "secondary" : "light";
            $txt_color = $i % 2 === 0 ? "light" : "dark";
            $i++;
            // echo '<li><a href="" class="bg-'.$bg_color.'"'.$news["title"].' <i class="fas fa-search " ></i> </li>';
        ?>

        <li>
          <a href="<?php echo display_href_article_link( $news["id"], $news["title"]); ?>" class="bg-<?php echo $bg_color; ?> text-<?php echo $txt_color; ?>">
          <i class="fas fa-search " ></i><?php echo $news['title']?></a>
        </li>
        <?php 
        }//End foreach
        if($i==1){
              echo '<li><a> <i class="fas fa-search " ></i> Hiện tại không có bài đăng nào tồn tại </a> </li>';
        };
        ?>
      </ul>
      <div class="input-group-append">
        <button type="submit" id="searchFormSubmit" name="searchJob" class="btn btn-orange input-group-text" value="Lọc" placeholder="Lọc"><i class="fas fa-search"></i></button>
      </div>
    </div>
  </div>
</form>
<!-- </div> -->
<!-- END FORM for search -->