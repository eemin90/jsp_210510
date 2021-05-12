<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="ch07.Page" %>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>

<%
	Page p = new Page(3, 10);
	request.setAttribute("page", p);
%>

<div class="container">
	<jsp:include page="07request-attribute-sub.jsp" />
</div>
</body>
</html>