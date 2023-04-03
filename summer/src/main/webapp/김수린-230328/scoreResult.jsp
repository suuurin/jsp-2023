<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
<title>점수 보기</title>
</head>
<body>
  <% //클라이언트에서 보낸 데이터를 받기
    request.setCharacterEncoding("UTF-8");		//한글
    String name = request.getParameter("name"); //파라메터 이름으로 받기
    int guk = Integer.parseInt(request.getParameter("guk"));
    int eng = Integer.parseInt(request.getParameter("eng"));
    int math = Integer.parseInt(request.getParameter("math"));
    int total = guk + eng + math;
    double avg = (double)total / 3; 
    
    out.println("이름: " + name + "<br>");
    out.println("국어: " + guk + "<br>");
    out.println("영어: " + eng + "<br>");
    out.println("수학: " + math + "<br>");
    
    out.println("총점: " + total + "<br>");
    out.println("평균: " + String.format("%.2f", avg));
  %>
  
</body>
</html>