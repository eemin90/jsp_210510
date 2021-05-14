<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

<%
	Cookie cookie = new Cookie("oneh", "1time");
	cookie.setMaxAge(60 * 60); //60초(1분) * 60 = 1시간
	response.addCookie(cookie);
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>쿠키 유효시간 설정</title>
</head>
<body>
<div class="container">
	<h1>유효시간이 1시간인 oneh 쿠키 생성.</h1>
</div>
</body>
</html>