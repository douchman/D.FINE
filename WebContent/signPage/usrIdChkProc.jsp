<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="../common/dbConn.jspf" %>


<%!

	public String Select(Connection conn , String usrId){
	
	String result = "";
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String query = "SELECT COUNT(*) as cnt "+
				   "FROM DfineMember "+
				   "WHERE usrID = ? ";
	
	try{
		
		pstmt = conn.prepareStatement(query);
		
		pstmt.setString(1, usrId);
		
		rs = pstmt.executeQuery();
		
		rs.next();
		
		result = String.valueOf(rs.getInt("cnt"));
		
		
		
		
	}catch (Exception e){e.printStackTrace();}
	
	finally{
		if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
		if(conn !=null)	try{conn.close();}catch(Exception e){}
		if(rs !=null)	try{rs.close();}catch(Exception e){}
		}	
	
	
	
	return result;
	
}



%>


<%
	Connection conn = null;
	String result = "";
	String usrId =  request.getParameter("usrID");

	if(usrId == null || "".contentEquals(usrId)){
		result = "2";
		
	}

	else{
		
    	
    	conn = getConn("localhost", "1521", "xe");
    	
    	result = Select(conn, usrId);
	
	}
	
	out.print(result);
%>