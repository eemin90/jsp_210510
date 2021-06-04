<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>signup</title>

<script>
	var url = "${pageContext.request.contextPath}" + "/sample2/member/checkdup";

	$(document).ready(function() {
		$("#button1").click(function() {
			var id = $("#input1").val();
			
			$.post(url, {id: id}, function(data) {
				if (data == 'ok') {
					// 가입 가능 메세지
					console.log("ok");
					$("#span1").text("사용 가능");
				} else {
					// 가입 불가능 메세지
					console.log("not ok");
					$("#span1").text("사용 불가능");
				}
			});
		});
	});
</script>

</head>
<body>
<s2:navbar />
<div class="container">
	<h1>회원 가입</h1>
	<form action="${pageContext.request.contextPath}/sample2/member/signup" method="post">
		id : <br>
		<input type="text" name="id" id="input1" class="form-control" /> <button type="button" id="button1" >중복확인</button>
		<span id="span1"></span> <br>
		pw : <br>
		<input type="text" name="password" class="form-control" /> <br>
		name : <br>
		<input type="text" name="name" class="form-control" /> <br>
		birth day : <br>
		<input type="date" name="birth" class="form-control" /> <br>
		<input type="submit" value="가입" class="form-control" />
	</form>
	
	<c:if test="${not empty message}">
		<br>
		<div class="alert alert-danger" role="alert">
			${message}
		</div>
	</c:if>
</div>
</body>
</html>