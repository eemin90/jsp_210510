<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>

<script>
	$(document).ready(function() {
		$("#button1").click(function() {
			$("#input2, #input3, #input4").removeAttr("readonly");
			$("#submit1").removeAttr("hidden")
		});
		
		/* event 실행 방지 */
		$("#submit2").click(function(e) {
			e.preventDefault();
			
			/* var con = confirm("탈퇴 하시겠습니까?"); */
			/* if (con) { */
			if (confirm("탈퇴 하시겠습니까?")) {
				$("#form2").submit();
				alert("탈퇴 되었습니다.");
			}
			
		});
	});
</script>

</head>
<body>
<s2:navbar />
<div class="container">
	<h1>회원 정보</h1>
	<form id="form1" action="${pageContext.request.contextPath}/sample2/member/modify" method="post">
		id : <br>
		<input type="text" id="input1" name="id" value="${member.id}" class="form-control" readonly /> <br>
		pw : <br>
		<input type="text" id="input2" name="password" value="${member.password}" class="form-control" readonly /> <br>
		name : <br>
		<input type="text" id="input3" name="name" value="${member.name}" class="form-control" readonly /> <br>
		birth day : <br>
		<input type="date" id="input4" name="birth" value="${member.birth}" class="form-control" readonly /> <br>
		<button type="button" id="button1">수정</button>
		<input type="submit" id="submit1" value="전송" hidden />
	</form>
	
	<c:if test="${not empty message}">
		<br>
		<div class="alert alert-danger" role="alert">
			${message}
		</div>
	</c:if>
</div>

<div class="container">
	<form id="form2" action="${pageContext.request.contextPath}/sample2/member/remove" method="post">
		<input type="submit" id="submit2" value="탈퇴" />
	</form>
</div>
</body>
</html>