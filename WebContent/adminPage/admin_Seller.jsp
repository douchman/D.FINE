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
	width: 60px;
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
		<th>ID</th>
		<th>가입날짜</th>
		<th>식별번호</th>
		<th>회원 등급</th>		
		<th>비고</th>
		<th>수정</th>
	</tr>

	<tr>
		<td><input type="checkbox" id="select"></td>
		<td>cokezero_01</td>
		<td>2020-07-12</td>
		<td>000001</td>
		<td>판매자</td>
		<td><input type="text" id="remark" placeholder="-"/></td>	
		<td><input type="button" id="saveBtn" value="저장"/></td>	
	</tr>
	<tr>
		<td><input type="checkbox" id="select"></td>
		<td>cokezero_02</td>
		<td>2020-07-12</td>
		<td>000002</td>
		<td>판매자</td>
		<td><input type="text" id="remark" placeholder="-"/></td>	
		<td><input type="button" id="saveBtn" value="저장"/></td>	
		
	</tr>
	<tr>
		<td><input type="checkbox" id="select"></td>
		<td>cokezero_03</td>
		<td>2020-07-12</td>
		<td>000003</td>
		<td>판매자</td>
		<td><input type="text" id="remark" placeholder="-"/></td>	
		<td><input type="button" id="saveBtn" value="저장"/></td>	
	</tr>
	<tr>
		<td><input type="checkbox" id="select"></td>
		<td>cokezero_04</td>
		<td>2020-07-12</td>
		<td>000004</td>
		<td>판매자</td>
		<td><input type="text" id="remark" placeholder="-"/></td>	
		<td><input type="button" id="saveBtn" value="저장"/></td>	
	</tr>
	<tr>
		<td><input type="checkbox" id="select"></td>
		<td>cokezero_04</td>
		<td>2020-07-12</td>
		<td>000004</td>
		<td>판매자</td>
		<td><input type="text" id="remark" placeholder="-"/></td>	
		<td><input type="button" id="saveBtn" value="저장"/></td>	
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




