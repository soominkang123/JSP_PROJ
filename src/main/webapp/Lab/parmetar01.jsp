<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 
      int a = 0;
      int b = 0;
      
      String c = null;
      String d = null;
      
      c = request.getParameter("aa"); //10  // ?aa=10&bb=20 입력시 숫자 10 20 나옴 String
      d = request.getParameter("bb"); //20
      
      a = Integer.parseInt(c);
      b = Integer.parseInt(d);
      
      out.println (a + "<p>");
      out.println (b + "<p>");
      
      a = Integer.parseInt(request.getParameter("cc"));
      b = Integer.parseInt(request.getParameter("dd"));
      
      out.println ("<hr>");
      out.println (a + "<p>");
      out.println (b + "<p>");
      
 
 
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