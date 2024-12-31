<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" >  
<link rel="stylesheet" href="css/bootstrap.css"> 
<link rel="stylesheet" href="css/custom.css">
<title>JSP 게시판 웹 사이트</title>
<style type = "text/css">
</style>
</head>
<body>

<li class="active"><a href="bbs.jsp">고객센터</a></li>
<li class="active"><a href="products.jsp">홈 화면</a></li>
           
    <!-- 특정한 내용들을 담을 공간을 확보 해준다.-->
    <div class="container">
        <!-- 테이블이 들어갈 수 있는 공간 구현 -->
        <div class="row">
         	<!-- striped는 게시판 글목록을 홀수와 짝수로 번갈아가며 색이 변하게 해주는 하나의 요소  -->
            <table class="table table-striped" style="text-align:center; border:1px solid #dddddd">
                <!-- thead는 테이블의 제목부분에 해당함 -->
                <thead>
                	<!-- 테이블의 하나의 행을 말함(한 줄)-->
                    <tr>
                    	<!-- 게시판의 속성을 하나씩 명시 해준다. -->
                        <th style="background-color:#eeeeee; text-align:center;">번호</th>
                        <th style="background-color:#eeeeee; text-align:center;">제목</th>
                        <th style="background-color:#eeeeee; text-align:center;">작성자</th>
                        <th style="background-color:#eeeeee; text-align:center;">작성일</th>
                    </tr>
                </thead>
                <!-- tbody 같은 경우는 위에 지정해준 속성 아래에 하나씩 출력해주는 역할 -->
                <tbody>
                <!--임시 데이터 삽입 -->
              		<tr>
                    	<td>1</td>
                        <td>안녕하세요</td>
                        <td>김건효</td>
                        <td>2022-12-15</td>
                    </tr>   
                </tbody>
            </table>
            
            
          
            <!-- 테이블 자체는 글의 목록을 보여주는 역할밖에 하지않는다. 글을 쓸수있는 화면으로 넘어갈 수 있는 태그 설정-->
            <a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>