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
<title>ȣ�� �� ����</title>
</head>
<body>
	<jsp:include page = "menu.jsp" />
	<h1>ȣ�� ����</h1>
	
	
	<%
		String name = request.getParameter("name");
		Home home = homeDAO.getHomeByname(name);

	%>
	
	<p><b>������ :</b> <%= home.getHomename() %>
	<p><b>�����߰���</b> : <%=home.getrealtor() %>
	<p> <a href ="#" class = "btn btn-info"> û�� ��ü ����</a>
	<p><a href = "./1_Ȩ������.jsp" class= "btn btn-secondary"> Ȩ������ &raquo;</a>
	
</body>
</html>