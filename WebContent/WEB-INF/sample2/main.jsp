<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>main</title>
</head>
<body>
<s2:navbar />
<div class="container">
	<c:choose>
		<c:when test="${empty sessionScope.userLogined}">
			<h1>환영합니다</h1>
		</c:when>
		<c:when test="${not empty sessionScope.userLogined}">
			<h1>환영합니다. ${userLogined.id}님</h1>
		</c:when>
	</c:choose>
	<a href="<%= request.getContextPath() %>/sample2/signup">회원가입</a>
</div>
</body>
</html>