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