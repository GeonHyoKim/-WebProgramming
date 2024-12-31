<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<% request.setCharacterEncoding("utf-8");%>

<% 
   String id = request.getParameter("id");
   String passwd= request.getParameter("passwd");
   String name = request.getParameter("name");
   String number = request.getParameter("number");
   String birth_date = request.getParameter("birth_date");
   String sex = request.getParameter("sex");
   Timestamp register=new Timestamp(System.currentTimeMillis());

   Connection conn=null;
   PreparedStatement pstmt=null;
   String str="";
   try{
 	 String jdbcUrl="jdbc:mysql://localhost:3306/GH";
     String dbId="root";
     String dbPass="1234";
 	 
 	 Class.forName("com.mysql.jdbc.Driver");
 	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
 	
 	 String sql= "insert into member values (?,?,?,?,?,?,?)";
 	 pstmt=conn.prepareStatement(sql);
 	 pstmt.setString(1,id);
     pstmt.setString(2,passwd);
 	 pstmt.setString(3,name);
 	 pstmt.setString(4,number);
 	 pstmt.setString(5,birth_date);
 	 pstmt.setString(6,sex);
 	 pstmt.setTimestamp(7,register);
 	 pstmt.executeUpdate();
 	 
 	 out.println("member 테이블에 새로운 레코드를 추가했습니다.");
	
 	}catch(Exception e){ 
 		e.printStackTrace();
 		out.println("member 테이블에 새로운 레코드를 추가에 실패했습니다");
 	}finally{
 		if(pstmt != null) 
 			try{pstmt.close();}catch(SQLException sqle){}
 		if(conn != null) 
 			try{conn.close();}catch(SQLException sqle){}
 	}
   
 %>
 <script>
 	location.href = "1_로그인.jsp";
 </script>
 