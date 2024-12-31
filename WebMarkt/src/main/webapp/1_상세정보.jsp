<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Home" %>
<%@ page import="dao.HomeRepository" %>
<jsp:useBean id = "homeDAO" class ="dao.HomeRepository"  scope = "session" />

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>호수 상세 정보</title>
</head>
<body>
	<jsp:include page = "menu.jsp" />
	<h1>호실 정보</h1>
	
	
	<%
		String name = request.getParameter("name");
		Home home = homeDAO.getHomeByname(name);

	%>
	
	<p><b>세입자 :</b> <%= home.getHomename() %>
	<p><b>공인중개사</b> : <%=home.getrealtor() %>
	<p> <a href ="#" class = "btn btn-info"> 청소 업체 연락</a>
	<p><a href = "./1_홈페이지.jsp" class= "btn btn-secondary"> 홈페이지 &raquo;</a>
	
</body>
</html>