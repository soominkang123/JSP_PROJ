<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.sql.*, java.util.*" %> 
    
<% 
String na = request.getParameter("name");
String ag = request.getParameter("age");
String we = request.getParameter("weight");
String ad = request.getParameter("addr");
String ph = request.getParameter("phone");
%>

<%@ include file = "../db_conn/db_conn_oracle.jsp" %>

<% 
  String sql = null;             
  PreparedStatement pstmt = null ;
 
  sql = "insert into mem(name, age, weight, addr, phone)";
  sql = sql + " values (?,?,?,?,?)";
  
  pstmt = conn.prepareStatement(sql);
  
    pstmt.setString(1, na);	
	pstmt.setString(2, ag);	
	pstmt.setString(3, we);	
	pstmt.setString(4, ad);
	pstmt.setString(5, ph);
	
	try  {
		
	}catch (Exception e) {
   	 
   	 e.printStackTrace();
   	 out.println("DB 저장에 실패 했습니다.");
   	 
    }
  
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