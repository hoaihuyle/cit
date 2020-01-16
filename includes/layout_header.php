<?php
ob_start();
session_start();
// if(isset($_SESSION['user'])){
//   var_dump($_SESSION['user']['id']);
// } 
// die();
/*session_destroy();
unset($_SESSION['user']);*/

$get =null;
if(isset($_GET["get"])){
  $get=$_GET['get'];
  if($get =="tong-hop") $get = "all";
  $_SESSION['get'] = $get;

}



include('admin/inc/myconnect.php');
include('admin/inc/function.php');
include('config/config.php');
include('sysenv.php');
?>

<html lang="en">
<head>

  <!-- Global site tag (gtag.js) - Google Analytics -->
  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-128979956-2"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-128979956-2');
  </script>
  <script>
  window.fbAsyncInit = function() {
    FB.init({
      appId            : '2026423604324894',
      autoLogAppEvents : true,
      xfbml            : true,
      version          : 'v4.0'
    });
  };
  </script>
  <!-- End FACEBOOK GOOGLE -->

  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="icon" type="image/jpg" sizes="32x32" href="/lib/img/logo.jpg">
  <!-- lib css -->
  <link rel="stylesheet" type="text/css" href="/lib/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="/lib/css/fontawesome-all.css">
  <link rel="stylesheet" type="text/css" href="/lib/css/ihover.min.css">
  <link rel="stylesheet" type="text/css" href="/lib/css/slick.css">
  <link rel="stylesheet" type="text/css" href="/lib/css/slick-theme.css">
  <link rel="stylesheet" type="text/css" href="/lib/css/select2.min.css">
  <link rel="stylesheet" type="text/css" href="/lib/css/select2-bootstrap4.min.css">
  <link rel="stylesheet" type="text/css" href="/lib/css/icheck-material.min.css">
  <link rel="stylesheet" type="text/css" href="/lib/css/jquery.mCustomScrollbar.min.css">
  <!-- Calendar -->
  <link rel="stylesheet" type="text/css" href="/lib/css/tempusdominus-bootstrap-4.min.css">

  <!-- Success animation -->
  <link rel="stylesheet" href="/lib/css/success-style.css?sizefile=<?php echo md5_file("lib/css/success-style.css");?>">
  <!-- //end success -->
  
  <!-- Input type File upload photo -->
  <link rel="stylesheet" href="/lib/css/inputFile.css?sizefile=<?php echo md5_file("lib/css/inputFile.css");?>">
  <!-- End input -->
  <link rel="stylesheet" type="text/css" href="/lib/css/style.css?sizefile=<?php echo md5_file("lib/css/style.css");?>">

  <!-- thanhcss -->
  <link rel="stylesheet" type="text/css" href="/lib/css/thanh.css">

  <title>VIỆC LÀM THEO GIỜ</title>
</head>

<body>
  <!-- Facebook fanpage iframe JS SDK -->
  <div id="fb-root"></div>
  <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v4.0&appId=2026423604324894&autoLogAppEvents=1"></script>
  <!-- End FB fanpage iframe JS SDK -->
  <div class="container-fluid">

    <div class="overlay-wrap"></div><!-- /.overlay-wrap -->

    <nav class="navbar navbar-expand-lg fixed-top rounded-bottom">

      <a class="navbar-brand" href="/index"><img src="/lib/img/logo-transparent.png" class="img-fluid img-nav"></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">

          <?php 
          $result=mysqli_query($dbc,$getSQL["gMenu2"]);

          while($info=mysqli_fetch_array($result,MYSQLI_ASSOC)){
            // echo('<pre>');
            // var_dump($info['id']);
            // echo('</pre>');
            if(check_menu($info['id'])){ ?>
              <li class="nav-item dropdown dropdown-login">

                <a class="nav-link dropdown-toggle" href="<?php echo($info['slug']) ?>" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <?php echo($info['name']); ?>
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <?php display_submenu($info['id']); ?>
                </div>
              </li>
            <?php }//End if
            else{
              if($info['parent']==0){ //not exitst parent
                if($info['id']==51){
               ?>
                <li class="nav-item bg-gradient-primary">
                  <a class="nav-link css-sendFastJobs" id="sendFastJobs" href=" <?php echo('/'.$info['slug']) ?>" >
                  <?php echo($info['name']); ?><i class="fa fa-bolt" style="padding-left: 10px;" aria-hidden="true"></i>
                </a>
                </li>
              <?php }//end if dang-tin
              else{
                if($info['id']==57){ 
              ?>
              <li class="nav-item filter-job  ">
                  <div class="nav-link card-header" style="background: #ff9800;color: #fff; border-radius: 5px;">
                    <span><i class="fas fa-newspaper mr-2"></i><?php echo($info['name']); ?></span>
                  <div class="icon-rotate ml-1 float-right"><i class="fas fa-angle-down"></i></div>
              </div>
              </li>
              <?php
                }//end if search
                else{
               ?>
               <li class="nav-item">
                <a class="nav-link" href="<?php echo('/'.($info['slug'])); ?>"><?php echo($info['name']); ?></a>
              </li>
              <?php 
                }//end else
               }//End else
              }// End if parent
            }//end else
            }//End while ?>
          </ul>

          <ul class="navbar-nav ml-auto">
            <li class="nav-item ">
              <div class="thumbnail" ></div>
              <div class="overlay-thumb">
                <img src="/lib/img/load-icon.svg" class="img-fluid">
              </div>
            </li>
            <!-- Display when sign-in succes -->

            <?php if(isset($_SESSION['name_user'])): ?>
              <li class="nav-item dropdown dropdown-login">
                <a class="nav-link dropdown-toggle" href="javascrip:" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="fas fa-user-circle mr-2"></i>
                  <?php echo $_SESSION['name_user'] ?>
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" style="padding: 0.5rem" href="">Thông tin</a>
                  <a class="dropdown-item" style="padding: 0.5rem" href="/logout.php">Đăng xuất</a>
                </div>
              </li>


              <?php else: ?>
                <li class="nav-item signSucces">
                  <button type="button" class="btn nav-link btn-login" data-toggle="modal" data-target="#modalLogin">
                    <span class="">
                      <i class="fas fa-user-circle mr-2"></i>
                      đăng nhập
                    </span>
                  </button>
                </li>
              <?php endif ?>  


              <li class="nav-item job-upload">
                <a class="nav-link" href="/dang-phat-trien"><i class="fas fa-file-upload mr-2"></i>Tải app</a>
              </li>

            </ul>

          </div>

    </nav><!-- /.navbar -->
    <!-- FORM for search -->
    <!-- <div class=" card filter-job mb-3">
      <div class="card-header" style="background: #ff9800;color: #fff;">
        <span><i class="fas fa-newspaper mr-2"></i>Tìm kiếm</span>
        <div class="icon-rotate"><i class="fas fa-angle-down"></i></div>
      </div> -->
      <div id="searchFormNav" class="card-body mt-5">
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
    <!-- </div> -->
    <!-- END FORM for search -->
</div>

<div class="overlay-div"><img src="/lib/img/load-icon.svg" class="img-fluid"></div>

<div class="overlay-success">
  <div class="dummy-positioning d-flex ">
    <div class="success-icon"><div class="success-icon__tip"></div><div class="success-icon__long"></div></div>
  </div>
</div>