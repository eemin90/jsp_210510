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
	<h3>03 include</h3>

	<jsp:include page="04include-action-tag.jsp"></jsp:include>
	
	<h3>03 include</h3>
</div>
</body>
</html>