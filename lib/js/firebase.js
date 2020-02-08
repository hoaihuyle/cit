// var url = "";

var userData;
var id_app= null;
var id_em= null;
 
if (performance.navigation.type == 1) {$(".overlay-div").css("display", "flex");} 
else { }// console.info( "This page is not reloaded");

$('#loginGoogle').click(function(){
    login("google");
})
$('#loginfacebook').click(function(){
    login("facebook");
})

// Initialize Firebase
var config = {
    apiKey: "AIzaSyA3tzoP6rkUE-N2sDF5n0DzV0nq-Ox-S-w",
    authDomain: "cithue.firebaseapp.com",
    databaseURL: "https://cithue.firebaseio.com",
    projectId: "cithue",
    storageBucket: "cithue.appspot.com",
    messagingSenderId: "628388690991"
  };
  firebase.initializeApp(config);
// =========================************=========================

//Login GG,FB
function login(provider){
// #TODO: Check email address exists // if exist  // Alert: Can't sign
$("#modalLogin").modal("hide");
$(".overlay-div").css("display", "flex");

if(provider == 'google'){ var provider = new firebase.auth.GoogleAuthProvider();
} else if (provider == 'facebook') { var provider = new firebase.auth.FacebookAuthProvider();}
//If login is Exist same email ---> login by Google Popup
// firebase.auth().signInWithRedirect(provider).catch(function(error) {
//     // An error happened.
//     if (error.code === 'auth/account-exists-with-different-credential') {
//         // User's email already exists.
//         // The pending Google credential.
//         var pendingCred = error.credential;
//         // The provider account's email address.
//         var email = error.email;
//         firebase.auth().fetchSignInMethodsForEmail(email).then(function(methods) {
//             var provider = new firebase.auth.GoogleAuthProvider();
//             provider.setCustomParameters({
//               'login_hint': email
//             });
//         });
//     } 
// });
firebase.auth().signInWithRedirect(provider);
}//login function

//Returns a UserCredential from the redirect-based sign-in flow.
firebase.auth().getRedirectResult().then(function(result) {
    // The signed-in user info.
    var user = result.user;
    }).catch(function(error) {
    // Handle Errors here.
    var errorCode = error.code;
    var errorMessage = error.message;
    // The email of the user's account used.
    var email = error.email;
    // The firebase.auth.AuthCredential type that was used.
    var credential = error.credential;
    // [START_EXCLUDE]
    if (errorCode === 'auth/account-exists-with-different-credential') {
        $(".overlay-div").css("display", "flex");
        // If you are using multiple auth providers on your app you should handle linking
        if(confirm('Thông báo: Tài khoản bạn vừa đăng nhập sử dụng Email đã tồn tại!\nNhấn "OK" để tiếp tục đăng nhập.\nNote: Vui lòng đợi dây lát để hệ thống chuyển tài khoản...')){
            firebase.auth().fetchSignInMethodsForEmail(email).then(function(methods) {
                var provider = new firebase.auth.GoogleAuthProvider();
                provider.setCustomParameters({login_hint: error.email});
                $(".overlay-div").css("display", "none");
                firebase.auth().signInWithRedirect(provider).then(function(result) {
                    result.user.linkAndRetrieveDataWithCredential(credential).then(function(usercred) {
                      // Facebook account successfully linked to the existing Firebase user.
                      goToApp();

                    });
                });
            });
        } else alert('Đăng nhập thất bại');
    } else {
    //Handle show error or redirect to a HTML page if login false   
      console.error(error);
    }
    // [END_EXCLUDE]
});
// Check logined
$.ajax({ 
type: "GET",
url: "/user/isLogged.php",
cache: false,
success: function(result) {
    //TRUE not logined- not session
    if (result.error) {
        // Catch event login firebase
        firebase.auth().onAuthStateChanged(function(user){
            $(".overlay-div").css("display", "none");
            if(user){
                if (user.providerData[0]['displayName']) {
                    var fullname = user.providerData[0]['displayName'];
                }
                else var fullname="";
                if (user.providerData[0]['email']) {
                    var email = user.providerData[0]['email'];
                }
                else var email ="";
                if (user.providerData[0]['uid']) {
                    var id = user.providerData[0]['uid'];
                }
                if (user.providerData[0]['photoURL']) {
                    var link = user.providerData[0]['photoURL'];
                } 
                else var link="";
                if(user.providerData[0]['providerId']){
                    var oauth_provider=user.providerData[0]['providerId'];
                }
                else var oauth_provider="email";

                userData = {'id'  : id,'fullname': fullname,'email': email,'link': link,'oauth': oauth_provider };
                // localStorage.setItem('userData', JSON.stringify(userData));
                //Save and update data if user exist
                $.ajax({ 
                    type: "POST",
                    url: '/user/userData.php',
                    data: {userData:JSON.stringify(userData)},
                    cache: false,
                    success: function(result) {
                        Template(result);
                        localStorage.setItem('userData', result);
                        window.location.reload(false);
                    },
                    error: function (error) {
                      var r = confirm("Đăng nhập thất bại! Nhấn OK để chat với chúng tôi, Cancel để hủy ứng tuyển");
                      if (r == true) {window.open('https://www.facebook.com/viectheogiocit/inbox/', '_blank');}
                      else{window.location.reload(false);}
                    }
                });
                

            } 
            else {
                //hide Login button -> display avatar User
                $(".signSucces").show();    
            }
        });

        //Handle Login-SignUp
        $('#loginFormHandle').submit(function(event){
           /* stop form from submitting normally */ 
            event.preventDefault();
            /*
             * get the action attribute from the <form action="">
             * element
             */
            var $form = $( this ),
                url = $form.attr( 'action' );
            $.ajax({ 
                type: "POST",
                url: url,
                data: {email: $('#EmailLog').val(), password: $('#passLog').val()},
                cache: false,
                success: function(result) {
                    userData =JSON.parse(result);
                    localStorage.setItem('userData', JSON.stringify(userData));
                    $("#modalLogin").modal("hide");
                    $(".overlay-div").css("display", "flex");
                    Template(userData);
                }
            });
        })

        $('#signupFormHandle').submit(function(event){
            /* stop form from submitting normally */ 
            event.preventDefault();
            /*
             * get the action attribute from the <form action="">
             * element
             */
            var $form = $( this ),
                url = $form.attr( 'action' );

           $.ajax({ 
                type: "POST",
                url: url,
                data: {email: $('#EmailLog').val(), password: $('#passLog').val()},
                cache: false,
                success: function(result) {
                    userData =JSON.parse(result);
                    localStorage.setItem('userData', JSON.stringify(userData));
                    $("#modalLogin").modal("hide");
                    $(".overlay-div").css("display", "flex");
                    Template(userData);
                }
            });
        })
        //End handle login - SignUp
    } 
    //FALSE---has been logged
    else {
        $("#modalLogin").modal("hide");
        var userData = localStorage.getItem('userData');
        Template(userData);
    }
}
});

function Template(data){
    var object = JSON.parse(data);
    id = object[0].uid;
    id_app = object[0].id_app;
    id_em = object[0].id_em;
    fullname = object[0].ufullname;
    if(object[0].apicture != null)
    {
        picture = 'upload/uploadUser/thumb/'+object[0].apicture ;
    }
    else{
        picture=object[0].upicture;
    }
    // HTML
    $(".signSucces").hide();
    $(".overlay-thumb").css("display", "flex");
    $(".overlay-div").css("display", "none");
    $('.thumbnail').show();
    var profileHTML=' <li class="nav-item dropdown dropdown-login">';
        profileHTML+='<a class="nav-link dropdown-toggle btn-login" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">';
            profileHTML+='<img class="img-user" src="/'+picture+'"/>';
        profileHTML+='</a>';
        profileHTML+='<div class="dropdown-menu" aria-labelledby="navbarDropdown">';
            profileHTML+='<a  href="/user/'+id+'" class="dropdown-item" id="">'+fullname+'</a>';
            profileHTML+='<div class="dropdown-divider"></div>';
            profileHTML+='<a href="" id="btnLogout" class="dropdown-item">Đăng xuất</a>'
        profileHTML+='</div>';
    profileHTML+='</li>';
    //End HTML
    $(".overlay-thumb").css("display", "none");
    $('.thumbnail').html(profileHTML);
    
    if(id_app == null && id_em == null){ $("#modalUserInfo").modal('show'); }
    
}   


//Logout
$(document).on("click","#btnLogout",function(){
    firebase.auth().signOut().then(function(){
        localStorage.removeItem("userData");
        window.location.href = "/user/logOut.php/";
    }).catch(function(error){
        window.location.href = "index.php";
    });

    $('.thumbnail').hide();
    $('.signSucces').show();
});

