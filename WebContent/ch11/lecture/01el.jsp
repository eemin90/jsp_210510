<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	- Expression Language(EL): 표현 언어
	- 문법: ${var}
	- var: 4개 영역(page, request, session, application)의 attribute
	- page 영역 부터 request, session, application 영역 순으로 찾는다. 없으면 찾지 않음
</div>
</body>
</html>