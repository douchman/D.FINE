<%-- shoppingCart.jsp --%>
<%-- col-md 사용해서 배치했음 근데 웹 브라우저 크기 줄이면 원하는 대로 동작이 잘 안됌 해결 가능하면 해결 바람 --%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Dfine.shoppingCart"  %>
<%!%>
<%
	String brandName = (String)session.getAttribute("brandName");
	String img = (String)session.getAttribute("img");
	String productName = (String)session.getAttribute("productName");
	String productPrice = (String)session.getAttribute("productPrice");

	int productTotal = 0;
	int shippingTotal = 0;
	int total = 0;
	
	List<Dfine.shoppingCart> cartLst = (List<Dfine.shoppingCart>)request.getAttribute("cartLst");
	out.print(cartLst);
%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
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
#memberWrapper tr td{
	vertical-align: middle;
	
}
.dropbtn {
  background-color: rgba(0,0,0,0.2);
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}
.button5{
  background-color: white;
  color: black;
  border: 2px solid #555555;
  font-size: 10px;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button5:hover, .contShopBtn:hover, .checkOutBtn:hover {
  background-color: #555555;
  color: white;
}
.contShopBtn, .checkOutBtn{
  background-color: white;
  color: black;
  border: 2px solid #555555;
  font-size: 30px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}
.hi{
	text-align:center;
}
</style>
<title>SHOPPING PART</title>
</head>
<body>
<div class="container" id="memberWrapper">
<h2>장바구니<%=img%></h2>
<table id="memberTable" class="table table-bordered table-hover">
	<div id="#div_to_append_to"></div>
	<tr>
		<th><input type="checkbox" id="selectAll" name="selectAll"/>전체 선택</th>	
		<th>상품 정보</th>
		<th>수량</th>
		<th>가격</th>
	</tr>
	<%
		for(Dfine.shoppingCart cart: cartLst){
	%>
	<tr data_value="1">
		<td><input type="checkbox" id="select" name="select" value="1"></td>
		<td>
		<img src="../imgs/<%=cart.getProductphoto() %>" width="100" height="100"><br/>
		<a href=""><%=cart.getBrandname() %></a><br/>
		상품명: <%=cart.getProductname() %>
		</td>
		<td>Quantity:<%=cart.getQuantity() %> <input type="text" value="1" style="width:25px; text-align:center;"/></td>
		<td><%=cart.getProductprice() %>원</td>
	</tr>
	<%} %>
	<tr data_value="2">
		<td><input type="checkbox" id="select" name="select" value="1"></td>
		<td>
		<img src="../imgs/<%=img %>" width="100" height="100"><br/>
		<a href=""><%=brandName %></a><br/>
		상품명: <%=productName %>
		</td>
		<td>Quantity: <input type="text" value="1" style="width:25px; text-align:center;"/></td>
		<td><%=productPrice %></td>
	</tr>
	<tr data_value="3">
		<td><input type="checkbox" id="select" name="select" value="1"></td>
		<td>
		<img src="../imgs/<%=img %>" width="100" height="100"><br/>
		<a href=""><%=brandName %></a><br/>
		상품명: <%=productName %>
		</td>
		<td>Quantity: <input type="text" value="1" style="width:25px; text-align:center;"/></td>
		<td><%=productPrice %></td>
	</tr>
</table>
<button class="button button5" id="deleteBtn">선택상품 삭제</button>
</div>
<br/>
<br/>
<hr/>
<br/>
<br/>
<div class="shpcart" id="memberWrapper">
<table id="memberTable" class="table table-bordered table-hover">
	<tr>
		<th>총 주문금액</th>
		<th></th>
		<th>총 배송비</th>
		<th></th>
		<th>총 결제금액</th>
	</tr>
	<tr>
		<td><h2><%=productTotal %></h2></td>
		<td><h2>+</h2></td>
		<td><h2><%=shippingTotal %></h2></td>
		<td><h2>=</h2></td>
		<td><h2><%=total %>원</h2></td>
	</tr>
</table>
<div class="hi">
	<button class="contShopBtn" >CONTINUE SHOPPING</button>
	<button class="checkOutBtn" onclick="location.href='<%=request.getContextPath()%>/product/checkoutForm.jsp'">CHECK OUT</button>
</div>
</div>
</body>
<script>
$(document).ready(function(){
    //최상단 체크박스 클릭
    $("#selectAll").click(function(){
        //클릭되었으면
        if($("#selectAll").prop("checked")){
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[name=select]").prop("checked",true);
            //클릭이 안되있으면
        }else{
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[name=select]").prop("checked",false);
        }
    })
});
$("#deleteBtn").click(function(){
		 if(confirm("삭제하시겠습니까?")){
	            $("input[name=select]:checked").each(function(){
	                var tr_value =$(this).val();
	                var tr=$("tr[data_value='"+tr_value+"']");
	                tr.remove();
	            });
	        }else{
	            return false;
	        }
	    });

	
</script>
</html>