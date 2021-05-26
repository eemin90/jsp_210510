<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>
<%@ taglib prefix="s1" tagdir="/WEB-INF/tags/sample1" %>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>

<s1:navbar />

<div class="container">
	<div class="row justify-content-center">
		<div class="col-8">
			<h1>글 쓰기</h1>
			<form action="" method="post">
			<div class="form-group">
				<label for="input1">작성자</label>
				<input type="text" name="writer" class="form-control" id="input1" />
			</div>
			<div class="form-group">
				<label for="input2">제목</label>
				<input type="text" name="title" class="form-control" id="input2" />
			</div>
			<div class="form-group">
				<label for="textarea1">본문</label>
				<textarea name="body" id="textarea1" class="form-control" rows="5"></textarea>
			</div>
				<input type="submit" class="btn btn-primary" />
			</form>
		</div>
	</div>
</div>
</body>
</html>