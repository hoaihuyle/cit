<?php 
include('admin/inc/database.php');
include('includes/layout_header.php');

$user_id =null;
if(isset($_GET["user_id"])){
  $user_id=$_GET['user_id'];
}
// _debug($user_id);
$userInfo = $db->fetchID("users",$user_id);

//Check role access
check_loginbySession($userInfo['oauth_uid']);

if(!isset($userInfo['id_app'])) header('Location: user/'.$user_id);
$appInfo = $db->fetchID("applicant", $userInfo['id_app']);

// var_dump($userInfo['id_app']);
// echo "<pre>";
// var_dump($appInfo);
// echo "</pre>";
// die();

if($_SERVER['REQUEST_METHOD']=='POST'){
  echo "<pre>";
  var_dump($_POST);
  echo "</pre>";
  die();
	$error = [];//khởi tạo mảng lỗi(bắt lỗi)
	$data=[
          "price" => postInput("product"),
          "phone" => postInput("phone"),
          "uid" => $user_id,
  ];

  
	if(postInput('product')==''){
        $error['product']="Mời bạn chọn danh mục";
    }
  if(postInput("product")=='70000'){
      	$data["uid"] = '7';
      }
      else if(postInput("product")=='300000')
      {
      	$data["uid"] = '30';
      }
      if(postInput("product")=='1000000')
      {
      	$data["uid"] = '100';
      }

  if(empty($error)){
		$_SESSION['data'] = $data;
		header('Location:transaction?user_id='.$userInfo['id']);
					
		}
}

?>
<style type="text/css">
  section.pricing {
    background: rgba(0,123,255,0.05);
    padding-bottom: 50px;
  }

  .pricing .card {
    border: none;
    border-radius: 1rem;
    transition: all 0.2s;
    box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
  }

  .pricing hr {
    margin: 1.5rem 0;
  }

  .pricing .card-title {
    margin: 0.5rem 0;
    font-size: 0.9rem;
    letter-spacing: .1rem;
    font-weight: bold;
  }

  .pricing .card-price {
    font-size: 3rem;
    margin: 0;
  }

  .pricing .card-price .period {
    font-size: 0.8rem;
  }

  .pricing ul li {
    margin-bottom: 1rem;
  }

  .pricing .text-muted {
    opacity: 0.7;
  }

  .pricing .btn {
    font-size: 80%;
    border-radius: 5rem;
    letter-spacing: .1rem;
    font-weight: bold;
    padding: 1rem;
    opacity: 0.7;
    transition: all 0.2s;
  }

  /* Hover Effects on Card */

  @media (min-width: 992px) {
    .pricing .card:hover {
      margin-top: -.25rem;
      margin-bottom: .25rem;
      box-shadow: 0 0.5rem 1rem 0 #0093ff;
    }
    .pricing .card:hover .btn {
      opacity: 1;
    }
  }
/*Style amount posts in package basic--- 0*/
  .number-input input[type="number"] {
    -webkit-appearance: textfield;
    -moz-appearance: textfield;
    appearance: textfield;
  }

  .number-input input[type=number]::-webkit-inner-spin-button,
  .number-input input[type=number]::-webkit-outer-spin-button {
    -webkit-appearance: none;
  }

  /*.number-input {
    margin-bottom: 3rem;
  }
  */
  .post-ammount div, .post-ammount span{
    float: left;
  }
  .post-ammount span{
    padding: 5px;
  }
  .number-input button {
    -webkit-appearance: none;
    background-color: transparent;
    border: none;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    margin: 0;
    position: relative;
  }

  .number-input button:before,
  .number-input button:after {
    display: inline-block;
    position: absolute;
    content: '';
    height: 2px;
    transform: translate(-50%, -50%);
  }

  .number-input button.plus:after {
    transform: translate(-50%, -50%) rotate(90deg);
  }

  .number-input input[type=number] {
    text-align: center;
  }

  .number-input.number-input {
    border: 1px solid #ced4da;
    width: 10rem;
    border-radius: .25rem;
  }

  .number-input.number-input button {
    width: 2.6rem;
    height: .7rem;
  }

  .number-input.number-input button.minus {
    padding-left: 10px;
  }

  .number-input.number-input button:before,
  .number-input.number-input button:after {
    width: .7rem;
    background-color: #495057;
  }

  .number-input.number-input input[type=number] {
    max-width: 4rem;
    padding: .5rem;
    border: 1px solid #ced4da;
    border-width: 0 1px;
    font-size: 1rem;
    height: 2rem;
    color: #495057;
  }

  @media not all and (min-resolution:.001dpcm) {
    @supports (-webkit-appearance: none) and (stroke-color:transparent) {

      .number-input.def-number-input.safari_only button:before,
      .number-input.def-number-input.safari_only button:after {
        margin-top: -.3rem;
      }
    }
  }
/*End number post*/


</style>

<div class="sub-panel">
  <div class="container">
    <div class="sub-panel-title">
      <div class="sp-left">
        <span>Thanh toán</span>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index"><i class="fas fa-home"></i> Trang Chủ</a></li>
            <li class="breadcrumb-item active" aria-current="page">Thanh toán</li>
          </ol>
        </nav>
      </div>
      <div class="sp-right text-center">
        <img src="lib/img/about-img-01.svg" class="img-fluid img-about">
      </div>
    </div>
  </div>
</div>

<section class="pricing py-5 padding-space" id="about">
  <div class="container">
    <div class="row">
      <!-- Free Tier -->
      <div class="col-lg-4">
        <div class="card mb-5 mb-lg-0">
          <div class="card-body">
            <h5 class="card-title text-muted text-uppercase text-center">Cơ bản</h5>
            <h6 class="card-price text-center">30,000VNĐ<span class="period">/1 bài</span></h6>
            <hr style="border:3px solid #0093ff">
            <ul class="fa-ul">
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Chỉ cho một tài khoản</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Cho phép đăng tin trong số gói đã đăng ký</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Lọc ứng viên</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Nhận thông báo khi có ứng viên ứng tuyển vào bài viết</li>
              <li class="text-muted"><span class="fa-li"><i class="fas fa-times"></i></span>Không hỗ trợ Video</li>
              <li class="text-muted"><span class="fa-li"><i class="fas fa-times"></i></span>Không hỗ trợ hình ảnh</li>
              <li class="text-muted"><span class="fa-li"><i class="fas fa-times"></i></span>Không hỗ trợ đăng FanPage FaceBook</li>
              <li class="text-muted"><span class="fa-li"><i class="fas fa-times"></i></span>Không hỗ trợ Ads</li>
              <li  class="text-muted"><span class="fa-li"><i class="fas fa-times"></i></span>Hỗ trợ quản lý dự án (giá thêm)</li>
              <li  class="text-muted"><span class="fa-li"><i class="fas fa-times"></i></span>Hỗ trợ truyền (giá thêm)</li>
            </ul>
            <button type="button" data-id="0" value="1000000" data-toggle="modal" data-target="#modalPaymentForm" class="btnModalPayment btn btn-block btn-primary text-uppercase">Đăng ký ngay</button>
          </div>
        </div>
      </div>
      <!-- Plus Tier -->
      <div class="col-lg-4">
        <div class="card mb-5 mb-lg-0">
          <div class="card-body">
            <h5 class="card-title text-muted text-uppercase text-center">Doanh nghiệp thường</h5>
            <h6 class="card-price text-center">350,000VNĐ<span class="period">/th</span></h6>
            <hr style="border:3px solid #0093ff">
            <ul class="fa-ul">
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Chỉ cho một tài khoản</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Cho phép đăng tin trong số gói đã đăng ký</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Lọc ứng viên</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Nhận thông báo khi có ứng viên ứng tuyển vào bài viết</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Hỗ trợ Video</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Hỗ trợ thiết kế hình ảnh</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Hỗ trợ đăng FanPage FaceBook</li>
              <li class="text-muted"><span class="fa-li"><i class="fas fa-times"></i></span>Hỗ trợ Ads</li>
              <li class="text-muted"><span class="fa-li"><i class="fas fa-times"></i></span>Hỗ trợ quản lý dự án (giá thêm)</li>
              <li  class="text-muted"><span class="fa-li"><i class="fas fa-times"></i></span>Hỗ trợ truyền (giá thêm)</li>
            </ul>
            <!-- <a href="#" class="btn btn-block btn-primary text-uppercase">Button</a> -->
            <button type="button" data-id="1" value="1000000" data-toggle="modal" data-target="#modalPaymentForm" class="btnModalPayment btn btn-block btn-primary text-uppercase">Đăng ký ngay</button>
          </div>
        </div>
      </div>
      <!-- Pro Tier -->
      <div class="col-lg-4">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title text-muted text-uppercase text-center">Doanh nghiệp VIP</h5>
            <h6 class="card-price text-center">1,5 triệu VNĐ<span class="period">/th</span></h6>
            <hr style="border:3px solid #0093ff">
            <ul class="fa-ul">
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Chỉ cho một tài khoản</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Cho phép đăng tin trong số gói đã đăng ký</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Lọc ứng viên</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Nhận thông báo khi có ứng viên ứng tuyển vào bài viết</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Hỗ trợ Video</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Hỗ trợ thiết kế hình ảnh</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Hỗ trợ đăng FanPage FaceBook</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Hỗ trợ Ads</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Hỗ trợ quản lý dự án (giá thêm)</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Hỗ trợ truyền (giá thêm)</li>
            </ul>
            <button type="button" data-id="2" value="1000000" data-toggle="modal" data-target="#modalPaymentForm" class="btnModalPayment btn btn-block btn-primary text-uppercase">Đăng ký ngay</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<form action="https://www.nganluong.vn/button_payment.php" method="POST" target="_blank">
<!-- <form  method="POST" > -->
<!-- Modal payment -->
<div id="modalPaymentForm" class="modal fade" role="dialog" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" >
  <div class="modal-dialog modal-lg">

    <div class="modal-content">
      <div class="modal-header">
        <p class="font-weight-bold text-justify">Thông tin thanh toán của bạn</p>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      
      <div class="modal-body">
       
          <input type= hidden name="receiver" value = "vieclamtheogiocit@gmail.com" />
          <input type="hidden" name="product_name" value="<?php echo'product_name'?>">
          <!-- <input type= hidden name="price" value = " <?php echo '10000' ?> "/> -->
          <input type= hidden name="return_url" value = "kt-don-hang.php"/>
          <input type= hidden name="comments" value = "<?php echo 'comments' ?>" />
          <div class="col-sm-12" style="float: left; margin: 10 0 10 10; " >
            <div class="col-md-3" style="float: left" >
              <strong class="text-danger">* </strong><label>Họ và tên: </label>
            </div>
            <div class="col-md-9" style="float: left;">

              <input required="" class="form-control" value="<?php echo $userInfo['fullname'] ?>" type="text" name="Fullname1">
            </div>
          </div>

          <div class="col-sm-12" style="float: left;  margin: 0 0 10 10" >
            <div class="col-md-3" style="float: left" >
              <strong class="text-danger">* </strong><label>Email: </label>
            </div>
            <div class="col-md-9" style="float: left;">
              <input class="form-control" required="" value="<?php echo $userInfo['email'] ?> " type="text" name="Email1">
            </div>
          </div>

          <div class="col-sm-12" style="float: left;  margin: 0 0 10 10" >
            <div class="col-md-3" style="float: left" >
              <strong class="text-danger">* </strong><label> Số điện thoại: </label>
            </div>
            <div class="col-md-9" style="float: left;">
              <input  class="form-control" value="<?php echo isset($appInfo['phone'])?$appInfo['phone']:''; ?>" type="text" name="Phone1" >
            </div>
          </div>

          <div class="col-sm-12" style="float: left;  margin: 0 0 10 10" >
            <div class="col-md-3" style="float: left" >
              <strong class="text-danger">* </strong><label>Số lượng: </label>
            </div>
            <div class="col-md-9" style="float: left;">
              <div class="input-group" id="packageSelectBox">
               
              </div>

              <?php if(isset($error['product'])): ?>
                <p class="text-danger"><?php echo $error['product'];?></p>
              <?php endif?>
            </div>
          </div>

          <div class="col-sm-12" style="float: left;  margin: 0 0 10 10" >
            <div class="col-md-3" style="float: left" >
              <strong class="text-danger">* </strong><label>Thành tiền: </label>
            </div>
            <div class="col-md-9" style="float: left;">
              <!-- <input disabled="" value="532000" id="result1" placeholder="0 đồng" class="form-control" type="text" name="price" > -->
              <div class="input-group mb-3">           
                <input readonly class="form-control" type="number" id="price" name="price" step="1000" min="10000" placeholder="" value="">
                <div class="input-group-append">
                  <span class="input-group-text">VNĐ</span>
                </div>
            </div>
            </div>                  
          </div>
       
      </div>
      
      <div class="modal-footer">
        <input type="hidden" name="currency_code" value="VND">
        <!-- <input value="Hủy" class="btn btn-danger cancel-edit-form" onclick="window.location.href='index'">  -->
        <a type="button" class="btn btn-danger cancel-edit-form waves-effect" data-dismiss="modal">Hủy </a>
        <input style="margin-left: 7px;" name="submit"  class="btn btn-success" type="submit" value="Thanh toán">        
      </div>
    </div>
  </div>
</div>
</form>
<!-- End modal payment -->

<?php include('includes/layout_footer.php');?>

<!-- Script of thanh-toan: handle button -->
<script type="text/javascript">
  //Catch event when click button to open modal #modalPaymentForm
  $(document).on("click", ".btnModalPayment", function (e) {
    // Get data from modal
    var btnId = $(this).data('id');
    // console.log(btnId);
    var profileHTML='';
    if(btnId==0){
        $('#price').val(30000);
        profileHTML+='<div class="post-ammount">';
        profileHTML+='<div class="def-number-input number-input safari_only">';
        profileHTML+='<button type="button" id="btnMinus" class="minus"></button>';
        profileHTML+='<input id="numsPostPayment" class="quantity" min="0" name="quantity" value="1" type="number">';
        profileHTML+='<button type="button" id="btnPlus" class="plus"></button>';
        profileHTML+='</div>';
        profileHTML+='<span>bài đăng </span></div>'

    }
    else{
      if (btnId==1) {
        $('#price').val(350000);
        profileHTML +='<select name="product" class="custom-select" id="enterprise" name="product" >';
        profileHTML+='<option value="350000" selected="selected" >Gói 1 tháng (gói Cơ bản)</option>';
        profileHTML+=' <option value="499000">Gói 2 tháng (gói Đồng)</option>';
        profileHTML+='<option value="949000">Gói 4 tháng (gói Bạc)</option>';
        profileHTML+='<option value="1399000">Gói 6 tháng (gói Vàng)</option>';
        profileHTML+='</select>';
      }
      else{
        $('#price').val(1500000);
        profileHTML+=' <input readonly class="form-control" value="1" type="text" id="numsPostPayment" placeholder="1 hợp đồng ký kết">'
      } 
    }
    $('#packageSelectBox').html(profileHTML);
  });
 
</script>
<!-- //End script of thanh-toan -->
<script type="text/javascript">
//Option 1 Base Package
var coins =1;
$(document).on('input', '#numsPostPayment', function(){
  coins = $("#numsPostPayment").val();
  $('#price').val(coins*30000);
});
$(document).on("click", "#btnMinus", function(){
  this.parentNode.querySelector('input[type=number]').stepDown();
  if (coins>=1)
  coins--;
  $('#price').val(coins*30000);
});

$(document).on("click", "#btnPlus", function(){
  this.parentNode.querySelector('input[type=number]').stepUp()
  coins++;
  $('#price').val(coins*30000);
}); 

//Option 2 Enterprise Package
$(document).on('change', '#enterprise', function(){
  var selectedValue = $(this).children("option:selected").val();
   $('#price').val(selectedValue);
});
</script>