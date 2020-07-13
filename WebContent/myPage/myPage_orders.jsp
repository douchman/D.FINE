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
.dropbtn {
  background-color: rgba(0,0,0,0.2);
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
  display: block;
}

.dropdown:hover .dropbtn {
  background-color: darkorange;
}
</style>
<div align="center" id="memberWrapper">
<h2>전체 회원 관리 </h2>
<div class="dropdown">
	  <button class="dropbtn">YEAR</button>
	  <div class="dropdown-content">
	  <a href="#">2020</a>
	  <a href="#">2019</a>
	  <a href="#">2018</a>
  	</div>
	</div>
<table id="memberTable" class="table table-bordered table-hover">
		<tr>
		<th>상품명</th>
		<th>사진</th>
		<th>구매일</th>
		<th>수량</th>
		<th>가격</th>
	</tr>

	<tr>
		<td>Coca-cola Zero</td>
		<td><img src="../imgs/KakaoTalk_20200331_165110561.jpg" width="100" height="100"></td>
		<td>2020-07-12</td>
		<td>Quantity: <label>1</label></td>
		<td>200,000</td>
	</tr>
	<tr>
		<td>Coca-cola Zero</td>
		<td><img src="../imgs/KakaoTalk_20200331_165110561.jpg" width="100" height="100"></td>
		<td>2020-07-12</td>
		<td>Quantity: <label>1</label></td>
		<td>200,000</td>
	</tr>
	<tr>
		<td>Coca-cola Zero</td>
		<td><img src="../imgs/KakaoTalk_20200331_165110561.jpg" width="100" height="100"></td>
		<td>2020-07-12</td>
		<td>Quantity: <label>1</label></td>
		<td>200,000</td>
	</tr>
	<tr>
		<td>Coca-cola Zero</td>
		<td><img src="../imgs/KakaoTalk_20200331_165110561.jpg" width="100" height="100"></td>
		<td>2020-07-12</td>
		<td>Quantity: <label>1</label></td>
		<td>200,000</td>
	</tr>
	<tr>
		<td>Coca-cola Zero</td>
		<td><img src="../imgs/KakaoTalk_20200331_165110561.jpg" width="100" height="100"></td>
		<td>2020-07-12</td>
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




