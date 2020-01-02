<?php
ob_start();
session_start();
// if(isset($_SESSION['user'])){
//   var_dump($_SESSION['user']['id']);
// } 
// die();
/*session_destroy();
unset($_SESSION['user']);*/
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

  <title>VIỆC LÀM THEO GIỜ</title>
</head>

<body>
  <!-- Facebook fanpage iframe JS SDK -->
  <div id="fb-root"></div>
  <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v4.0&appId=2026423604324894&autoLogAppEvents=1"></script>
  <!-- End FB fanpage iframe JS SDK -->
  <div class="container-fluid">

    <div class="overlay-wrap"></div><!-- /.overlay-wrap -->

    <nav class="navbar navbar-expand-lg fixed-top">

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
                  <a class="nav-link css-sendFastJobs" id="sendFastJobs" href=" <?php echo('/'.$info['slug']) ?>" ><?php echo($info['name']); ?><i class="fa fa-bolt" style="padding-left: 10px;" aria-hidden="true"></i></a>
                </li>
              <?php }//end if 51
                else{
               ?>
               <li class="nav-item">
                <a class="nav-link" href="<?php echo('/'.($info['slug'])); ?>"><?php echo($info['name']); ?></a>
              </li>
              <?php 
                }//end else (id==25)
               }//End if 2
              }// End else
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
      </div>

      <div class="overlay-div">
        <img src="/lib/img/load-icon.svg" class="img-fluid">
      </div>

      <div class="overlay-success">
        <div class="dummy-positioning d-flex ">

          <div class="success-icon">
            <div class="success-icon__tip"></div>
            <div class="success-icon__long"></div>
          </div>

        </div>
      </div>