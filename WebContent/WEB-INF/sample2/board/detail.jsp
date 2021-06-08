<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>detail</title>
</head>
<body>
<s2:navbar />
<div class="container">
	<h1>${board.boardId}번 글 보기</h1>
	
	<form id="form1" action="${pageContext.request.contextPath}/sample2/board/modify" method="post">
		제목 : <br>
		<input type="text" id="input1" name="title" value="${board.title}" readonly required /> <br>
		본문 : <br> 
		<textarea rows="5" id="textarea1" name="body" readonly><c:out value="${board.body}" /></textarea> <br>
		작성자 : <br> 
		<input type="text" value="${board.memberName}" readonly /> <br>
		작성시간 : <br> 
		<input type="text" value="${board.timeAgo}" readonly /> <br>
		
		<c:if test="${sessionScope.userLogined.id == board.memberId}">
			<script>
				$(document).ready(function() {
					$("#button1").click(function() {
						$("#submit1, #submit2").removeAttr("hidden");
						$("#input1, #textarea1").removeAttr("readonly");					});
					
					$("#submit2").click(function(e) {
						e.preventDefault();
						
						if (confirm("삭제 하시겠습니까?")) {
							var path = "${pageContext.request.contextPath}/sample2/board/remove";
							$("#form1").attr("action", path);
							$("#form1").submit();
						}
					});				});
			</script>
		
			<br>
			<input type="number" name="boardId" value="${board.boardId}" hidden />
			<button type="button" id="button1">수정</button>
			<input type="submit" id="submit1" value="전송" hidden />
			<input type="submit" id="submit2" value="삭제" hidden />
		</c:if>
	</form>
	
	<s2:message />
</div>
</body>
</html>