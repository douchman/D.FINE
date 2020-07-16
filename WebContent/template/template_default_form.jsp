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
}
</style>
<!-- TAB -->
<!-- OVERVIEW  -->
<%-- PRODUCT DISPLAY1 --%>
<div class="container" id="memberWrapper" align="center">

<div class="w3-row">
    <a href="javascript:void(0)" onclick="openCity(event, 'overview');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Overview</div>
    </a>
    <a href="javascript:void(0)" onclick="openCity(event, 'product');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Product</div>
    </a>
    <a href="javascript:void(0)" onclick="openCity(event, 'contact');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Contact</div>
    </a>
  </div>

  <div id="overview" class="w3-container city" style="display:none">
    <h2>Overview</h2>
    <p>
	<!-- Overview template 들어갈 곳 -->	
	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
	
	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
	</p>
  </div>
<!-- PRODUCT  -->
  <div id="product" class="w3-container city" style="display:none">
    <h2>Product</h2>
    <p>
   	<!-- Product template 들어갈 곳 -->	
	<table id="memberTable" class="table table-bordered table-hover">
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
					</div></div>
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
					</div></div>
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
					</div></div>
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
					</div></div>
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
					</div></div>
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
					</div></div>
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
					</div></div>
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
					</div></div>
			</td>			
		</tr>
    </table>
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
  </div>
		
<!-- contact -->
<div id="contact" class="w3-container city" style="display:none">
    <h2>Contact</h2>
    <p>
	<!-- Overview template 들어갈 곳 -->	
	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
	
	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
	</p>
  </div>
</div>






