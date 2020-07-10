<%@ page language="java" pageEncoding="UTF-8"%>

<style>
input {
	font-size: 14pt;
}

input:focus {
	background-color: rgba(173, 216, 230, 0.3);
	border-color: #66afe9;
	outline: 0;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6);
}

.row {
	margin-bottom: 15px;
}
</style>
<h2>< Orders ></h2>

<div class="row">
	<div class="col-md-1">주문 기간</div>
	<div class="inputGroup col-md-3">
		<input type="text" placeholder="Start dates">
	</div>
	<div class="col-md-1">~</div>
	<div class="inputGroup col-md-2">
		<input type="text" placeholder="End dates">
	</div>
</div>


<div class="row">
	<div class="col-md-1">가격설정</div>
	<div class="inputGroup col-md-3">
		<input type="text" placeholder="Min price">
	</div>
	<div class="col-md-1">~</div>
	<div class="inputGroup col-md-2">
		<input type="text" placeholder="Max price">
	</div>
</div>

<div class="row">
	<div class="col-lg-4">
		<div class="input-group">
			<div class="input-group-btn">
				<button type="button" class="btn btn-default dropdown-toggle"
					data-toggle="dropdown" aria-expanded="false">
					분류 <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu">
					<li><a href="#">물품명</a></li>
					<li><a href="#">물품번호</a></li>
				</ul>
			</div>
			<!-- /btn-group -->

			<input type="text" class="form-control" aria-label="...">
			<div class="input-group-btn">
				<button class="btn btn-default glyphicon glyphicon-search"></button>
			</div>

		</div>
		<!-- /input-group -->
	</div>
	<!-- /.col-lg-6 -->
</div>

<table id="orderTable" class="table table-bordered table-hover">

	<tr>
		<th>제품번호</th>
		<th>제품명</th>
		<th>분류</th>
		<th>가격</th>
		<th>재고</th>
		<th>주문일시</th>
		<th>처리현황</th>
	</tr>

	<tr>
		<td>12321312</td>
		<td>스니커즈 아몬드</td>
		<td>초코바</td>
		<td>W132,586,292</td>
		<td>5941</td>
		<td>2020-07-08</td>
		<td> 상품준비중 </td>
	
	</tr>
	<tr>
		<td>12321312</td>
		<td>스니커즈 아몬드</td>
		<td>초코바</td>
		<td>W132,586,292</td>
		<td>5941</td>
		<td>2020-07-08</td>
		<td> 상품준비중 </td>
	
	</tr>
	<tr>
		<td>12321312</td>
		<td>스니커즈 아몬드</td>
		<td>초코바</td>
		<td>W132,586,292</td>
		<td>5941</td>
		<td>2020-07-08</td>
		<td> 상품준비중 </td>
	
	</tr>
	<tr>
		<td>12321312</td>
		<td>스니커즈 아몬드</td>
		<td>초코바</td>
		<td>W132,586,292</td>
		<td>5941</td>
		<td>2020-07-08</td>
		<td> 상품준비중 </td>
	
	</tr>
	<tr>
		<td>12321312</td>
		<td>스니커즈 아몬드</td>
		<td>초코바</td>
		<td>W132,586,292</td>
		<td>5941</td>
		<td>2020-07-08</td>
		<td> 상품준비중 </td>
	
	</tr>
	<tr>
		<td>12321312</td>
		<td>스니커즈 아몬드</td>
		<td>초코바</td>
		<td>W132,586,292</td>
		<td>5941</td>
		<td>2020-07-08</td>
		<td> 상품준비중 </td>
	
	</tr>
	<tr>
		<td>12321312</td>
		<td>스니커즈 아몬드</td>
		<td>초코바</td>
		<td>W132,586,292</td>
		<td>5941</td>
		<td>2020-07-08</td>
		<td> 상품준비중 </td>
	
	</tr>
	<tr>
		<td>12321312</td>
		<td>스니커즈 아몬드</td>
		<td>초코바</td>
		<td>W132,586,292</td>
		<td>5941</td>
		<td>2020-07-08</td>
		<td> 상품준비중 </td>
	
	</tr>
	
	<tr>
		<td>12321312</td>
		<td>스니커즈 아몬드</td>
		<td>초코바</td>
		<td>W132,586,292</td>
		<td>5941</td>
		<td>2020-07-08</td>
		<td> 상품준비중 </td>
	
	</tr>
	
	

</table>