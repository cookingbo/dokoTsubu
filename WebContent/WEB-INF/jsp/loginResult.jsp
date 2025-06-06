<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="model.User" %>
<%
// セッションスコープからユーザー情報を取得
User loginUser = (User) session.getAttribute("loginUser");
%>
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
	    <% if(loginUser != null) { %>
	    	<div class=login-message>
	        	<h2 class=login-success-message>ログインに成功しました！</h2>
	        	<h1 class=welcome-message>ようこそ<%= loginUser.getName() %>さん</h1>
	        	<a href="/docoTsubu/Main" class=mutter-list-button>つぶやき投稿・閲覧へ</a>
	    	</div>
	    <% } else { %>
	    	<div class=login-message>
		        <h2 class=login-failure-message>ログインに失敗しました</h2>
		        <a href="/docoTsubu/" class=top-back-button>TOPへ</a>
	    	</div>
	    <% } %>
    </main>
</body>
</html>