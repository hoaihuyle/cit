<div class="modal fade" id="modalLogin" role="dialog" tabindex="-1"
role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <b style="color: #007bff; font-size: 18px;"> GIỚI THIỆU VIỆC LÀM 
        </b>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <div class="modal-body">
        <!-- Tab login/signup -->
        <!--<ul class="nav nav-tabs border-0" id="myTab" role="tablist">
          <li class="nav-item"><a class="nav-link active"
            style="font-size: 18px" id="signIn-tab" data-toggle="tab"
            href="#signInForm" role="tab" aria-controls="home"
            aria-selected="true">Đăng nhập</a></li>
          <li class="nav-item"><a class="nav-link" id="signUp-tab"
            data-toggle="tab" href="#signUpForm" role="tab"
            aria-controls="profile" aria-selected="false"
            style="font-size: 18px">Đăng ký</a></li>
        </ul>

        <div class="tab-content" id="myTabContent">
          <div class="tab-pane fade show active" id="signInForm"
          role="tabpanel" aria-labelledby="signIn-tab">
            <form role="form" name="loginform" id="loginFormHandle" method="POST" action="user/userSignIn">
              <div class="form-group">
                <label for="usrname"> <i class="fas fa-envelope"> </i>
                  Email
                </label> <input type="email" name="EmailLog" class="form-control"
                id="EmailLog" placeholder="Nhập email" required>
                <p class="text-danger"></p>
              </div>
              <div class="form-group">
                <label for="psw"><i class="fas fa-key"></i> Mật khẩu</label> <input
                type="password" name="passLog" class="form-control"
                id="passLog" placeholder="Nhập mật khẩu" required>
                <p class="text-danger"></p>
              </div>
              <button id="btnLogin" type="submit"
              class="btn btn-primary btn-lg btn-block">Đăng nhập</button>
            </form> -->
            <!-- // Quên mật khẩu  -->
           <!--  <div class="float-right" style=" margin-bottom: 10px; margin-top: -10px">
              <a href="" data-toggle="modal" data-target="#myForgotPass"><i
                style="text-align: center;"></i>Quên mật khẩu </a>
              <div class="modal fade" id="myForgotPass" role="dialog">
                <div class="modal-dialog"> Modal content
                  <div class="modal-content">
                    <div class="modal-header">
                      <div><h3>Lấy lại mật khẩu</h3></div>
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <form role="form" name="forgotPass" method="POST">
                      <div class="modal-body">
                        <label for="psw"><i class="fas fa-envelope"></i>
                        Nhập địa chỉ email của bạn</label> <input type="email"
                        name="emailfor" class="form-control">
                        <p class="text-danger"></p>
                      </div>
                      <div class="modal-footer"><button type="submit" class="btn btn-primary"style="width: 70px">Gửi</button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div> -->
            <!-- End Quên MK -->
            <!-- Facebook and Google are fixed -->
            <a class="dropdown-item btn-login-gg" id="loginGoogle">
              <div class="icon-login">
                <i class="fab fa-google-plus-g"></i>
              </div>
              <div class="text-login">
                <span> Đăng nhập với tài khoản Google </span>
              </div>
            </a> 
            <a class="dropdown-item btn-login-fb" id="loginfacebook">
              <div class="icon-login">
                <i class="fab fa-facebook-f"></i>
              </div>
              <div class="text-login">
                <span> Đăng nhập với tài khoản Facebook </span>
              </div>
            </a>
          </div>

          <!-- <div class="tab-pane fade" id="signUpForm" role="tabpanel" aria-labelledby="signUp-tab" style="padding: 0px 15px 15px;">
            <form role="form" name="signupform" id="signUpFormHandle" method="POST" action="user/userSignUp">
              <div class="form-group">
                <label for="usrname"><i class="fas fa-user"></i> Tên
                đăng nhập</label> <input type="text" name="fullname"
                class="form-control" id="SUser"
                placeholder="Nhập tên đăng nhập" required>
                <p class="text-danger"></p>
              </div>

              <div class="form-group">
                <label for="psw"><i class="fas fa-envelope"></i> Email <span
                  id='messageEmailSubmitForm'></span></label> <input type="email"
                  name="email" class="form-control" id="email" minlength="5"
                  placeholder="Nhập Email" pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}"
                  title="Hãy tuân theo định dạng email @gmail.com" required>
                  <span id="user-result"></span>
                  <p class="text-danger"></p>
              </div>

              <div class="form-group" style="position: relative;">
                <label for="psw"><i class="fas fa-key"></i> Mật khẩu</label> <input
                type="password" class="form-control" id="DK_password"
                placeholder="Nhập mật khẩu" name="DK_password"
                pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                title="Hãy tuân theo định dạng đặt passwork" required> <p class="text-danger"></p>
                <div id="messageSubmitForm">
                  <h3>Mật khẩu phải theo định dạng</h3>
                  <p id="letter" class="invalid">
                    Ít nhất một kí tự<b> thường</b>
                  </p>
                  <p id="capital" class="invalid">
                    Ít nhất một kí tự <b>viết hoa</b>
                  </p>
                  <p id="number" class="invalid">
                    Ít nhất <b>một chữ số</b>
                  </p>
                  <p id="length" class="invalid">
                    Ít nhất <b>8 kí tự</b>
                  </p>
                </div>
              </div>

              <div class="form-group">
                <label for="psw"><i class="fas fa-key"></i> Xác nhận lại
                  mật khẩu <span id='messagePassSubmitForm'></span></label> <input
                  type="password" name="Re_SPassword" class="form-control"
                  id="Re_SPassword" placeholder="Nhập lại mật khẩu">
              </div>

              <div class="form-row">
                <div class="form-group col-md-6">
                  <div class="checkbox"> <label><input type="checkbox" value="" onclick="showPassWord()"> Hiển thị mật khẩu </label></div>
                </div>

                <div class="form-group col-md-6">
                  <div class="checkbox"> <label><input type="checkbox" value="" checked> Ghi nhớ mật khẩu </label></div>
                </div>
              </div>
              <button id="btnSignUp" type="submit"
              class="btn btn-primary btn-lg btn-block">Đăng ký</button>
            </form>
          </div> -->
        </div>

      </div>
    </div>
    <!-- End Modal content-->
  </div>
</div>



<!-- Bỏ(Làm sau) Modal Rating modalRating -->
  <div class="modal fade right" id="modalRating" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true" data-backdrop="false">
  <div class="modal-dialog modal-full-height modal-right modal-notify modal-info" role="document">
    <div class="modal-content">
      <!--Header-->
      <div class="modal-header d-flex justify-content-center bg-primary text-white font-weight-bolder text-uppercase">
        <p class="heading lead">Phản hồi
        </p>

        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true" class="white-text">×</span>
        </button>
      </div>

      <!--Body-->
      <div class="modal-body">
        <div class="text-center">
          <i class="far fa-file-alt fa-4x mb-3 animated rotateIn text-primary"></i>
          <!--   <p>
              <strong>Đánh giá của bạn về công việc vừa qua</strong>
            </p>
            <p>Bạn nghĩ gì về công việc bạn vừa được thuê? 
              <strong>Xin hãy cho chúng tôi ý kiến cá nhân của bạn.</strong>
            </p> -->
          </div>
          <hr>
          <!-- Radio -->
          <p class="text-center">
            Bạn nghĩ gì về công việc bạn vừa được thuê ?<br>
            <strong>Hãy đánh giá công việc bạn vừa được cung cấp</strong>
          </p>
          <div id="modalRateId" class="modal-rating text-center">
            <span class="fa fa-star" data-toggle="tooltip" title="Rất tệ" data-rating="1"></span>
            <span class="fa fa-star" data-toggle="tooltip" title="Kém" data-rating="2"></span>
            <span class="fa fa-star" data-toggle="tooltip" title="Bình thường" data-rating="3"></span>
            <span class="fa fa-star" data-toggle="tooltip" title="Tốt" data-rating="4"></span>
            <span class="fa fa-star" data-toggle="tooltip" title="Rất tốt" data-rating="5"></span>
            <!-- <input type="hidden" name="whatever3" class="rating-value" value="2.1"> -->
          </div>
          <!-- Radio -->

          <p class="text-center">
            <strong>Bạn có ý kiến để cải thiện ?</strong>
          </p>
          <!--Basic textarea-->
          <div class="md-form">
            <label for="form79textarea">Hãy đóng góp những ý kiến của bạn tại đây</label>
            <textarea type="text" id="form79textarea" class="md-textarea form-control" rows="3"></textarea>
          </div>

        </div>

        <!--Footer-->
        <div class="modal-footer justify-content-center text-primary">
          <a type="button" class="btn btn-info waves-effect waves-primary text-light">Gởi đánh giá
            <i class="fa fa-paper-plane ml-1"></i>
          </a>
          <a type="button" class="btn btn-outline-light waves-effect" data-dismiss="modal">Hủy đánh giá</a>
        </div>
      </div>
    </div>
  </div>
<!--//Modal Rating modalRating -->

<!--Modal: modalPush when user action alick to button Ứng tuyển-->
  <div class="modal fade" id="modalApplicaNoti" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-notify modal-info" role="document">
      <!--Content-->
      <div class="modal-content text-center">
        <!--Header-->

        <!--Body-->
        <div id="textContacts"> </div>
        <!-- /End Body -->
      </div>
      <!--/.Content-->
    </div>
  </div>
<!--//Modal modalPush--> 
<!-- Modal choice Account -->
  <div id="modalUserInfo" class="modal fade" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog modal-lg modal-notify modal-info" >

      <div class="vertical-alignment-helper">
        <div class="modal-dialog vertical-align-center">
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Chọn loại tài khoản</h5>
              <div id="modalUserInfo-messenger" class="text-danger" style="display: none;"> Xin chọn lại.</div>
                <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button> -->
            </div>
            <div class="modal-body" style="">
              <div class="row">
                <div class="col-sm-6 col-xs-12">
                  <div class="wrap-uif">
                    <div class="img-uif">
                      <img class="img-fluid" src="/lib/img/applicant-img.png">
                    </div>
                      <?php 
                      // if(isset($_SESSION['user'])){
                      //   $userInfo=display_users_infoBylist('oauth_uid',$_SESSION['user']['id']);
                      // }
                      ?>
                    <a onclick="updateUserInfo(1);" type="button" class="btn btn-primary btn-lg btn-block">Người ứng tuyển</a>
                    <div class="guide-user">
                      <i class="fas fa-bookmark"></i>
                      <span>Quy định của người ứng tuyển</span>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-xs-12">
                  <div class="wrap-uif">
                    <div class="img-uif">
                      <img class="img-fluid" src="/lib/img/employee-img.png">
                    </div>
                    <a onclick="updateUserInfo(2);" type="button" class="btn btn-warning btn-lg btn-block" >Người đăng tin</a>
                    <div class="guide-user">
                      <i class="fas fa-bookmark"></i>
                      <span>Quy định của người đăng tin tuyển</span>
                    </div>
                  </div>
                </div>
              </div> 
            </div>
          </div>
            
        </div>
      </div>

    </div>
  </div>
<!-- //Modal choice Account -->


<!-- Modal: modalPostJobs-->
  <div class="modal fade right" id="modalPostJobs" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true" data-backdrop="false">
    <div class="modal-dialog modal-side modal-bottom-right modal-notify modal-info" role="document">
      <!--Content-->
      <div class="modal-content text-center">
        <!--Header-->
        <div class="modal-header">
          <p class="heading">Đăng tin việc làm
          </p>

          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true" class="white-text">&times;</span>
          </button>
        </div>

        <!--Body-->
        <div class="modal-body">
          <div class="media">
            <img class="align-self-center mr-3" src="/lib/img/detail-user-img-01.png">
            <div class="media-body">
               <h5 class="mt-0">Có 2 cách để đăng tin trên C-IT:</h5>
              <ul class="text-justify">
                <li>Đăng tin thông qua <strong>Google Form</strong>, chúng tôi sẽ kiểm tra và đăng sau. <strong>Mọi thông báo sẽ được gởi qua email của bạn</strong>. Nên hãy chắc chắn email của bạn nhập là đúng, và kiểm tra email nhé.
                </li>
                <li>Đăng tin trên hệ thống bạn chỉ cần đăng nhập và tạo tài khoản dưới tư cách là <strong>Tài khoản đăng tin </strong>
                </li>
              </ul>
            </div>
          </div>
        </div>

        <!--Footer-->
        <!-- Modal when user clcik việc làm nhanh/ Đăng tin ngay -->
        <div class="modal-footer justify-content-center">
          <a type="button" class="btn btn-info" data-toggle="modal" data-target="#modalLogin">Đăng nhập</a>
          <a type="button" class="btn css-sendFastJobs" href="https://forms.gle/PUz22VUEYonJyQ2n6"><i class="fab fa-google"></i> Đăng tin vào Google Form</a>
        </div>
      </div>
      <!--/.Content-->
    </div>
  </div>
<!-- Modal: modalPostJobs-->

<script type="text/javascript">
var userData = null;
if (localStorage.getItem('userData') != null) userData=JSON.parse(localStorage.getItem('userData'));

//Check acount in modal choice account
  function updateUserInfo(type) { //type==1 sign Applicant ;type ==2 sign Employers 
    // var userData = <?php echo isset($userInfo)?(json_encode($userInfo[0])):'null' ?>;
    var r = confirm("Bạn có chắc chắn, Nhân OK để đống ý?");
    if (r == true) {
      if(userData == null) {
        alert('Vui lòng thử lại lần nữa');  
        window.location.reload(false);
        return;
      }
      $("#modalUserInfo").modal('hide');//Hide modal 
      $(".overlay-div").css("display", "flex");//show load
      //Case the first time sign-in
      if(userData[0].id_em == null && userData[0].id_app == null){
        signAccount(userData[0].uid, userData[0].ufullname, type);
        return;
      }//end case first time sign-in

      if(userData[0].id_em == null && userData[0].id_app !=null){ //User sign Employers
        signAccount(userData[0].uid, userData[0].ufullname,2);
        return;
      }
      else{
          alert('Tài khoản này đã được bạn đăng ký trước đó.');
          $(".overlay-div").css("display", "none");
          return;
      }
        // if(type==1){
        //   //Sign employers => account have both employers and applicant
        //   alert('Tài khoản này đã được bạn đăng ký trước đó.');
        //     $(".overlay-div").css("display", "none");
        //     return;
        // }      
    }
    else{//end case user click cancel when Option Ok - cancel
      $("#modalUserInfo-messenger").css("display", "block");
    }
  }

  function signAccount(uid, ufullname ,type){
    $.post('/user/SaveInfoU.php',{
      id:uid, name:ufullname, type:type 
    },
    function (data){ 
      if(data !=null){ //Sign success redirect to detail account
        $(".overlay-div").css("display", "none");//hide load
        localStorage.setItem('userData', data);
        window.location.href="/user/"+uid;
      }
      else{
        alert('Đăng kí không thành công');
          $("#modalUserInfo").modal('show');//show modal 
        } 
    });
  }
//END Check acount in modal choice account


// Script of list-job Application display_html_box :  pass data button onlick to modal
// Catch click event open modal applicant
  $(document).on("click", ".add-Apllica", function (e) {

    //$(this).html('<button data-toggle="tooltip" data-original-title="Bạn đã ứng tuyển bài đăng này. Thông tin liên hệ là:"type="button" class="btn btn-orange btn-bid btn-block">Đã ứng tuyển</button>');

    $(".overlay-div").css("display", "flex");
    var oauthId= null;
    if(userData!=null) var oauthId = userData[0].oauth_uid;
    // var oauthId = String('<?php echo isset($_SESSION['user'])?$_SESSION['user']['id']:'null'; ?>');
    var profileHTML ='<div class="modal-header d-flex justify-content-center bg-primary text-white font-weight-bolder text-uppercase">';
    
    profileHTML +='<p class="heading">Thông tin đăng ký</p>';
    profileHTML +='</div>';
    profileHTML +='<div class="modal-body">';//Begin <div> class='modal-body'
      
      if(oauthId!=null){
        // Get data from modal
        var newsId = $(this).data('id');

        //Get infomation in news
        $.ajax({
          type: "GET",
          url: "/news/newsData.php",
          data: {nid: newsId},
          cache: false,
          success: function(result) {
            if(result != null ){
              checkUpdateU(profileHTML, oauthId, result.contacts, result.id);
            }
            else{
              //FALSE -- Applicant failed
              alert("Ứng tuyển thất bại. Thử lại sau hoặc liên hệ với hệ thống để xử lý.")
            }
          }
        });
    } // End if
    else{
      profileHTML += '<p>Xin hãy vui lòng đăng nhập trước để có thể hoàn tất đăng ký </p>';
      profileHTML+='<i class="fas fa-bell fa-4x animated rotateIn mb-4"></i>';
      profileHTML +='<button class="btn btn-primary btn-bid btn-block" data-toggle="modal" data-target="#modalLogin">Đăng nhập</button>';
      profileHTML +='</div>'; // End <div> class='modal-body'
      $('#textContacts').html(profileHTML);
    }//End else
    $(".overlay-div").css("display", "none");
  }); 
//End event Click button

// Check when users click applicant. If has been update infomation -> false
  function checkUpdateU(profileHTML,oauthId, contacts, nid){
    $.ajax({
      type: "GET",
      url: "/user/checkInfoU.php",
      data: {oauthId: oauthId},
      cache: false,
      success: function(result) {
        if(result.error){
        //TRUE user has been update infomation -> Can applicant
        profileHTML+= '<p class="hideAnnout">Bạn có chắc chắn ứng tuyển?  </p>';
        profileHTML+= '<div class="appliSucces"><pre><p> Thông tin phỏng vấn <br> <strong>'+ contacts +'</strong></p></pre> <br> Chủ động <b> Gọi NTD </b> để có cơ hội làm việc cao nhất. ';
        profileHTML+='<i class="appliSucces fa fa-phone fa-4x animated rotateIn mb-4"></i>';
        profileHTML+='<div class="detail-content-appli"><p> Khi liên hệ nhà tuyển dụng vui lòng nói rõ tham khảo việc làm tại <b>"C-IT Việc làm theo giờ"</b> để được ưu tiên khi ứng tuyển hãy cảnh giác với bất kỳ hình thức thu phí nào từ nhà tuyển dụng, nếu có vui lòng báo lại cho website biết thông tin. </p></div>';
        profileHTML+='</div>';//Close div appliSuccess

        temModalAppli(profileHTML, result.error, result.array.uid, result.array.aid, nid, contacts);
      }
      else{
          //FALSE redirdect to cap-nhap-ho-so.php
          profileHTML += '<p>Xin hãy vui lòng điền đẩy đủ thông tin cá nhân trước khi ứng tuyển </p>';

          profileHTML +='<div>';
          profileHTML += '<p><i> Nhấn nút "Chuyển trang" để cập nhập hồ sơ </i></p>';
          profileHTML+='<i class="fas fa-bullhorn fa-4x animated rotateIn mb-4"></i>';
          profileHTML +='<div>';

          temModalAppli(profileHTML, result.error, result.array.uid);
        }  
      }//End success
    });//End ajax check
  }
// End check info user

// Template modal
  function temModalAppli(profileHTML, check, uid=null ,aid=null, nid=null, contacts=null){
  //Footer modal
  profileHTML +=' <div class="modal-footer flex-center">';
  if(check){
    contacts = contacts.replace(/(\r\n|\n|\r)/gm, "");// delete line break
    profileHTML +='<button onclick="successAppliModal('+aid+','+nid+',\''+contacts+'\')" class="hideAnnout btn btn-info waves-effect waves-light">Chắc chắn <i class="fa fa-phone" aria-hidden="true" ></i></button>';//button YES
  }
  else{
    profileHTML +='<a href="user/='+uid+'" class="btn btn-info">Chuyển trang</a>';//button YES

  }//End else
      profileHTML +='<a type="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">Đóng</a> ';//button NO
    profileHTML +='</div>';//End <div> Footer modal
  profileHTML +='</div>'; // End <div> class='modal-body'

  $('#textContacts').html(profileHTML); 
  }
// End Tem plate modal

//When user click button accept job
  function successAppliModal(aid, nid, contacts =null){
    $(".hideAnnout").css("display", "none");
    //Handler Ajax insert data in table applicant
    $.ajax({
      type: "POST",
      url: "/news/inSertAppli.php",
      data: {nid: nid, aid: aid},
      cache: false,
      success: function(result) {
        if(result.insert && result.update){
          animatSuccess(1000);
          $(".appliSucces").css("display", "block");
          // setTimeout(function(){ window.location.reload(false); }, 1000);
          $("#modalApplicaNoti").on("hide.bs.modal", function () {
            // put your default event here
            // window.location.reload(false);
            goBack() // Come back if apply job success
            // Send email
            $.ajax({
              type: "POST",
              url: "/sendemail/appliSuccess.php",
              data:{appArr: result.appArr, empArr: result.empArr, compArr: result.compArr},
              cache: false,
              success: function(result) { 
              }//End success
            });// End Ajax
          });// End modalApplicaNoti hide event
        }//End if
      },//End success
      error: function (error) {
        var r = confirm("Đăng tuyển thất bại! Nhấn OK để chat với chúng tôi, Cancel để hủy ứng tuyển");
        if (r == true) {window.open('https://www.facebook.com/viectheogiocit/inbox/', '_blank');}
        else{window.location.reload(false);}
      }
    });// End Ajax
  } 
// end accept job

//Capture event when show modalLogin ->>> Hide modalApplicaNoti 
  $('#modalLogin').on('show.bs.modal', function (e) {
    $("#modalApplicaNoti").modal("hide");
    $("#modalPostJobs").modal("hide");
  });
//End Modal: modalPush when user action alick to button Ứng tuyển 


// Check if not employers account can access viec-lam-nhanh
  $('#sendFastJobs').click(function (e) {
    if(userData==null){
      e.preventDefault(); 
      //Open modal option open google link form or login modal
      $("#modalPostJobs").modal("show");//show modal modalUserInfo
    }
    else{
      if(userData[0].id_em==null){
        e.preventDefault();
        if(confirm('Tài khoản của bạn không thuộc quyền để truy cập vào đây, Nhấn OK để tạo nâng cấp tài khoản'))
          $("#modalUserInfo").modal('show');//show modal modalUserInfo
      }
    }
    // e.stopImmediatePropagation();
  });
// End check employers

</script>