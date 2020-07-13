<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	request.setCharacterEncoding("UTF-8");
    	
    	String productName = request.getParameter("productName");
    	int price = Integer.parseInt(request.getParameter("price"));
    	String [] valArr = request.getParameterValues("valArr1");    	
    	String [] valArr2 = request.getParameterValues("valArr2");    
    	
    	
    	
    %>

    
    <h1> 물품명 : <%=productName%></h1>
    
    
    <h2> 가격 : <%=price%></h2>
    
    <%for(int i =0; i<valArr.length; i++){%>
    <%for(int j =0; j<valArr2.length; j++){ %>
		<span class="stepSubTitle"><%=valArr[i]%> :<%=valArr2[j]%></span> 
		<br/>
		<br/>   
    	<%}%>
    <%}%>