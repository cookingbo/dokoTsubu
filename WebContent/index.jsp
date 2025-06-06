<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
    <jsp:include page="/WEB-INF/jsp/header.jsp" />
    <main>
        <div class="container">
            <h1 class="center-text">どこつぶへようこそ</h1>
        </div>
        <div class="login-form-container">
            <form action="/docoTsubu/Login" method="post" class="login-form">
                <p>ユーザー名:<input type="text" name="name" class="login-user-form"></p>
                <p>パスワード:<input type="password" name="pass" class="login-password-form"></p>
                <input type="submit" value="ログイン" class="login-button">
            </form>
        </div>
    </main>
</body>
</html>