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
Statement stmt = null; 

sql = "insert into mem(name, age, weight, addr, phone)";
sql = sql + "values ('" + na + "','" + ag + "','" + we +"','" + ad +"','" + ph +"')";

out.println(sql);

stmt = conn.createStatement();

try{
	stmt.execute(sql);
	
}catch(Exception e) {
	
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
           <P><P><P>
           <h2>넘어오는 변수 값 출력</h2>

</body>
</html>