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
    	<main>
	        <div class=container2>
	            <h1 class=center-text>どこつぶリスト</h1>
	            <h3 class=still-login-message><%= loginUser.getName() %>さん、ログイン中</h3>
		    </div>
		    <div class=mutter-form-container>
		        <form action="/docoTsubu/Main" method="post" class=mutter-form>
		            <textarea name="text" class=mutter-text-form rows="4" placeholder="つぶやきを入力"></textarea>
		            <input type="submit" value="つぶやく" class=mutter-post-button>
		        </form>
		    </div>
		    <% if(mutterList != null && !mutterList.isEmpty()) { %>
			    <div class=button-container>
					<a href="/docoTsubu/Main" class=update-button>更新</a>
			    </div>
		    <% } %>
		    <div class=mutter-list>
		        <% if(errorMsg != null) { %>
		            <p class=no-mutter><%= errorMsg %></p>
		        <% } %>
		        <% if (mutterList != null && !mutterList.isEmpty()) { %>
            		<% for(Mutter mutter : mutterList) { %>
		                <div class="mutter-item">
		                    <span class="mutter-username"><%= mutter.getUserName() %></span>
		                    <span class="mutter-separator">:</span>
		                    <span class="mutter-text"><%= mutter.getText() %></span>
		                </div>
		            <% } %>
		        <% } else if (mutterList != null && mutterList.isEmpty()) { %>
		            <p>つぶやきがありません。</p>
		        <% } else { %>
		            <p>つぶやきデータを取得できませんでした。</p>
		        <% } %>
			</div>
        </main>
    </body>
</html>