<%@ page language="java" pageEncoding="UTF-8"%>



<style>
input {
	font-size: 14pt;
}


.row {
	margin-bottom: 15px;
}
tr{
	text-align:center;
}
th{
	text-align:center;
}
#remark{
	width: 150px;
	height: 25px;
	font-size: 15px;
	text-align: center;
}
#saveBtn{
	background-color: white;
	width: 50px;
	height: 30px;
}
#memberWrapper{
	padding-left: 150px;
}
</style>
<div align="center" id="memberWrapper">
<h2>전체 회원 관리 </h2>
<table id="memberTable" class="table table-bordered table-hover">
	
	<tr>
		<th><input type="checkbox" id="selectAll"/> 전체 선택</th>	
		<th>상품명</th>
		<th>사진</th>
		<th>수량</th>
		<th>가격</th>
	</tr>

	<tr>
		<td><input type="checkbox" id="select"></td>
		<td>Coca-cola Zero</td>
		<td><img src="../imgs/KakaoTalk_20200331_165110561.jpg" width="100" height="100"></td>
		<td>Quantity: <label>1</label></td>
		<td>200,000</td>
	</tr>
	<tr>
		<td><input type="checkbox" id="select"></td>	
		<td>Coca-cola Zero</td>
		<td><img src="../imgs/KakaoTalk_20200331_165110561.jpg" width="100" height="100"></td>
		<td>Quantity: <label>1</label></td>
		<td>200,000</td>
	</tr>
	<tr>
		<td><input type="checkbox" id="select"></td>	
		<td>Coca-cola Zero</td>
		<td><img src="../imgs/KakaoTalk_20200331_165110561.jpg" width="100" height="100"></td>
		<td>Quantity: <label>1</label></td>
		<td>200,000</td>
	</tr>
	<tr>
		<td><input type="checkbox" id="select"></td>	
		<td>Coca-cola Zero</td>
		<td><img src="../imgs/KakaoTalk_20200331_165110561.jpg" width="100" height="100"></td>
		<td>Quantity: <label>1</label></td>
		<td>200,000</td>
	</tr>
	<tr>
		<td><input type="checkbox" id="select"></td>	
		<td>Coca-cola Zero</td>
		<td><img src="../imgs/KakaoTalk_20200331_165110561.jpg" width="100" height="100"></td>
		<td>Quantity: <label>1</label></td>
		<td>200,000</td>
	</tr>
	
</table>
<nav>
  <ul class="pagination">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>	
  </ul>
</nav>
<!-- SearchPROC   -->



</div>





