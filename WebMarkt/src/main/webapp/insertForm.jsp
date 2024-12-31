<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<link rel="stylesheet" href="../css/style.css"/>
<head>

</head>
<body>
<form method="post" action="insertPro.jsp">
   <table>
    <tr>
      <td class="label"><label for="id">아이디</label>
      <td class="content"><input id="id" name="id" type="text" size="20" 
          maxlength="50" placeholder="GeonHyo717" autofocus required>
    <tr>
      <td class="label"><label for="passwd">비밀번호</label>
      <td class="content"><input id="passwd" name="passwd" type="password" 
          size="20" placeholder="6~16자 숫자/문자" maxlength="16" required>
    <tr>
      <td class="label"><label for="name">이름</label>
      <td class="content"><input id="name" name="name" type="text" size="20" 
                 maxlength="10" placeholder="김건효" required>
    <tr>
      <td class="label"><label for="name">휴대폰 번호</label>
      <td class="content"><input id="addr" name="number" type="text" size="20" 
                 maxlength="100" placeholder="010-5440-2281" required>
    <tr>
      <td class="label"><label for="name">생년월일</label>
      <td class="content"><input id="birth_date" name="birth_date" type="text" size="20" 
                 maxlength="60" placeholder="2000-07-17" required>
    <tr>
      <td class="label"><label for="name">성별</label>
      <td class="content"><input id="sex" name="sex" type="text" size="20" 
                 maxlength="10" placeholder="남자/여자" required>
    <tr>
      <td class="label"><label for="name">가입일자</label>
      <td class="content"><input id="reg_date" name="reg_date" type="text" size="20" 
                 maxlength="10" placeholder="2022-12-16" required>   
              
    <tr>
      <td class="label2"  colspan="2" ><input type="submit" value="입력완료"></a>
         <input type="reset" value="다시작성">
  </table>
</form>
</body>
