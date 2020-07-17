
$(document).ready(function() {
	// 도큐먼트가 ready 되면 index에서 로그인 상태값을 확인
	console.log($('#loginStatus').val());
	
	//로그인 상태 값이 비 로그인일 경우
	if( $('#loginStatus').val() == 'nonLogin' ){
		$('#btnSign').removeClass('has-login');
		$('.for-login').css("display","none");
	}
	else{
		$('#btnSign').addClass('has-login');
		$('#btnSign').html("<span class='glyphicon glyphicon-log-out' aria-hidden='true'></span>Sign Out");
		$('for-login').css("display","");
	}
	
	
	$('#btnSign').on('click',function(){
		
		if($(this).hasClass('has-login')){
			location.href="signPage/signOutProc.jsp?usrId="+$('#loginStatus').val();
		}
		else
			location.href="	signPage/signInForm.jsp";
		
	})
})


function signFunc(){
	
	
	
}