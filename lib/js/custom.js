
$( document ).ready(function() {


	// click to show search
	$(".search-show").click(function() {
		$('.search-wrap').toggleClass('search-appear');
		$('.search-wrap .form-control').focus();
		$('.navbar .nav-link').fadeToggle(500);
		$('.overlay-wrap').fadeToggle(500);
	});

	// close search bar
	$(".close-search").click(function() {
		$('.search-wrap').toggleClass('search-appear');
		$('.navbar .nav-link').fadeToggle(500);
		$('.overlay-wrap').fadeToggle(500);
	}); 

	// overlay show
	$(".overlay-wrap").click(function() {
		$('.close-search').trigger('click');
	});

	// if ($(window).width() > 991) {
	// 	$( ".dropdown" ).hover(
	// 		function() {
	// 			$(this).find(".dropdown-menu").toggleClass("show");
	// 		}
	// 	);
	// }

	// Scroll with ease effect
	$('html').scrollWithEase();


	// change navbar background when srcoll
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		if (scroll > 20) {
			$(".navbar").addClass('nav-bg-white');
		}
		else{
			$(".navbar").removeClass('nav-bg-white');
		}
	});

	// member slider
	$('.memeber-slider').slick({
		dots: true,
		infinite: false,
		speed: 300,
		slidesToShow: 4,
		slidesToScroll: 4,
		responsive: [
		{
			breakpoint: 1024,
			settings: {
				slidesToShow: 3,
				slidesToScroll: 3,
				infinite: true,
				dots: true
			}
		},
		{
			breakpoint: 600,
			settings: {
				slidesToShow: 2,
				slidesToScroll: 2
			}
		},
		{
			breakpoint: 480,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1
			}
		}
		]
	});

	$('.employee-slider').slick({
		dots: true,
		infinite: false,
		speed: 300,
		slidesToShow: 6,
		slidesToScroll: 5,
		responsive: [
		{
			breakpoint: 1024,
			settings: {
				slidesToShow: 4,
				slidesToScroll: 3,
				infinite: true,
				dots: true
			}
		},
		{
			breakpoint: 768,
			settings: {
				slidesToShow: 3,
				slidesToScroll: 2
			}
		},
		{
			breakpoint: 470,
			settings: {
				slidesToShow: 2,
				slidesToScroll: 2
			}
		},
		{
			breakpoint: 300,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1
			}
		}
		]
	});

	// go to top
	$(window).scroll(function () {
		if ($(this).scrollTop() > 50) {
			$('#back-to-top').fadeIn();
		} else {
			$('#back-to-top').fadeOut();
		}
	});
	$('#back-to-top').click(function () {
		$('#back-to-top').tooltip('hide');
		$('body,html').animate({
			scrollTop: 0
		}, 800);
		return false;
	});

	// select2 
	$(".jobFilter").select2({
		theme: 'bootstrap4'
	});

	$(".companyFilter").select2({
		theme: 'bootstrap4'
	});
	
	$(".cityFilter").select2({
		theme: 'bootstrap4'
	});


	// animate hambuger icon
	$(function() {
		$('#navbarSupportedContent').on('hide.bs.collapse', function () {
			$('.navbar-toggler').removeClass('open');
		})
		$('#navbarSupportedContent').on('show.bs.collapse', function () {
			$('.navbar-toggler').addClass('open');
		})
	});

});

function animatSuccess(time=1700) {
	$(".overlay-success").css("display", "flex");
  	setTimeout(function(){ $(".overlay-success").css("display", "none"); }, time);
}


// Show Tooptip
$('a[data-toggle="tooltip"]').tooltip({
         animated: 'fade',
         placement: 'bottom',
});
//End Tooltip

// ============================== Calender - dater picking================================
	
	$(function () {
        $('#birthday').datetimepicker({
        	// locale: 'vi',
        	format: 'L',
        	locale: 'vi',
        	viewMode: 'years',
        	format: 'DD/MM/YYYY'
        });
        $('#birthday').on("change.datetimepicker", function (e) {
		    //  // console.log(e.date._i);
		});
    });

    $(function () {
		 $('#endFastJobs').datetimepicker({
        	locale: 'vi',
        	format: 'L',
        	locale: 'vi',
        	format: 'DD/MM/YYYY'
        });
        $('#endFastJobs').on("change.datetimepicker", function (e) {
		    //  // console.log(e.date._i);
		});
        
    });

// =========================
	
// ==============================Scrolling  ===============

(function($){
    $(window).on("load",function(){
        $(".apply-post").mCustomScrollbar({
        	theme:"dark-thin"
        });
    });
})(jQuery);

(function($){
    $(window).on("load",function(){
        $("#elementNews").mCustomScrollbar({
        	theme:"dark-thin"
        });
    });
})(jQuery);

var listJobsItem = $("#listJobCon .list-job-item"); 

$('.btn-collapse').click(function () {

	//Handle event
	for (var i = listJobsItem.length - 1; i >= listJobsItem.length - 8; i--) {
		// console.log(listJobsItem[i]);
		$(listJobsItem[i]).css("display","block");
	}

	$(".list-job-container").css({"height":"152vh", "max-height":"152vh"});
	$('body,html').animate({
		scrollTop: 500
	}, 800);

	//Scroll lib
	(function($){
	    $(window).on("load",function(){
	        $(".list-job-container").mCustomScrollbar({
	        	theme:"dark-thin"
	        	
	        });
	    });
	})(jQuery);

	// Tranfer more data when people scrolled end 

	(function($){
		var dem=2;
		$(".list-job-container").mCustomScrollbar({
			callbacks:{
				onTotalScrollOffset: 100,
				onTotalScroll: function(){
					$(".overlay-div").css("display", "flex");
					$.ajax({
						type: "GET",
						url: "/news/listJobsItem.php",
						data: {dem: dem},
						cache: false,
						success: function(result) {
							// console.log(result.error)//return true
							dem++;
							$("#mCSB_2_container").append(result.strHtmlArr);
							animaShowContentJob();// Restart element 

							if(result.error==true){
								alert('Đã hết bài đăng có thể ứng tuyển trong mục này!');
								//Scrolled DOWN
								($('html,body').stop().animate({
								    scrollTop: '+=' + 700
								  }));
								// location.href = "#logoEmployer";
							}

							$(".overlay-div").css("display", "none");


						},
						// error:function(error){

						// 	//Scrolled DOWN
						// 	($('html,body').stop().animate({
						// 	    scrollTop: '+=' + 800
						// 	  }));

						// 	$(".overlay-div").css("display", "none");
						// 	// alert('Đã hết bài đăng có thể ứng tuyển trong mục này!');
						// 	// location.href = "#logoEmployer";
							
						// }
					});
				}
			}
		});
	})(jQuery);

	$(".btn-collapse").css("display","none");

});

for (var i = listJobsItem.length - 1; i >= listJobsItem.length - 8; i--) {
	$(listJobsItem[i]).css("display","none");
}
	


// ==============================// END Scrolling ===============

// SideBar
$(".card-header").click(function() {
	$(this).parent().find('.card-body').slideToggle(300);
	$(this).find('.icon-rotate').find('.fas').toggleClass('animate-icon');
});

// show tooltip
$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip(); 
});

// =====================Search form for bai-dang.php================

	// Add class .show to display ul,li
	$(document).ready(function(){
	  $("#searchNewsInput").click(function(){
	    $("#elementNews").show();
	  });
	});

	// When click outside form search remove class show
	$(document).ready(function(){
	  	window.onclick = function(event) {
	  	 	if (!event.target.matches('#searchNewsInput')) {
				    $("#elementNews").hide();
			}
		}
	});

	// Filer content search <input>
	function searchTitleNews() {
	    var input, filter, ul, li, a, i;
	    input = document.getElementById("searchNewsInput");
	    filter = input.value.toUpperCase();
	    ul = document.getElementById("elementNews");
	    li = ul.getElementsByTagName("li");
	    var vals = [];
	    for (i = 0; i < li.length; i++) {
	        a = li[i].getElementsByTagName("a")[0];
	        txtValue = a.textContent || a.innerText;
	        dem=0;
	        if (txtValue.toUpperCase().indexOf(filter) > -1) {
	        	vals.push(li[i].innerHTML);
	            li[i].style.display = "";
	            vals.sort();
	            dem++;
	        } else {
	            li[i].style.display = "none";
	        }
	    }
	    //sort a list alphabetically- chưa hoàn thành
	 	//if(dem!=0)
	 	//for (i = 0; i < li.length; i++)
		// li[i].innerHTML = vals[i];
	}

	// function sortUnorderedList(ul, sortDescending) {
	// 	if(typeof ul == "string")
	// 	ul = document.getElementById(ul);

	// 	var lis = ul.getElementsByTagName("LI");
	// 	var vals = [];

	// 	for(var i = 0, l = lis.length; i < l; i++)
	// 	vals.push(lis[i].innerHTML);

	// 	vals.sort();

	// 	if(sortDescending)
	// 	vals.reverse();

	// 	for(var i = 0, l = lis.length; i < l; i++)
	// 	lis[i].innerHTML = vals[i];
	// }
	    
	// window.onload = function() {
	//   var desc = false;
	//   document.getElementById("searchNewsInput").onclick = function() {
	//     sortUnorderedList("elementNews", desc);
	//     desc = !desc;
	//     return false;
	//   }
	// }
// =====================End search form for bai-dang.php================

// =====================Handle cap-nhap-ho-so.php================
	$(document).ready(function(){
	  $( ".avatar").click(function() {
	  	$('.btn-change-img').fadeToggle("fast", "swing");
	  	$('.avatar .pencil-edit').fadeToggle("fast", "swing");
	  });

	  $( ".info-user-form, .info-user-wrap .pencil-edit").click(function() {
	  	$('.info-user-form').fadeToggle("fast", "swing");
	  	$('.info-user-edit').fadeToggle("fast", "swing");
	  	$('.user-right').addClass("border-box");
	  	$('.info-user-wrap .pencil-edit').hide();
	  });

	 //  $( ".info-user-wrap").hover(function(){
	 //  	$('.info-user-form').css("display", "none");
	 //  	$('.info-user-edit').css("display", "block");
	 //  	$('.user-right').addClass("border-box");
	 //  	$('.info-user-wrap .pencil-edit').hide();
	 //  },function(){ //Case hover out but not click
	 //  		$('.info-user-form').css("display", "block");
		// 	$('.info-user-edit').css("display", "none");
		// 	$('.user-right').removeClass("border-box");
		// 	$('.info-user-wrap .pencil-edit').show();
		// });
	  $( ".cancel-edit-form").click(function() {
	  	$('.info-user-form').fadeToggle("fast", "swing");
	  	$('.info-user-edit').fadeToggle("fast", "swing");
	  	$('.user-right').removeClass("border-box");
	  	$('.info-user-wrap .pencil-edit').show();
	  });

	  // $( ".info-user-wrap .pencil-edit").click(function() {
	  // 	$('.info-user-form').fadeToggle();
	  // 	$('.info-user-edit').fadeToggle();
	  // 	$('.info-user-wrap .pencil-edit').hide();
	  // });

	});
// =====================End cap-nhap-ho-so.php================

// =====================Animation post job content============
  	//Hide/Show job content when click
  	$(document).ready(function() {
	  	animaShowContentJob();
  	});

  	function animaShowContentJob(){
  		var watches = $('.span-a-href');
	  	var closes = $('.fullTextJob');
	  	$(watches).on('click', function() {
	  		var parent = $(this).parent()
	  		parent.hide();
	  		$(parent.next('.job-content .fullTextJob')).show();
	  	});

	  	$(closes).on('click', function() {
	  		var newsId = $(this).data('id');
	  		window.location.href='/chi-tiet-bai-dang?news_id='+newsId;
	  		// $(this).hide();
	  		// var parent = $(this).parent()
	  		// $(parent.children('.shortTextJob')).show();
	  		// $(watches).show();
	  	});
  	}

// ======================End animation post job content=======

////===================== Animation Rating=====================
	var rating=null;
	$(document).ready(function() {
		var $star_rating = $('.star-rating .fa');
		var getStar = $star_rating.siblings('input.rating-value'); // The star geted
		var stars = $('.star-rating .fa');

		for (i = 0; i < stars.length; i++) {
			$(stars[i]).removeClass('checked');
		}
		dem=0;
		while(dem<getStar.length)
		{
			// access element input value
			for (i = 0; i < parseInt(getStar[dem].value,10); i++) {
				$(stars[i+(dem*5)]).addClass('checked');
			}
			dem++;
		}

		//Click handlie
		$($star_rating).on('click', function() {

	        var onStar = parseInt($(this).data('rating'), 10); // The star currently selected
	        rating = onStar;
	        var stars = $('.star-rating .fa');//get all 
	        var stars = $(this).parent().children('span.fa'); // get a group

	        for (i = 0; i < stars.length; i++) {
	        	$(stars[i]).removeClass('checked');
	        }
	        for (i = 0; i < onStar; i++) {
	        	$(stars[i]).addClass('checked');
	        }

	        $($(this).parent().next('#rateSucess')).show();
	        $($(this).parent()).hide();
	    });

		//Hover handle
		$($star_rating).hover(function(){
			var hoS=parseInt($(this).data('rating')); // The star currently hovered
			var stars = $('.star-rating .fa');
	        var stars = $(this).parent().children('span.fa');
	        for (i = 0; i < stars.length; i++) {
	        	$(stars[i]).css("color", "");
	        }

	        for (i = 0; i < hoS; i++) {
	        	$(stars[i]).css("color", "yellow");
	        }
		},function(){ //Case hover out but not click
			return $star_rating.each(function() {
		    	$(this).css("color", "");
		  });
		});
	});
	//Send data to update table applies
	function rateRequest(id_app, id_active, id_subcate){
		// console.log(rating);
		// console.log(id_app);
		// console.log(id_active);
		//Get rating when user click event -> onStar
		if(rating == null) { alert('Bạn chưa đánh giá'); return; }
		$.ajax({
			type: "POST",
			url: "/news/upDateApp.php",
			data: {aid: id_app, activeid: id_active, companyid: id_subcate, rating: rating},
			cache: false,
			success: function(result) {
	           // console.log(result);  
	           if(result.upRating){	
	           animatSuccess()
	           setTimeout(function(){ window.location.reload(false); }, 1400);

	        }	
        },//End success
        error: function (error) {
		    alert('error; ' + eval(error));
		}
      });// End Ajax
	}
//=====================End Animation Rating=====================

// ====================LAZY LOAD IMAGE ==========================
$(function() {
	$('#logoEmployer .lazy').Lazy();
	console.log($('.lazy').Lazy());
});
//=======================END IMAGE HANDLE=======================
//Trùng 2 validateEmail
function validateEmail(mail) {
	// console.log(mail);
 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))
  {
    return (true)
  }
    alert("Địa chỉ email không đúng định dạng")
    return (false)
}

/*// ===================== Validate DATA FORMAT =====================
	// Validate Email 
	var email = document.getElementById('email');
	function validateURLEmail(email) {
		var re = /^[a-z0-9](\.?[a-z0-9]){5,}@g(oogle)?mail\.com$/;
		return re.test(email);
	}
	function validateEmail() {
		if (validateURLEmail(email.value)) {
			$.ajax({ 
            type: "GET",
            url: '/user/checkEmail.php',
            data: {email: email.value},
            cache: false,
            success: function(result) {	
            	document.getElementById('messageEmailSubmitForm').innerHTML = result.msg;
	        	if(result.error) document.getElementById('messageEmailSubmitForm').style.color = 'red';
	        	else document.getElementById('messageEmailSubmitForm').style.color = 'green';
	        }
	        });
			
		} else {
			document.getElementById('messageEmailSubmitForm').innerHTML = 'Địa chỉ email không đúng định dạng';
			document.getElementById('messageEmailSubmitForm').style.color = 'red';
		}

		

	}
	email.onchange = validateEmail;
	//End validate Email
	// Validate check RE-Password True or False 
	var password = document.getElementById("DK_password"), confirm_password = document
			.getElementById("Re_SPassword");
	function validatePassword() {
		if (password.value != confirm_password.value) {
			document.getElementById('messagePassSubmitForm').innerHTML = 'Mật khẩu không khớp';
			document.getElementById('messagePassSubmitForm').style.color = 'red';
		} else {
			document.getElementById('messagePassSubmitForm').innerHTML = '';
		}
	}
	password.onchange = validatePassword;
	confirm_password.onkeyup = validatePassword;
	
	//Checkbox Show/Hide function 
	function showPassWord() {
		if (password.type === "password"
				&& confirm_password.type === "password") {
			password.type = "text";
			confirm_password.type = "text";
		} else {
			password.type = "password";
			confirm_password.type = "password";
		}
	}
 	//Validate POLICIES PASSWORD 
	var myInput = document.getElementById("DK_password");
	var letter = document.getElementById("letter");
	var capital = document.getElementById("capital");
	var number = document.getElementById("number");
	var length = document.getElementById("length");
	// When the user clicks on the password field, show the message box
	myInput.onfocus = function() {
	  document.getElementById("messageSubmitForm").style.display = "block";
	}

	// When the user clicks outside of the password field, hide the message box
	myInput.onblur = function() {
	  document.getElementById("messageSubmitForm").style.display = "none";
	}
	// When the user starts to type something inside the password field
	myInput.onkeyup = function() {
	  // Validate lowercase letters
	  var lowerCaseLetters = /[a-z]/g;
	  if(myInput.value.match(lowerCaseLetters)) {  
	    letter.classList.remove("invalid");
	    letter.classList.add("valid");
	  } else {
	    letter.classList.remove("valid");
	    letter.classList.add("invalid");
	  }
	  
	  // Validate capital letters
	  var upperCaseLetters = /[A-Z]/g;
	  if(myInput.value.match(upperCaseLetters)) {  
	    capital.classList.remove("invalid");
	    capital.classList.add("valid");
	  } else {
	    capital.classList.remove("valid");
	    capital.classList.add("invalid");
	  }

	  // Validate numbers
	  var numbers = /[0-9]/g;
	  if(myInput.value.match(numbers)) {  
	    number.classList.remove("invalid");
	    number.classList.add("valid");
	  } else {
	    number.classList.remove("valid");
	    number.classList.add("invalid");
	  }
	  
	  // Validate length
	  if(myInput.value.length >= 8) {
	    length.classList.remove("invalid");
	    length.classList.add("valid");
	  } else {
	    length.classList.remove("valid");
	    length.classList.add("invalid");
	  }
	}


	// Validate POLICIES PHONE NUMBER
	// var upPhone = document.getElementById("upInfophone");
	// function phonenumber(inputtxt) {
	//   var phoneno = /^\+?([0-9]{2})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;
	//   inputtxt.value="123-345-3456";
	//   console.log(inputtxt.value.match(phoneno));
	//   if(inputtxt.value.match(phoneno)) {
	//     return true;
	//   }  
	//   else {  
	//     alert("message");
	//     return false;
	//   }
	// }
	// upPhone.onchange = phonenumber(upPhone);
	/* Validate POLICIES FORMAT DATETIME */


