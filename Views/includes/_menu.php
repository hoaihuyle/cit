
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
            foreach($menu as $info){
                if($info['child']==null){
                if($info['id']==51){
            ?>
               <li class="nav-item bg-gradient-primary">
                    <a class="nav-link css-sendFastJobs" id="sendFastJobs" href="/viec-lam-ngay" ><?php echo($info['name']); ?><i class="fa fa-bolt" style="padding-left: 10px;" aria-hidden="true"></i></a>
                </li>
            <?php
                }//end dang-tin
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
                    }//end dang-tin
                    else{
                ?>
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo('/'.($info['slug'])); ?>"><?php echo($info['name']); ?></a>
                    </li>
                <?php        
                    }
                    }
                }//menu have child 
                else{
            ?>
            <li class="nav-item dropdown dropdown-login">
                <a class="nav-link dropdown-toggle" href="<?php echo($info['slug']) ?>" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <?php echo($info['name']); ?>
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <?php
                    foreach($info['child'] as $x){
                        // if($x['id']=='50') $add='menustyle';
		                echo" <a class='dropdown-item' href='/".$x['slug']."'>".$x['name']."</a>"; 
                    }  
                    ?>
                </div>
            </li>
            <?php        
                }
            }//End foreach 
            ?>
        </ul>

        <ul class="navbar-nav ml-auto">
            <li class="nav-item ">
                <div class="thumbnail" ></div>
                <div class="overlay-thumb">
                    <img src="/lib/img/load-icon.svg" class="img-fluid">
                </div>
            </li>
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
</nav>