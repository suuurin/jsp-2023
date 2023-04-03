<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
<title>게시판 보기</title>
</head>
<style>
	.container {
	width: 60%;
	text-align: center;
	justify-content: center;
	margin:0 auto;
	}
	
	textarea {
	width: 100%;
    height: 500px;
    resize: none;
	}

</style>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
	%>
	
	<div class="container">
		<h3> 제목: <%= title %></h3>
		<h5 style="text-align:left"> 작성자: <%= id %> </h5>
		<textarea readonly>내용: <%= content %></textarea>
	</div>
	
</body>
</html>