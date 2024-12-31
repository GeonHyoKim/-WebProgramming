<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 
<%@ page import = "dto.Product" %>
<%@ page import = "dao.ProductRepository" %>
<jsp:useBean id = "productDAO" class ="dao.ProductRepository"  scope = "session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page = "menu.jsp" />
	<h1>세입자 정보</h1>
	
	<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		Product product = productDAO.getProductById(id);
	%>
	
	<img src = "./resource/images/<%=product.getFilename()%>" style ="width : 10%" style = "height : 10%">
	
	<h3><b>거주자</b> : <%=product.getPname()%></h3>
	<p><b>주소</b> : <%=product.getDescription() %>
	<p><b>공인중개사</b> : <%=product.getManufacturer() %>
	<p><b>분류</b> : <%= product.getCategory() %>
	<h4><b>거주자 번호</b> : <%= product.getNumber() %></h4>
	<a href = "./products.jsp" class= "btn btn-secondary"> 방 목록으로 돌아가기</a>
</body>
</html>