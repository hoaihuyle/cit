<?php
session_start();
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
  <link rel="stylesheet" href="/lib/css/success-style.css?sizefile=<?php echo md5_file(ROOT."/lib/css/success-style.css");?>">
  <!-- //end success -->
  
  <!-- Input type File upload photo -->
  <link rel="stylesheet" href="/lib/css/inputFile.css?sizefile=<?php echo md5_file(ROOT."/lib/css/inputFile.css");?>">
  <!-- End input -->
  <link rel="stylesheet" type="text/css" href="/lib/css/style.css?sizefile=<?php echo md5_file(ROOT."/lib/css/style.css");?>">

  <title>VIỆC LÀM THEO GIỜ</title>
</head>

<body>
  <!-- Facebook fanpage iframe JS SDK -->
  <div id="fb-root"></div>
  <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v4.0&appId=2026423604324894&autoLogAppEvents=1"></script>
  <!-- End FB fanpage iframe JS SDK -->
  <div class="container-fluid">
    <div class="overlay-wrap"></div><!-- /.overlay-wrap -->

    <?php echo $content_for_Menu; ?>
  
  </div>

  <!-- <div class="overlay-div">
    <img src="/lib/img/load-icon.svg" class="img-fluid">
  </div> -->

  <div class="overlay-success">
    <div class="dummy-positioning d-flex ">

      <div class="success-icon">
        <div class="success-icon__tip"></div>
        <div class="success-icon__long"></div>
      </div>

    </div>
  </div>

