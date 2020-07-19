<%@page import="java.net.URLEncoder"%>
<%@page import="Dfine.common.CommonTools"%>
<%@page import="Dfine.Dfineproduct"%>
<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="Dfine.shoppingCart"  %>
<%@include file="productProc.jsp" %>
<%!
	public String getEncoderStr(HttpServletRequest req, String str, String encode){
		String encodeStr = "";
		try{
			encodeStr = req.getParameter(str);
			//한글을 URL로 전송하기 위해 URLEncoder 사용
			return encodeStr==null?"":URLEncoder.encode(encodeStr, encode);
		}catch(Exception e){e.printStackTrace();}
		return encodeStr;
	}


public void prt3(String str)
{
	System.out.println(str);
}
%>

<%
	int idx =0;
	String searchSelect = getEncoderStr(request, "searchSelect", "UTF-8");
	String search = getEncoderStr(request, "search", "UTF-8");
	String naviStr = "searchSelect="+searchSelect+"&search="+search+"&";

	
	//List<Dfineproduct> productLst = (List<Dfineproduct>)session.getAttribute("productLst");
	prt3("product_form_men!");
	List<Dfineproduct> productLst = getProduct();
	session.setAttribute("prodLst", productLst);
	//String url = request.getContextPath()+"/Board/boardProc.jsp?"+naviStr+"curPage=boardForm&pageNum=";
	//String path = request.getContextPath()+"/Board/boardProc.jsp?curPage=boardForm&pageNum="+1;
	

	
	//int totalPage = (int)request.getAttribute("totalPage");
	//int blockSize = (int)request.getAttribute("blockSize");
	//int pageNum = (int)request.getAttribute("pageNum");
	
	//int pageCnt = totalPage / blockSize;
	//if(	totalPage % blockSize>0 )	pageCnt++;
%>
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

.snapImg{
	width: 200px;
	height: auto; 
	
}
</style>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/productMenPage.js"></script>
<form id="frm" action="<%=request.getContextPath()%>/index.jsp" method="post">
<input type="hidden" name="curPage">
<input type="hidden" name="frmPage" value="writeForm">
<center>
<div align="center" id="memberWrapper">
<!-- TAP -->
<div class="container">
<ul class="nav nav-pills">
  <li role="presentation"><a href="#">전체</a></li>
  <li role="presentation"><a href="#">소분류1</a></li>
  <li role="presentation"><a href="#">소분류2</a></li>
  <li role="presentation"><a href="#">소분류3</a></li>

</ul>
</div></div>


<%-- PRODUCT DISPLAY1 --%>
<table id="memberTable" class="table table-bordered table-hover">

<%
	for(Dfineproduct product: productLst){
		if(idx%4 == 0){
			out.print("<tr>");
		}
%>		
	<td>
		<div class="thumbnail">
			<img class="snapImg" width="200" height="200" src="<%=product.getSnapshot()%>" alt="...">
			<div class="caption">
				<h3><%=product.getProductname()%></h3>
				<p><a href="<%=request.getContextPath()%>/?"><%=product.getBrandname()%></a></p>
				<p><%=product.getProductprice()%>원</p>

				<p>
					<a href="#" class="btn btn-primary glyphicon glyphicon-sunglasses" role="button">장바구니 추가</a>
					<a href="product_detail.jsp?idx=<%=idx%>" class="btn btn-primary" role="button">구매하기</a>
				</p>
			</div>
		</div>
	</td>

<%
	if(idx == 3 || idx%4==3){
		out.print("</tr>");
	}
idx++;
	}
%>

</table>
	<!-- 페이징 -->
<%-- <%=CommonTools.getNavi(pageNum, blockSize, totalPage, url)%>
 --%>	
 
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
</form>
<div id="div_to_append_to">
</div>

</center>

<script>

$("#addCartBtn").click(function (){
    $("#div_to_append_to").button(

                 $.get(
                        "shoppingCart.jsp",
                        function(data){$('#div_to_append_to').append( '<strong>Tiago</strong>')}, 
                        "json"
                   )
            );
    });

</script>