<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User, model.Mutter, java.util.List" %>
<%
// セッションスコープに保存されたユーザ情報を取得
User loginUser = (User) session.getAttribute("loginUser");
// リクエストスコープに保存されたつぶやきリストを取得
List<Mutter> mutterList = (List<Mutter>) request.getAttribute("mutterList");
// リクエストスコープに保存されたエラーメッセージを取得
String errorMsg = (String) request.getAttribute("errorMsg");
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
        <div class=container>
            <h1 class=center-text>どこつぶリスト</h1>
            <h3 class=still-login-message><%= loginUser.getName() %>さん、ログイン中</h3>
	    </div>
	    <div class=mutter-form-container>
	        <form action="/docoTsubu/Main" method="post" class=mutter-form>
	            <p>
	            <input type="text" name="text" class=mutter-text-form>
	            <input type="submit" value="つぶやく" class=mutter-post-button>
	            </p>
	        </form>

	        <% if(errorMsg != null) { %>
	            <p><%= errorMsg %></p>
	        <% } %>

	        <% if (mutterList != null) {%>
	            <% for(Mutter mutter : mutterList) { %>
	                <p><%= mutter.getUserName() %>:<%= mutter.getText() %></p>
	            <% } %>
	        <% } else { %>
	            <p>つぶやきがありません。</p>
	        <% } %>

	        <a href="/docoTsubu/Main" class=update-button>更新</a>
	        <a href="/docoTsubu/Logout" class=logout-button>ログアウト</a>
        </div>
    </body>
</html>