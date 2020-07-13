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
		<th>No.</th>
		<th>Title</th>
		<th>ID</th>
		<th>Date</th>
		<th>회원 등급</th>
		<th>Answered?</th>		
	</tr>

	<tr>
		<td>01</td>
		<td><a href="">배고픈데 맥도날드도 같이 보내주시나요?</a></td>
		<td>cokezero_1</td>
		<td>2020-07-12</td>
		<td>다이아몬드</td>
		<td><input type="checkbox"></td>
	</tr>
	<tr>
		<td>01</td>
		<td><a href="">ㅎㅎ감사합니다</a></td>
		<td>cokezero_1</td>
		<td>2020-07-12</td>
		<td>다이아몬드</td>
		<td><input type="checkbox"></td>
	</tr>
	<tr>
		<td>01</td>
		<td><a href="">옷은 왔는데 트리플 치즈버거가 안왔어요.</a></td>
		<td>cokezero_1</td>
		<td>2020-07-12</td>
		<td>다이아몬드</td>
		<td><input type="checkbox"></td>
	</tr>
	<tr>
		<td>01</td>
		<td><a href="">슬픈데 노래좀 틀어주실래요?</a></td>
		<td>cokezero_1</td>
		<td>2020-07-12</td>
		<td>다이아몬드</td>
		<td><input type="checkbox"></td>
	</tr>
	<tr>
		<td>01</td>
		<td><a href="">저는 잘 수 있을까요?</a></td>
		<td>cokezero_1</td>
		<td>2020-07-12</td>
		<td>다이아몬드</td>
		<td><input type="checkbox"></td>
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



