<!-- Lấy các bài đang hoạt động -->
<div class="card filter-job mb-3">
  <div class="card-header" style="background: #ff9800;color: #fff;">
    <span><i class="fas fa-newspaper mr-2"></i>Bài đăng nổi bật</span>
    <div class="icon-rotate"><i class="fas fa-angle-down"></i></div>
  </div>
  <div class="card-body">
    <?php
    if (count($newsSideBar)>0) {
      foreach($newsSideBar as $news){
        $title_sb='<a data-toggle="tooltip" data-original-title="'.$news['title'].'"href="'.display_href_article_link($news["id"],$news["title"]).'" class="highlight-link" style="float:left; width: 85%;">'.limit_title($news['title'],50).'</a>';
        $array_count[$title_sb]=$news['count'];
      }
      if(isset($array_count))
      {

        arsort($array_count); //sorted before display

        foreach ($array_count as $title_sb => $count_sb) {
          # code...
          echo($title_sb." ".'<p style="float:left; width: 15%;">'.$count_sb.'</p>');
        }
      }
      
    }
    else 
    {
      echo('<a href="" class="highlight-link" style="float:left; width: 90%;"> Không có bài đăng tồn tại </a>');
    }
    ?>

  </div>
</div>

<a class="text-center text-uppercase nav-link css-sendFastJobs m-2" id="sendFastJobs" href="/viec-lam-ngay" >
<strong> Đăng tuyển ngay </strong>
<i class="fa fa-bolt" style="padding-left: 10px;" aria-hidden="true"></i></a>

