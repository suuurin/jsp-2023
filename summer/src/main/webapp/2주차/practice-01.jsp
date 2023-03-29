<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.time.*"
    trimDirectiveWhitespaces="true"
    info="copyright by kimsurin"
    %> 
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  현재 날짜 : <%=LocalDate.now() %> <br>
  파일 정보 : <%=getServletInfo() %>
</body>
</html>