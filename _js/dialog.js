
$(document).ready(function() {
			$('a.login-window').click(function() {
				var loginBox = $(this).attr('href');
				$(loginBox).fadeIn(300);
				$('body').append('<div id="over">');
				$('#over').fadeIn(300);
				return false;
				
			});
			
			$('#switch_register').click(function() {
				var loginBox = $(this).attr('href');
				$(loginBox).fadeIn(300);
				$('body').append('<div id="over">');
				$('#over').fadeIn(300);
				return false;
				
			});
		
		 // khi click đóng hộp thoại
			$(document).on('click', "a.close, #over", function() {
			   $('#over, .login').fadeOut(300 , function() {
				   $('#over').remove();
			   });
			  return false;
			});
			
			$('#repassword').change(function(){
				if($(this).val() != $('#password').val()){
					$('#check-password').html("Mat khau khong khop, vui long nhap lai");
					$('#repassword').val("");
				}
				else{
					$('#check-password').html("");
				}
			}); 	
			
			
});

