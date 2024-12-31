<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UserDao" %> 
<%@ page import="java.io.PrintWriter" %> 
<% request.setCharacterEncoding("UTF-8"); %> 
<jsp:useBean id="user" class="dto.User" scope="page"/> 
<jsp:setProperty name="user" property="id" />
<jsp:setProperty name="user" property="passwd" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Web Site</title>
</head> 
<body>

	<%  
		UserDao userDAO = new UserDao();
		int result = userDAO.login(user.getId(), user.getPasswd());
		if (result == 1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'products.jsp'");
			script.println("</script>");
		}
		else if (result == 0){ 
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다.')");	
			script.println("history.back()");	
			script.println("</script>");
		}
		else if (result == -2){ 
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다.')");	
			script.println("history.back()");	
			script.println("</script>");
		}
		else if (result == -1){ 
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스에 오류가 발생했습니다.')");	
			script.println("history.back()");	
			script.println("</script>");
		}
		
	%>
</body>
</html>