<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Freelancer - KY/GH TOTO</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
<body>
 	<div class="text-center mb-3">
	<h3><label for="name">충전</label></h3>
	<form id="contactForm" data-sb-form-api-token="API_TOKEN">
    
    
    <p><label for="Account Number">환전 받을 은행을 선택해주세요</label>
    <p><select name = "Account Number">
    <option value = "카카오">카카오뱅크</option>
	<option value = "농협">농협</option>
	<option value = "국민">국민</option>
	<option value = "우리">우리</option>
	<option value = "새마을금고">새마을금고</option>
   	<label for="text">환전 받으실 계좌 (계좌번호가 다를 시 충전이 불가 할 수 있습니다.)</label>
    
    <input type = "text" maxlength = "100" size= "10" name="Acoount Number">
	</select>
    
    <p><label for="text">환전자 명 (입금자 명이 다를 시 충전이 불가 할 수 있습니다.)</label>
    
    <p><input type = "text" maxlength = "100" size= "10" name="Acoount Number">
    
    <p><label for="text">환전 금액 (충전 금액이 실제와 다를 시 충전이 불가 할 수 있습니다.)</label>
    
    <p><input type = "text" maxlength = "100" size= "10" name="Acoount Number">
	
                            
    <div class="d-none" id="submitSuccessMessage">
    <div class="text-center mb-3">
    <div class="fw-bolder">Form submission successful!</div>
    To activate this form, sign up at
    <br />
    <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
    </div>
    </div>
    <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
    <a class="navbar-brand" href="./1_로그인.jsp">
    <button class="btn btn-primary btn-xl disabled" id="submitButton" type="submit">충전 신청</button></a>
    </form>
    </div>
    </div>
    </div>
    </section>
</body>
</html>