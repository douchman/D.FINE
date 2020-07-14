$(document).ready(function() {	
	$('#product_men_view').load('product_form_men.jsp');
	
	/* 사이드메뉴에서 페이지 호출시 이쪽에서 처리해서 
	 * 
	 * $('#sellerPage_view') 에 .load 로 페이지를 불러올 것.
	 * 위 영역은 <div> 영역.
	 * 
	 * */
	
	
});

function getView(id){
	$('#product_men_view').load('myPage_'+id+'.jsp');
	
	/*
	 * 나중에 클릭하면 상품 불러오기 기능 적을 곳;
	 * */
}


