<%-- sellerFrom _ Product --%>
<%-- 상품 페이지  --%>

<%-- 
	등록된 상품들을 게시판 형식으로 보여주고
	
	이 페이지에서 물품 등록 버튼을 통해 물품등록 페이지로 이동한다.
	
	로드가 아니라 등록 페이지로 이동임 !

 --%>



<%@ page language="java" pageEncoding="UTF-8"%>

<style>
</style>
<h2>< Products ></h2>



<div>

	<form class="form-inline">

		<div class="form-group dropdown">
			<label style="margin: 0px 10px 0px 20px;"> 분류 선택 </label> 
			<button class="btn btn-default dropdown-toggle" type="button"
				id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
				분류<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
				<li role="presentation"><a role="menuitem" tabindex="1"
					href="#">의류</a></li>
				<li role="presentation"><a role="menuitem" tabindex="2"
					href="#">식품</a></li>
				<li role="presentation"><a role="menuitem" tabindex="2"
					href="#">제품번호</a></li>
			</ul>
			
			<input type="text" class="form-control" id="keyword"> 
			<label style="margin: 0px 10px 0px 20px;">등록 기간 </label> 
			<input type="text" class="form-control" id="startDate"> 
			<label> ~ </label> 
			<input type="text" class="form-control" id="endDate">
		</div>

		<div class="form-group" style="margin-top: 15px;">
			<label style="margin: 0px 10px 0px 20px;">가격 설정 </label> 
			<input type="text" class="form-control" id="minPrice"> 
			<label> ~ </label> 
			<input type="text" class="form-control" id="maxPrice">
			
			<button type="button" class="btn btn-default glyphicon glyphicon-search"></button>
		</div>

		
	</form>
	<%-- form tag end --%>


</div>

<br />
<br />
<div style="float: right; margin-bottom: 10px; flo">
	<button  class="btn btn-info" onclick="location.href='<%=request.getContextPath()%>/productRegist/productRegistForm.jsp'">물품 등록</button>
</div>
<table id="productTable" class="table table-bordered table-hover">
	<tr>
		<th>제품번호</th>
		<th>제품명</th>
		<th>분류</th>
		<th>가격</th>
		<th>재고</th>
		<th>등록일</th>
		<th>삭제하기</th>
	</tr>

	<tr>
		<td>TS3015A92</td>
		<td>얼린콜라</td>
		<td>음료</td>
		<td>W1,500/1캔</td>
		<td>135</td>
		<td>2020-06-21</td>
		<td class="delBtn"><button class="btn btn-default">삭제</button></td>
	</tr>

	<tr>
		<td>TS3015B32</td>
		<td>얼린콜라</td>
		<td>음료</td>
		<td>W1,500/1캔</td>
		<td>135</td>
		<td>2020-06-21</td>
		<td class="delBtn"><button class="btn btn-default">삭제</button></td>
	</tr>

	<tr>
		<td>TS5715C92</td>
		<td>청자켓</td>
		<td>아우터</td>
		<td>W56,500/1벌</td>
		<td>135</td>
		<td>2020-06-21</td>
		<td class="delBtn"><button class="btn btn-default">삭제</button></td>
	</tr>

	<tr>
		<td>TS3015A92</td>
		<td>얼린콜라</td>
		<td>음료</td>
		<td>W1,500/1캔</td>
		<td>135</td>
		<td>2020-06-21</td>
		<td class="delBtn"><button class="btn btn-default">삭제</button></td>
	</tr>



</table>

<div id="product_wrapper" align="center">
	<nav>
		<ul class="pagination">
			<li><a href="#" aria-label="Previous"> <span
					aria-hidden="true">&laquo;</span>
			</a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>

</div>
