<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>login</title>
</head>
<body>
<s2:navbar />
<div class="container">
	
	<h1>로그인</h1>
	<form action="${pageContext.request.contextPath}/sample2/member/login" method="post">
		<div class="form-group">
			<label for="input1">아이디</label>
			<input type="text" id="input1" name="id" class="form-control">
		</div>
		<div class="form-group">
			<label for="input2">암호</label>
			<input type="text" id="input2" name="password" class="form-control">
		</div>
		<input type="submit" value="로그인" class="btn btn-primary">
	</form>
	
	<s2:message />
</div>
</body>
</html>