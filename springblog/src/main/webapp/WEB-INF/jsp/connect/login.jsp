<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jspf/head.jspf" %>
<title>Nrimi's blog / Login</title>
<style>
#btn {background-color: #fff;
         border-color:#fff; 
         margin-left: 460px; }
</style>
</head>
<body>
    <%@ include file="/WEB-INF/jspf/nav.jspf" %>
    
    <header class="intro-header" style="background-image: url('/image/contact-bg.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="page-heading">
                        <h1>LOGIN</h1>
                        <hr class="large">
                    </div>
                </div>
            </div>
        </div>
    </header>

	<div class="container">
		<h3>로그인하기</h3>

		<form action="/signin/facebook" method="POST">
			<input type="hidden" name="_csrf" value="${_csrf.token}"></input> 
			<div class="formInfo">
				<p>글 작성을 위해 로그인 해 주세요.</p>
			</div>
			<p>
				<button class="btn" id="btn" type="submit"><img class="btn-image" src="/image/f-login.jpg"></button>
			</p>
		</form>
	</div>

	<%@ include file="/WEB-INF/jspf/footer.jspf" %>
</body>
</html>