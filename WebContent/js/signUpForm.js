$(document).ready(function() {
	$(document).on("keydown",'input[type="text"]',function(event) {
	  	if (event.keyCode === 13) {
		  event.preventDefault();
	  		};
		});
	
})





function chkPass() {

	$id = function(id) {
		return document.getElementById(id);
	}
	var pw = $id('usrPw');
	var pwok = $id('pwOk');
	var pwchk = $id('pwChk');

	if (pw.value != null && pw.value != '' && pwok.value != null
			&& pwok.value != '') {

		if (pw.value != pwok.value) {
			pwchk.style.color = 'red';
			pwchk.innerHTML = '패스워드 미 일치!';
		}

		else {
			pwchk.style.color = 'blue';
			pwchk.innerHTML = '패스워드 일치';
		}

	}

	else if (pw.value == null || pw.value == '' || pwok.value == null
			|| pwok.value == '') {
		pwchk.innerHTML = "";
	}
}

function sendMail() {
	$.ajax({
		type 	: "GET",
		url 	: "../mail/mailForm.jsp",
		data 	: {
			'email'	: $('#usrId').val()	
		},
		success : function(authNum) {
			console.log(authNum.trim());
			$('#authNum').val(authNum.trim());
			
			$('#mailChk').css("color","blue");
			$('#mailChk').html("메일 전송 성공");
		},
		
		error : function(authNum) {
			$('#mailChk').css("color","red");
			$('#mailChk').html("메일 전송 실패");
		},

	});
}


function chkAuth() {

	$id = function(id) {
		return document.getElementById(id);
	}

	var authNum = $id('authNum');
	console.log(authNum.value);
	var certiNum = $id('certiNum');
	var certiChk = $id('certiChk');

	// 인증번호 입력란이 비어있지 않고
	// 입력한 번호와 전송된 인증번호가 일치할때
	if (authNum != '' && authNum != null && certiNum != null 
			&& certiNum != '' && authNum.value == certiNum.value) {
		certiChk.style.color = 'blue';
		certiChk.innerHTML = '인증 성공';
	}

	else if(authNum.value != certiNum.value) {
		certiChk.style.color = 'red';
		certiChk.innerHTML = '인증 번호 미일치!';
	}

	else{
		certiChk.innerHTML = '';
	}
}