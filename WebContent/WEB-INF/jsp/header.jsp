
<!-- ヘッダー用のjspファイル -->
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
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>どこつぶ</title>
	    <link rel="stylesheet" href="/css/style.css">
	</head>
	<body>
	    <header>
	    	<a href="/docoTsubu/Main" class=site-title-link>どこつぶ</a>
	    	<% if(loginUser != null) { %>
	    		<a href="/docoTsubu/Logout" class=logout-button>ログアウト</a>
	    	<% } %>
	    </header>
	</body>
</html>

