$(document).ready(function() {	
/*	$('#template_view').load('template_default_form.jsp');
*/	
	/* 사이드메뉴에서 페이지 호출시 이쪽에서 처리해서 
	 * 
	 * $('#sellerPage_view') 에 .load 로 페이지를 불러올 것.
	 * 위 영역은 <div> 영역.
	 * 
	 * */
	
	
});

function getView(id){
	$('#template_view').load('myPage_'+id+'.jsp');
	
	/*
	 * 나중에 클릭하면 상품 불러오기 기능 적을 곳;
	 * */
}

function openCity(evt, cityName) {
	  var i, x, tablinks;
	  x = document.getElementsByClassName("city");
	  for (i = 0; i < x.length; i++) {
	    x[i].style.display = "none";
	  }
	  tablinks = document.getElementsByClassName("tablink");
	  for (i = 0; i < x.length; i++) {
	    tablinks[i].className = tablinks[i].className.replace(" w3-border-red", "");
	  }
	  document.getElementById(cityName).style.display = "block";
	  evt.currentTarget.firstElementChild.className += " w3-border-red";
	}

