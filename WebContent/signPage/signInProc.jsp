<%@page import="java.util.Set"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="../common/dbConn.jspf" %>
   <%!
    public Map<String, String> Select(Connection conn, String ID){
    	
	   	Map<String, String> usrInfo = new HashMap<String,String>();
    	int idCnt = 0 ;
    	boolean result = true;
    	
    	PreparedStatement pstmt = null;
    	ResultSet rs = null;
    	
    	String query = "select NVL(usrID, '0') as usrID, usrPW "+
    				   "from DfineMember right outer join dual "+
    				   "on DfineMember.usrID = ? ";
    	
    	try{
    		
    		// 쿼리 실행시 
    		
    		// 아이디가 존재하지 않으면 idChk 값이 0 이고 PW도 반환되는 값이 없다!
    		pstmt = conn.prepareStatement(query);
    		
    		pstmt.setString(1, ID);
    		
    		rs = pstmt.executeQuery();
    		
    		rs.next();
    		
    		
    		usrInfo.put(rs.getString("usrID"), rs.getString("usrPW"));
    		  		
    		
    	}catch(Exception e) {e.printStackTrace();}
    	
    	finally{
			if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
			if(conn !=null)	try{conn.close();}catch(Exception e){}
			if(rs !=null)	try{rs.close();}catch(Exception e){}
			}	
    	
    	return usrInfo;
   	
    }
    
    public String isValid(Map<String, String> usrInfo, String pwChk){
    	System.out.println("isValid() called");
    	Set set = usrInfo.keySet();
    	Iterator it =set.iterator();
    	
    	// 키값 : 유저 아이디 쿼리 결과값 
    	String usrId = (String)it.next();
    	// 키값을 통해 얻은 pw 쿼리 결과값
    	String usrPw = usrInfo.get(usrId);
    	
    	// 입력값 유효성  검사
        // ## return value ##
        // 0 : ID 없음
        // 1 : PW 미일치
        // 2 : 로그인 성공
    	
        
        // 반환된 쿼리 결과가 0일 경우 아이디 없음 처리 : 0 반환
        if("0".contentEquals(usrId)){return "0";}
    	// 아이디는 존재 하지만 pw가 미일치 할 경우 PW미일치 처리 : 1 반환
        else if(!usrPw.contentEquals(pwChk)){return "1";}
    	// 아이디도 존재하며 패스워드까지 일치 할 경우 로그인 성공 처리 : 2 반환
        else return "2";  
    }
    
    %>
    

    
    <%
    	String usrId =  request.getParameter("usrID");
    	String usrPw =  request.getParameter("usrPW");
    	String result = "";
    	
    	// 아무것도 입력하지 않고 로그인 버튼누를때 처리
    	// 빈 값이 넘어 오면
    	if(usrId == null || usrPw ==null ||"".equals(usrId) ||"".equals(usrPw) ){result = "3";}
    	else{
    		
        	Map<String, String> usrInfo;
        	
        	Connection conn = null;
        	
        	conn = getConn("localhost", "1521", "xe");
        	
        	// 로그인 페이지에서 입력한 ID를 이용해서 DB에서 쿼리결과 받아 Map(key: usrID , value: usrPw) 반환
        	usrInfo = Select(conn, usrId);
        	
        	// 쿼리결과가 저장되어있는 Map 데이터와 입력한 Pw 데이터로 로그인 여부결과 리턴
        	result = isValid(usrInfo, usrPw);
        	
        	
        	// 이 리턴된 로그인 페이지 입력값 유효성 검사의 결과를 찍어서 
        	// ajax 비동기 처리로 받아 로그인 페이지 내에서 처리 할 것.
        	
    	}
    	out.print(result);
    %>