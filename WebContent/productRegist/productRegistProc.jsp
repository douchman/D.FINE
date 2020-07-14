<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%!
    
    public MultipartRequest getMultiReq(HttpServletRequest request, String uploadFile, int maxSz){
    	//서버의 실제 경로
       String uploadFilePath = request.getServletContext().getRealPath(uploadFile);
    	//System.out.print(uploadFilePath);
       int maxSize = 1024*1024*maxSz;   //10MB
       
       MultipartRequest multiReq = null;
       try{
    	   multiReq = new MultipartRequest(
    	      request, uploadFilePath, maxSize, "utf-8", 
    	      new DefaultFileRenamePolicy());
       }catch(Exception e){e.printStackTrace();}
       //System.out.println(multiReq);
       return multiReq;
    }
    
    
    
    %>
    
    
    
    <%
    	MultipartRequest multiReq = getMultiReq(request, "uploadFile", 10);
    
    	
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>