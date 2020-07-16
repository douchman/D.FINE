<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@include file="/common/dbConn.jspf"%>


<%!

	public boolean Insert1(Connection conn){
		boolean result =  true;
		
		PreparedStatement pstmt = null;
		
		String query = "INSERT ALL "+
				"INTO DfineMember (usrID, usrPW, usrLastName, usrfirstName, usrAddress, usrPhone, Age, gender) " +
				"values ('firstman','111111','sanghyun','park','Incheon','010-8123-3111','28','M') "+
				"SELECT * FROM Dual;";
				/*
				"INTO DfineMember (usrID, usrPW, usrLastName, usrfirstName, usrAddress, usrPhone, Age, gender) " +
				"values ('seccondman','222222','Kagami','Ryohei','Asakusa','010-753-3111','43','M') " +
				"INTO DfineMember (usrID, usrPW, usrLastName, usrfirstName, usrAddress, usrPhone, Age, gender) " +
				"values ('third','333333','dsadg','park','Seoul','010-319-3111','18','W') " +
				"INTO DfineMember (usrID, usrPW, usrLastName, usrfirstName, usrAddress, usrPhone, Age, gender) " +
				"values ('four','444444','John','Doe','Busan','010-477-3111','38','W') " +
				"INTO DfineMember (usrID, usrPW, usrLastName, usrfirstName, usrAddress, usrPhone, Age, gender) " +
				"values ('five','555555','Will','Smith','NewYork','010-582-3111','24','M') " +
				"INTO DfineMember (usrID, usrPW, usrLastName, usrfirstName, usrAddress, usrPhone, Age, gender) " +
				"values ('testGuy','666666','Aron','Nevil','Washington','010-467-3111','32','M') " +
				"INTO DfineMember (usrID, usrPW, usrLastName, usrfirstName, usrAddress, usrPhone, Age, gender) " +
				"values ('flash','888888','Kelly','Clarkson','U.S.A','010-1235-3111','36','W') " +
				"INTO DfineMember (usrID, usrPW, usrLastName, usrfirstName, usrAddress, usrPhone, Age, gender) " +
				"values ('java','777777','Sales','Man','Barcelona','010-7547-3111','52','M') " +
				"SELECT * FROM Dual;";
				*/
				
				String query2 = 
		
						"INSERT INTO DfineMember (usrID, usrPW, usrLastName, usrfirstName, usrAddress, usrPhone, Age, gender) " +
						"values ('seccondman','222222','Kagami','Ryohei','Asakusa','010-753-3111','43','M'); " +
						"INSERT INTO DfineMember (usrID, usrPW, usrLastName, usrfirstName, usrAddress, usrPhone, Age, gender) " +
						"values ('third','333333','dsadg','park','Seoul','010-319-3111','18','W'); " +
						"INSERT INTO DfineMember (usrID, usrPW, usrLastName, usrfirstName, usrAddress, usrPhone, Age, gender) " +
						"values ('four','444444','John','Doe','Busan','010-477-3111','38','W'); " +
						"INSERT INTO DfineMember (usrID, usrPW, usrLastName, usrfirstName, usrAddress, usrPhone, Age, gender) " +
						"values ('five','555555','Will','Smith','NewYork','010-582-3111','24','M'); " +
						"INSERT INTO DfineMember (usrID, usrPW, usrLastName, usrfirstName, usrAddress, usrPhone, Age, gender) " +
						"values ('testGuy','666666','Aron','Nevil','Washington','010-467-3111','32','M'); " +
						"INSERT INTO DfineMember (usrID, usrPW, usrLastName, usrfirstName, usrAddress, usrPhone, Age, gender) " +
						"values ('flash','888888','Kelly','Clarkson','U.S.A','010-1235-3111','36','W'); " +
						"INSERT INTO DfineMember (usrID, usrPW, usrLastName, usrfirstName, usrAddress, usrPhone, Age, gender) " +
						"values ('java','777777','Sales','Man','Barcelona','010-7547-3111','52','M'); "+ 
						"insert into DfineMember (usrID, usrPW, usrLastName, usrfirstName, usrAddress, usrPhone, Age, gender) " +
						"values ('javsaa','7177777','Salses','sMan','Barcselona','010-7147-111','12','W');";
						
		
		try{
			pstmt = conn.prepareStatement(query2);
			//pstmt.setString(1, orderhis.getusrID());
			//pstmt.setString(2, orderhis.getbrandName());
			
			pstmt.execute();
		}
		catch(Exception e ){
			e.printStackTrace();
			result = false;
			
		}
		finally{
			if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
			if(conn !=null)	try{conn.close();}catch(Exception e){}
			}	  
	
		
		return result;
	
	}



public boolean Insert(Connection conn,String  usrId,String productID,int quantity, int price, String brandName){
	boolean result =  true;
	
	PreparedStatement pstmt = null;
	
	String query = "INSERT INTO DfineOrderHistory( usrId, productID, quantity, payAmount, brandName)"+
				   "values( '?', '?', '?', '?', '?' );";
				 
	
	try{
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, usrId);
		pstmt.setString(2, productID);
		pstmt.setInt(3, quantity);
		pstmt.setInt(4, quantity*price);
		pstmt.setString(5, brandName);
		
		pstmt.execute();
	}
	catch(Exception e ){
		e.printStackTrace();
		result = false;
		
	}
	finally{
		if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
		if(conn !=null)	try{conn.close();}catch(Exception e){}
		}	  

	
	return result;

}




public boolean Update(Connection conn,String customerMemo){
	boolean result =  true;
	
	PreparedStatement pstmt = null;
	
	String query = "UPDATE DfineCustomer SET "+
				   "customerMemo = ? ;";
				 
	
	try{
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, customerMemo);
		
		
		pstmt.execute();
	}
	catch(Exception e ){
		e.printStackTrace();
		result = false;
		
	}
	finally{
		if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
		if(conn !=null)	try{conn.close();}catch(Exception e){}
		}	  

	
	return result;

}
%>


<%
	Connection conn  = getConn("localhost", "1521", "xe");
	Insert1(conn);
%>