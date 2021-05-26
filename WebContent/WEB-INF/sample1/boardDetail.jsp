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

<script>
	$(document).ready(function() {
		$("#button1").click(function() {
			if ($("#input2").val() == $("#pa").attr("value")) {
				$("#form1").find("input, textarea").removeAttr("readonly");
				$("#submit1").removeAttr("hidden");
			} else {
				alert("암호가 맞지 않습니다.");
				$("#input2").val("");
			}
		});
		
		$("#submit2").mousedown(function() {
			if ($("#input2").val() == $("#pa").attr("value")) {
				$("#form1").find("input, textarea").removeAttr("readonly");
				$("#submit1").removeAttr("hidden");
			} else {
				alert("암호가 맞지 않습니다.");
				$("#input2").val("");
			}
		});
	});
</script>

<title>Insert title here</title>
</head>
<body>

<s1:navbar />

<div class="container">
	<div class="row justify-content-center">
		<div class="col-8">
			<h1>글 보기</h1>
			<form action="${pageContext.request.contextPath}/sample1/modify?${param.index}" method="post" id="form1">
				<div class="form-group">
					<label for="input1">작성자</label>
					<input value="${board.writer}" type="text" name="writer" class="form-control" id="input1" readonly />
				</div>
				<div class="form-group">
					<label for="input2">암호</label>
					<input value="" type="text" name="password" class="form-control" id="input2" />
				</div>
				<div class="form-group">
					<label for="input3">제목</label>
					<input value="${board.title}" type="text" name="title" class="form-control" id="input3" readonly />
				</div>
				<div class="form-group">
					<label for="textarea1">본문</label>
					<textarea name="body" id="textarea1" class="form-control" rows="5" readonly><c:out value="${board.body}" /></textarea>
				</div>
				<input type="text" value="${param.index}" name="index" hidden />
				<input type="text" id="pa" value="${board.password}" name="pa" hidden />
				<button type="button" id="button1" class="btn btn-secondary">수정</button>
				<input type="submit" id="submit1" class="btn btn-primary" value="전송" hidden />
			</form>
			<form action="${pageContext.request.contextPath}/sample1/delete?${param.index}" method="post" id=form2>
				<input type="text" value="${param.index}" name="index" hidden />
				<input type="submit" id="submit2" class="btn btn-danger" value="삭제" />
			</form>
		</div>
	</div>
</div>
</body>
</html>