<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
<title>회원가입 정보 보기</title>
</head>
<body>
  <%
	request.setCharacterEncoding("utf-8");
  
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String pwd = request.getParameter("pwd");
	String gender = request.getParameter("gender");
	String adress = request.getParameter("adress");
	String[] hobby = request.getParameterValues("hobby");
	%>
	
	<% out.println("이름: " + name); %> <br>
	<% out.println("이메일: " + email); %> <br>
	<% out.println("비밀번호: " + pwd); %> <br>
	<% out.println("성별: " + gender); %> <br>
	<% out.println("주소지: " + adress); %> <br>
	
	취미: <% if (hobby != null) {
		for(int h=0; h<hobby.length; h++) {
			out.print(hobby[h]);
		    if (h < hobby.length - 1) {
                out.print(", ");
		    }
		 }
		} else {
			out.print("선택 x");
		}
		%>
		
</body>
</html>