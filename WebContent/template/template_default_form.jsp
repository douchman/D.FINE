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
<!-- TAP -->
<div class="container2">
<ul class="nav nav-pills">
  <li role="presentation"><a href="#">전체</a></li>
  <li role="presentation"><a href="#">소분류1</a></li>
  <li role="presentation"><a href="#">소분류2</a></li>
  <li role="presentation"><a href="#">소분류3</a></li>

</ul>
</div>
<%-- PRODUCT DISPLAY1 --%>
<table id="memberTable" class="table table-bordered table-hover">
 <div class="w3-row">
    <a href="javascript:void(0)" onclick="openCity(event, 'London');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">London</div>
    </a>
    <a href="javascript:void(0)" onclick="openCity(event, 'Paris');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Paris</div>
  </div>	
  
 <div id="London" class="w3-container city" style="display:block">
    <h2>London</h2>
    <p>London is the capital city of England.</p>
  </div>

  <div id="Paris" class="w3-container city" style="display:inline">
    <h2>Paris</h2>
    <p>
    <tr>
		<td>
				<div class="thumbnail">
					<img src="../imgs/img6.jpg" alt="...">
					<div class="caption">
						<h3>왼쪽 겨드랑이에서 냄새가 나는것 같다</h3>
						<p>입으면 눈부심</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">구매하기</a>
						</p>
					</div>
			</td>
			<td>
				<div class="thumbnail">
					<img src="../imgs/img6.jpg" alt="...">
					<div class="caption">
						<h3>왼쪽 겨드랑이에서 냄새가 나는것 같다</h3>
						<p>입으면 눈부심</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">구매하기</a>
						</p>
					</div>
			</td>
			<td>
				<div class="thumbnail">
					<img src="../imgs/img6.jpg" alt="...">
					<div class="caption">
						<h3>왼쪽 겨드랑이에서 냄새가 나는것 같다</h3>
						<p>입으면 눈부심</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">구매하기</a>
						</p>
					</div>
			</td>
			<td>
				<div class="thumbnail">
					<img src="../imgs/img6.jpg" alt="...">
					<div class="caption">
						<h3>왼쪽 겨드랑이에서 냄새가 나는것 같다</h3>
						<p>입으면 눈부심</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">구매하기</a>
						</p>
					</div>
			</td>			
		</tr>
		<tr>
		<td>
				<div class="thumbnail">
					<img src="../imgs/img6.jpg" alt="...">
					<div class="caption">
						<h3>왼쪽 겨드랑이에서 냄새가 나는것 같다</h3>
						<p>입으면 눈부심</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">구매하기</a>
						</p>
					</div>
			</td>
			<td>
				<div class="thumbnail">
					<img src="../imgs/img6.jpg" alt="...">
					<div class="caption">
						<h3>왼쪽 겨드랑이에서 냄새가 나는것 같다</h3>
						<p>입으면 눈부심</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">구매하기</a>
						</p>
					</div>
			</td>
			<td>
				<div class="thumbnail">
					<img src="../imgs/img6.jpg" alt="...">
					<div class="caption">
						<h3>왼쪽 겨드랑이에서 냄새가 나는것 같다</h3>
						<p>입으면 눈부심</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">구매하기</a>
						</p>
					</div>
			</td>
			<td>
				<div class="thumbnail">
					<img src="../imgs/img6.jpg" alt="...">
					<div class="caption">
						<h3>왼쪽 겨드랑이에서 냄새가 나는것 같다</h3>
						<p>입으면 눈부심</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">구매하기</a>
						</p>
					</div>
			</td>			
		</tr>		
	</table>
    </p>
  </div>


</div>		

		
	<!-- 페이징 -->
	
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




