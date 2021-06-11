<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>write</title>
</head>
<body>
<s2:navbar />
<div class="container">
<div class="row">
<div class="col-8 mx-auto">
	<h1>글 작성</h1>
	<form action="${pageContext.request.contextPath}/sample2/board/write" method="post">
		<div class="form-group">
			<label for="input1">제목 : </label>
			<input type="text" name="title" id="input1" class="form-control" required>
		</div>
		<div class="form-group">
			<label for="textarea1">본문 : </label>
			<textarea name="body" id="textarea1" class="form-control" rows="10"></textarea>
		</div>
		<input type="submit" value="작성" class="btn btn-primary">
	</form>
</div>
</div>
</div>
</body>
</html>