$(document).ready(function() {
	
	$('#sellerPage_view').load('sellerForm_Home.jsp');
	
	/* 사이드메뉴에서 페이지 호출시 이쪽에서 처리해서 
	 * 
	 * $('#sellerPage_view') 에 .load 로 페이지를 불러올 것.
	 * 위 영역은 <div> 영역.
	 * 
	 * */
	
	
});

function getView(id){
	$('#sellerPage_view').load('sellerForm_'+id+'.jsp');
	
}
function chkTxtFld(txtFld, msg) {
	let id = document.getElementById(txtFld);
	if(id.value==""){
		alert(msg);
		id.focus();
		return false;
	}
	return true;
}
function sendMember(){
	let txtFldArr =['usrID', 'brandName', 'brandAddress', 'sellerAccount'];

	for(let idx in txtFldArr){
		if(!chkTxtFld(txtFldArr[idx], "필수 항목이 BEER있습니다."))	return;
	}
	
	document.getElementById('frm').submit();

}

