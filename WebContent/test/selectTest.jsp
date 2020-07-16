<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%@include file="/common/dbConn.jspf"%>

    
    
    
    <%
    
	String name ="";
	String id = "";
	String contents = "";
	String img = "";
	
	
    Connection conn = getConn("localhost", "1521", "xe");
    
	boolean result = true;

	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
    String query = "SELECT * FROM DfineProduct ";
    
    try {
	pstmt = conn.prepareStatement(query);
	
	rs = pstmt.executeQuery();
	
	rs.next();
	name = rs.getString("productName");
	id = rs.getString("productID");
	contents = rs.getString("productDetail");
	img = rs.getString("snapshot");
		
		
	} catch (Exception e) {
		result = false;
		e.printStackTrace();
	}
	finally{
		if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
		if(conn !=null)	try{conn.close();}catch(Exception e){}
		}

    
    
    
    
    
    %>
    
    
    
    물품 명 : <%=name%>
   물품 코드 : <%=id %>
   
   물품 상세설명 
   <%=contents %>
   
   이미지
  <img src="<%=img%>">
 
    
    