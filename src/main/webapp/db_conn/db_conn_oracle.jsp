<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import = "java.sql.*" %>
    
    
<%
     Connection conn = null;          //Connection 객체 변수 : conn 초기화 
     String driver = "oracle.jdbc.driver.OracleDriver"; // ojdbc11.jar 
     String url = "jdbc:oracle:thin:@localhost:1521:XE"; // Oracle JDBC
     
     //예외 설정 : 오류가 발생 되더라도 프로그램이 중지 되지 않도록 설정
     try{// try 블락에서 오류가 있을때  catch {} 이작동됨
    	 // try 블락
    	 Class.forName(driver); //driver 를 로드 
         conn = DriverManager.getConnection(url,"C##HR", "1234");
    			 
    	 // JSP 에서 출력 하라		 
     //    out.println("DB 연결이 성공 했습니다.");			 
    	 
     }catch (Exception e) {
    	 // catch 블락 : try 블락의 오류가 있을때 만 작동됨
    	 
    	 out.println("DB 연결이 실패 했습니다. ");
    	
         // DB연결이 실패시 오류난 정보를 콘솔에 출력
         e.printStackTrace();    	 
     }
     
 //    out.println("<br><br> ");
 //    out.println("프로그램이 정상 작동됩니다.");
     
     


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