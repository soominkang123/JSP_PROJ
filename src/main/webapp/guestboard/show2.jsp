<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.sql.*" %>    
<%@ include file = "../db_conn/db_conn_oracle.jsp" %>

<%
    // DB에 값을 읽어와서 ResultSet 객체에 저장
    String sql = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    
    sql = "select * from guestboard order by name desc" ;
    
    //pstmt 객체 활성화
    pstmt = conn.prepareStatement(sql);
    
    try{
    //pstmt 객체를 실행후 rs 에 저장 : rs : select한 모든 레코드를 저장
    rs = pstmt.executeQuery();
    
    }catch (Exception e) {
    	out.println("DB에서 select 중 오류가 발생되었습니다. ");
    	e.printStackTrace();
    	
    }
    



%>
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      
      <h2> PreparedStatement 쿼리 실행후 rs 에 담아서 출력</h2>
      
      <table width = "600px" border="1">
          <tr> <th> 이름 </th> <th> 메일주소 </th><th> 제목 </th><th> 내용 </th><th> 
      
      <%
         if( rs.next()){
             do{
      %>
         <!-- 출력부분 : 테이블의 컬럼명으로 출력 ex)1234출력가능  -->
         <tr><td> <%=rs.getString("name") %> </td> 
            </td> <%=rs.getString("email") %> </td>
             <td> <%=rs.getString("subject") %> </td>
             <td> <%=rs.getString("content") %> </td>
             <tr>
         
      <%
            
             } while (rs.next());
             
         } else{
        	 out.println("DB에 값이 존재하지 않습니다. ");
         }
      
      %>
      
   </table>      
</body>
</html>