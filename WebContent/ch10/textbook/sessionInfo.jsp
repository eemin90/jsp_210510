<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@page import="java.text.SimpleDateFormat"%>

<% request.setCharacterEncoding("UTF-8"); %>

<%
	Date time = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>세션 정보</title>
</head>
<body>
<div class="container">
	세션 ID: <%= session.getId() %> <br>
	
	<%
		time.setTime(session.getCreationTime());
	%>
	
	세션 생성 시간: <%= formatter.format(time) %> <br>
	
	<%
		time.setTime(session.getLastAccessedTime());
	%>
	
	최근 접근 시간: <%= formatter.format(time) %>
</div>
</body>
</html>