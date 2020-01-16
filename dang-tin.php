<?php 
 
// include('admin/inc/database.php');

include('Controller/AddDangtin.php');
$Cty = $db->fetchAll('companies');
$tinhthanh = $db->fetchAll('province');
$congviec = $db->fetchAll('jobs');
$loailuong = $db->fetchAll('typesalary');

?>

<div class="sub-panel">
  <div class="container">
    <div class="sub-panel-title">
      <div class="sp-left">
        <span>đăng tuyển việc</span>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/index"><i class="fas fa-home"></i> Trang Chủ</a></li>
            <li class="breadcrumb-item active" aria-current="page">Đăng tuyển việc</li>
          </ol>
        </nav>
      </div>
      <div class="sp-right text-center">
        <img src="/lib/img/job-upload-01.png" class="img-fluid">
      </div>
    </div>
  </div>
</div>

<section id="job-DT">
  <div class="container">
    <div class="row">
      <div class="col-md-12 mx-auto job-post-wrap">
        <form method="POST" enctype="multipart/form-data">
          <div class="row">
          <div class="col-md-4 left">
             <a href="#">
                <img src="/lib/img/logo-transparent.png" alt="">
             </a>
          </div>
          <div class="col-md-8 right">
          <h4 style="text-align: center">Vui lòng điền thông tin công việc bạn cần đăng tuyển</h4>
            <div id="box-contain">
            
            <?php
            if(isset($message))
            {
                echo $message;
            }
            ?>
            <!-- Tiêu đề -->
            <div class="form-group">
                <label>Tên bài viết đăng tuyển <strong class="text-danger">*</strong></label>
                <input type="text" class="form-control" name="title" placeholder="Nhập tên bài viết đăng tuyển" value="<?php echo isset($title)?$title:''?>">
                <?php
                if(isset($errors) && in_array('title', $errors)){
                echo "<p class='required'>Thông tin về tiêu đề công việc bạn không được để trống</p>";
                }
                ?>
            </div>
            <!-- End tiêu đề -->
            <div class="form-group">
                    <label>Hạn cuối ứng tuyển <strong class="text-danger">*</strong></label>
                        <?php 
                        $now = new DateTime('tomorrow');
                        //  Input chỉ ăn Y-m-d
                        $etime= $now->format('d-m-Y'); 
                        ?>
                        <div class="input-group date" id="endFastJobs" data-target-input="nearest">
                        <input type="text" class="form-control datetimepicker-input" data-toggle="datetimepicker" data-target="#endFastJobs" name="etime" placeholder="<?php echo($etime); ?>" value="<?php echo(isset($etime)?$etime:''); ?>"/>
                        <div class="input-group-append" data-target="#endFastJobs" data-toggle="datetimepicker">
                            <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                            </div>
                        </div>
                        <?php
                        if(isset($errors) && in_array('etime', $errors)){
                        echo "<p class='required'>Thông tin thời gian sai hoặc để trống!</p>";
                        }
                    ?>
                    </div>
               </div>
            <!-- End địa chỉ-->
            <!-- Hình thức công việc -->
            <div class="form-group row">
                <div class="col-sm-8">
                    <label style="width: 100%">Hình thức</label>
                       <div class="mater-ht">
                        <div class="icheck-material-indigo" id="lbfull">
                                <input type="checkbox" checked id="chb1" name="fTime" />
                                <label for="chb1">Full Time</label>
                            </div>
                            <div class="icheck-material-indigo" id="lbpart">
                                <input type="checkbox" id="chb2" name="pTime" />
                                <label for="chb2">Part Time</label>
                            </div>
                            <div class="icheck-material-indigo" id="lbone">
                                <input type="checkbox" id="chb3" name="oTime" />
                                <label for="chb3">One Time</label>
                            </div>  
                       </div>
                </div>
            </div>
            <!-- end hình thức công việc  -->

            <div class="form-group" id="fulltime">
                        <div class="title_work row">
                            <div class="col-md-5">
                                <label>Công việc Fulltime</label>
                            </div>
                            <div class="col-md-5">
                                <label>Lựa chọn mức lương</label>
                            </div>
                        </div>                 
                        <div class="ct_work">
                            <div class="ct_father row">
                            <div class="col-md-5">
                                <div class="Work_ip">
                                <select class="form-control js-example-tags" name="nameWorkfulltime">
                                    <option value ="" selected >Chọn công việc của bạn</option>
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
                               
                            </div>  
                            <div class="col-md-6">
                                <div class="cate_per">
                                    <input type="number" name="priceFull" class="form-control" style="width: 50%" placeholder="100,000">
                                    <select class="form-control" style="width: 45%" name="TypePrfulltime" id="">
                                            <?php
                                                foreach($loailuong as $TypeL) { ?>
                                                <option value="<?php echo $TypeL['id'] ?>"><?php echo $TypeL['name'] ?></option>            
                                                <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-1 del_work">
                                <a>
                                    <img src="/admin/images/close.svg" alt="">
                                </a>
                            </div>
                           </div> 

                           
                        </div>
                    <div class="add_work">
                        <a id="add_btn_work">
                            <img src="/admin/images/plus.svg" alt="">
                        </a>
                        <label for="add_btn_work">Thêm</label>
                    </div>
                    
            </div>

            <!-- parttime -->
            <div class="form-group" id="parttime" style="display: none">
                        <div class="title_work row">
                            <div class="col-md-5">
                                <label>Công việc Parttime</label>
                            </div>
                            <div class="col-md-5">
                                <label>Lựa chọn mức lương</label>
                            </div>
                        </div>
                        <div class="ct_work">
                            <div class="ct_father row">
                            <div class="col-md-5">
                                <div class="Work_ip">
                                <select class="form-control js-example-tags" name="nameWorkparttime">
                                    <option value ="" selected >Chọn công việc của bạn</option>
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
                               
                            </div>
                            <div class="col-md-6">
                            <div class="cate_per">
                                    <input type="number" name="pricePart" class="form-control" style="width: 50%" placeholder="100,000">
                                    <select class="form-control" style="width: 45%" name="TypePrparttime" id="">
                                            <?php
                                                foreach($loailuong as $TypeL) { ?>
                                                <option value="<?php echo $TypeL['id'] ?>"><?php echo $TypeL['name'] ?></option>            
                                                <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-1 del_work">
                                <a>
                                    <img src="/admin/images/close.svg" alt="">
                                </a>
                            </div>
                           </div> 
                        </div>
                    <div class="add_work">
                        <a id="add_btn_work">
                            <img src="/admin/images/plus.svg" alt="">
                        </a>
                        <label for="add_btn_work">Thêm</label>
                    </div>
            </div>
         
            <!-- end parttime -->

            <!-- one time -->
            <div class="form-group" id="onetime" style="display: none">
                        <div class="title_work row">
                            <div class="col-md-5">
                                <label>Công việc Parttime</label>
                            </div>
                            <div class="col-md-5">
                                <label>Lựa chọn mức lương</label>
                            </div>
                        </div>
                        <div class="ct_work">
                            <div class="ct_father row">
                            <div class="col-md-5">
                                <div class="Work_ip">
                                <select class="form-control js-example-tags" name="nameWorkonetime">
                                    <option value ="" selected >Chọn công việc của bạn</option>
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
                               
                            </div> 
                            <div class="col-md-6">
                                <div class="cate_per">
                                    <input type="number" name="priceOne" class="form-control" style="width: 50%" placeholder="100,000">
                                    <select class="form-control" style="width: 45%" name="TypePronetime" id="">
                                            <?php
                                                foreach($loailuong as $TypeL) { ?>
                                                <option value="<?php echo $TypeL['id'] ?>"><?php echo $TypeL['name'] ?></option>            
                                                <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-1 del_work">
                                <a>
                                    <img src="/admin/images/close.svg" alt="">
                                </a>
                            </div>
                           </div> 
                        </div>
                    <div class="add_work">
                        <a id="add_btn_work">
                            <img src="/admin/images/plus.svg" alt="">
                        </a>
                        <label for="add_btn_work">Thêm</label>
                    </div>
            </div>
            <!-- end onetime -->


            <!-- Thông tin liên hệ -->
            <div class="form-group">
                <label>Thông tin cho người ứng tuyển liên hệ với bạn <strong class="text-danger">*</strong></label>
                <textarea class="form-control" name="infoWork" id="" cols="30" rows="3" placeholder="Số điện thoai/ Thông tin liên hệ"
                value="<?php if(isset($_POST['contacts'])){echo $_POST['contacts'];} ?>"
                ></textarea>
                <?php
                if(isset($errors) && in_array('contacts', $errors)){
                echo "<p class='required'>Thông tin liên hệ không Được Để Trống!</p>";
                }
                ?>
            </div>
            <!-- Thông tin liên hệ -->

            <!-- Chi tiết bài đăng -->
            <div class="form-group">
                <label>Yêu cầu Chi Tiết <strong class="text-danger">*</strong></label>
                <textarea id="noidung" rows="5" name="description" class="form-control"></textarea>
                <?php
                if(isset($errors) && in_array('description', $errors))
                {
                echo "<p class='required'>Thông Tin Chi Tiết Không Được Để Trống!</p>";
                }
                ?>
            </div>
            <!-- End chi tiết bài đăng -->

            <!-- Ảnh địa diện -->
            <div class="form-group">
                <label>Chọn Ảnh Đại Diện Của Bài Viết</label>
                <input type="file" name="img">
            </div>
            <!-- End ảnh đại diện -->

            <div class="text-right">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Xem mẫu bài đăng</button>
                
                <button type="submit" class="btn btn-orange">ĐĂNG TUYỂN VIỆC</button>
            </div>
            </div>
          </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</section>
<!-- endsection -->
<?php
include('includes/layout_footer.php');
?>

