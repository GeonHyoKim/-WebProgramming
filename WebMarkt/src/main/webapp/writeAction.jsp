<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 게시글을 작성할 수 있는 데이터베이스는 BbsDAO객체를 이용해서 다룰수 있기때문에 참조 -->	
<%@ page import="bbs.BbsDAO"%>
<!-- bbsdao의 클래스 가져옴 -->
<%@ page import="java.io.PrintWriter"%>
<!-- 자바 클래스 사용 -->
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
%>
<!-- 하나의 게시글 정보를 담을 수 있게 Bbs자바빈즈를 사용-->
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page" />
<!-- 하나의 게시글 인스턴스 구현 -->
<jsp:setProperty name="bbs" property="bbsTitle" />
<jsp:setProperty name="bbs" property="bbsContent" />
<%
	System.out.println(bbs);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객센터</title>
</head>
<body>
	<%
			if (bbs.getBbsTitle() == null || bbs.getBbsContent() == null) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안된 사항이 있습니다')");
				script.println("history.back()");
				script.println("</script>");
			//모든 조건이 다 만족 되었을때
			} else {
				//실제로 데이터 베이스에 등록을 해준다 BbsDAO 인스턴스를 만들고,
				BbsDAO BbsDAO = new BbsDAO();
				//write함수를 실행해서 실제로 게시글을 작성 할 수 있게한다. 함수(차례대로 매개변수를 넣어준다.) 이러면 아주 간단하게 작동한다.
				int result = BbsDAO.write(bbs.getBbsTitle(), bbs.getBbsID(), bbs.getBbsContent());
				//만약에 함수에 반환된 값이 -1라면 디비오류 발생이니까
				if (result == -1) {
					//실패띄워줌
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글쓰기에 실패했습니다')");
					script.println("history.back()");
					script.println("</script>");
				} else {
					//그렇지않으면 성공적으로 글을 작성한 부분이기때문에 게시판 메인화면으로 보낸다.
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href='bbs.jsp'");
					//script.println("history.back()");
					script.println("</script>");
				}
			
		}
	%>
</body>
</html>