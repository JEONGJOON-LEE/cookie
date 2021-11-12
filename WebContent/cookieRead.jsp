<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 읽기</title>
</head>
<body>

<%
//	쿠키를 읽어올 때는 여러개를 한꺼번에 읽어오기 때문에 배열로 받는다.
	Cookie[] cookies = request.getCookies();
	out.println(cookies + "<br>");
	
	for (Cookie cookie : cookies){
//		out.println(cookie + "<br>");
//		JSESSIONID는 jsp가 사용하는 시스템 쿠키로 접속한 컴퓨터를 식별하는 용도로 사용된다.
//		getName(): 쿠키 이름을 얻어온다.
		out.println(cookie.getName() + "<br>");
//		getValue(): 쿠키 내용을 얻어온다.
//		out.println(cookie.getValue() + "<br>");
		out.println("쿠키 이름: " + cookie.getName() + ", 쿠키내용: " + URLDecoder.decode(cookie.getValue()) + "<br>");
//		8.0 이하 버전에서는 내용이 한글인 쿠키를 저장할 때는 에러가 발생하기 때문에 인코딩 과정을 거처 저장해야 했지만
//		읽어올 때는 그냥 읽어와도 에러가 발생하지 않는다. 다만, %EC%95%84%EB%A1%B1%EC%9D%B4 형태로 인코딩된 유니코드 자체를
//		가져오기 때문에 읽을 수 없다.
//		8.0 이하 버전에서는 한글인 쿠키를 읽어올 때는 디코딩 과정을 거쳐야 한글을 읽을 수 있다.
//	
	}
%>

</body>
</html>