<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	request.setCharacterEncoding("UTF-8");
    	
    	String productName = request.getParameter("productName");
    	String price = request.getParameter("productPrice");
    	if(price == null){
    		price = " 가격이 설정되지 않았습니다. ";
    	}
    	String [] valArr = request.getParameterValues("valArr1");    	
    	String [] valArr2 = request.getParameterValues("valArr2");    
    	
    	
    	
    %>

    
    <h1> 물품명 : <%=productName%></h1>
    
    
    <h2> 가격 : <%=price%></h2>
    <input id="test" type="hidden" value="<%=valArr%>">
    
    
    <%for(int i =0; i<valArr.length; i++){%>
    <%for(int j =0; j<valArr2.length; j++){ %>
		<span class="stepSubTitle"><%=valArr[i]%> :<%=valArr2[j]%></span> 
		<br/>
		<br/>   
    	<%}%>
    <%}%>
    
    <script>
    	console.log($('#test').val().[1]);
    
    </script>