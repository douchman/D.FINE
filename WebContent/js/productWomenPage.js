$(document).ready(function() {	
	console.log('chk');
	$('#product_women_view').load('product_form_women.jsp');
	
	/* 사이드메뉴에서 페이지 호출시 이쪽에서 처리해서 
	 * 
	 * $('#sellerPage_view') 에 .load 로 페이지를 불러올 것.
	 * 위 영역은 <div> 영역.
	 * 
	 * */
	
	
});

function getView(id){
	$('#product_women_view').load('product_'+id+'.jsp');
}


