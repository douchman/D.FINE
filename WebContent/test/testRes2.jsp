<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	request.setCharacterEncoding("UTF-8");
    	
    	String productName = request.getParameter("productName");
    	String price = request.getParameter("productPrice");
    	if(price == null){
    		price = " 가격이 설정되지 않았습니다. ";
    	}
    	String [] valArr1 = request.getParameterValues("valArr1");    	
    	String [] valArr2 = request.getParameterValues("valArr2");    
    	
    	int idx = 0;
    	
    %>

    
    <h1> 물품명 : <%=productName%></h1>
    
    
    <h2> 가격 : <%=price%></h2>

    
    
    <%for(int i =0; i<valArr1.length; i++){%>
    <%for(int j =0; j<valArr2.length; j++){ %>
		<span class="stepSubTitle">옵션 <%=++idx%> : <%=valArr1[i]%> _ <%=valArr2[j]%>  </span><br/>
		개별 가 : <input type="text" placeholder="가격" value="<%=price%>" >원
		<br/>
		<br/>   
    	<%}%>
    <%}%>
    
    
    
    <script>
    
    
    </script>