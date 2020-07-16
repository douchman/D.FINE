<!--  

	signInProc.jsp
	
	사용자가 로그인 페이지에서 입력한 내용들의 유효성을 검사하고 로그인 여부를 결정한다.


 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../common/dbConn.jspf" %>
    
    <!-- 
    	1. 아이디가 존재하는가 ?	
    	- true  -> 2번으로 이동
    	- false -> 로그인 실패 -> "아이디가 없습니다!" -> 로그인 페이지 이동
    	2. 아이디가 존재한다면 비밀번호가 일치하는가 ?
    	- true -> 로그인 성공 -> 세션 설정 후 홈으로 이동
    	- false -> 로그인 실패 -> "비밀번호가 틀립니다!" -> 로그인 페이지 이동
    
     -->
    <%!
    	// 입력 ID가 존재하는지 검사
    public boolean isExist(Connection conn, String ID){
    	
    	int idCnt = 0 ;
    	boolean result = true;
    	
    	PreparedStatement pstmt = null;
    	ResultSet rs = null;
    	
    	String query = "select NVL(usrID, 1) as idChk, usrPW "+
    				   "from DfineMember right outer join dual "+
    				   "on DfineMember.usrID = ? ";
    	
    	String query2 = "select * FROM DfineMember ";
				   
	
    	
    	try{
    		
    		
    		pstmt = conn.prepareStatement(query2);
    		
    		//pstmt.setString(1, ID);
    		
    		rs = pstmt.executeQuery();
    		/*
    		rs.next();
    		
    		System.out.println(ID);
    		System.out.println(rs.getInt("idChk"));
    		System.out.println(rs.getInt("usrPw"));
    		*/
    		
    		while(rs.next()){
    			System.out.println(rs.getString("usrID"));
    			
    		}
    	}catch(Exception e) {e.printStackTrace();}
    	
    	finally{
			if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
			if(conn !=null)	try{conn.close();}catch(Exception e){}
			if(rs !=null)	try{rs.close();}catch(Exception e){}
			}
    	
    	
    	
    	return result;
    	
    	
    }
    
    
    
    
    %>
    
    
    
    
    
    <%
    	String usrId =  request.getParameter("usrID");
    	String usrPw =  request.getParameter("usrPW");
    
    	
    	Connection conn = null;
    	
    	conn = getConn("localhost", "1521", "xe");
    	
    	isExist(conn, "third");
    
    %>
    
    
    
	