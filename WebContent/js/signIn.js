$(document).ready(function() {
	
	

})

function responseChk(response) {
	var resText;
	
	switch(response){
	// 아이디 없음
	case '0':
		resText = '일치하는 아이디가 없습니다!'; 
		break;
	case '1':
		resText = '비밀번호가 다릅니다!'; 
		break;
	case '2':
		resText = '환영합니다.'; 
		break;
	case '3':
		resText = '아이디 또는 비밀번호를 올바르게 입력해주십시오.'; 
		break;
	}
	
	alert(resText);
}

function login() {

	$.ajax({
		type	:	"GET",
		url		:	"../signPage/signInProc.jsp",
		data	:{
			'usrID':	$('#usrID').val(),
			'usrPW':	$('#usrPW').val(),
		},
		async	:	true,
		success	:	function(response) {
			var resText= response.trim();
			response = response.trim();
			console.log(response);		
			switch(response){
			// 아이디 없음
			case '0':
				resText = '일치하는 아이디가 없습니다!'; 
				break;
			case '1':
				resText = '비밀번호가 다릅니다!'; 
				break;
			case '2':
				resText = '환영합니다.'; 
				console.log('로그인성공');
				console.log($('#usrID').val());
				location.href="../index.jsp?loginId="+$('#usrID').val();
				break;
			case '3':
				resText = '아이디 또는 비밀번호를 올바르게 입력해주십시오.'; 
				break;
			}
			
			alert(resText);
		}
			
		
	})
	
	
	
}
