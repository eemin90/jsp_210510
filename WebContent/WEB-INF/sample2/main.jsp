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
<%--
<div class="container">
	<c:choose>
		<c:when test="${empty sessionScope.userLogined}">
			<h1>환영합니다</h1>
		</c:when>
		<c:when test="${not empty sessionScope.userLogined}">
			<h1>환영합니다. ${userLogined.id}님</h1>
		</c:when>
	</c:choose>
	<a href="<%= request.getContextPath() %>/sample2/member/signup">회원가입</a>
</div>
--%>
<div class="jumbotron">
	<c:choose>
		<c:when test="${empty sessionScope.userLogined}">
			<h1 class="display-4">환영합니다!</h1>
			<p class="lead">기본 Servlet/JSP 회원제 게시판 어플리케이션입니다.</p>
			<hr class="my-4">
			<p>첫번 째 게시판 입니다! 아래 회원가입 버튼을 눌러 회원가입 후 게시글을 작성해 보세요!</p>
			<a class="btn btn-primary btn-lg" href="<%= request.getContextPath() %>/sample2/member/signup" role="button"><i class="fas fa-user-friends"></i> 회원가입</a>
		</c:when>
		<c:when test="${not empty sessionScope.userLogined}">
			<h1 class="display-4">환영합니다. ${userLogined.id}님</h1>
			<p class="lead">기본 Servlet/JSP 회원제 게시판 어플리케이션입니다.</p>
			<hr class="my-4">
			<p>게시글을 작성해 보세요!</p>
			<a class="btn btn-primary btn-lg" href="<%= request.getContextPath() %>/sample2/board/write" role="button">글쓰기</a>
		</c:when>
	</c:choose>
</div>
</body>
</html>