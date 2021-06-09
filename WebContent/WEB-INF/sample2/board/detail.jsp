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

<c:if test="${not empty sessionScope.userLogined}">
	<div class="container mt-5">
		<form action="${pageContext.request.contextPath}/sample2/comment/add" method="post">
			<textarea name="comment"></textarea>
			<br>
			<input name="memberId" value="${sessionScope.userLogined.id}" readonly />
			<br>
			<input name="boardId" value="${board.boardId}" readonly />
			<br>
			<input type="submit" value="댓글 작성" />
		</form>
	</div>
</c:if>
	
	<div class="container mt-5">
		<c:forEach items="${comments}" var="comment">
			<script>
				$(document).ready(function() {
					var $form = $('#' + 'comment${comment.id}Form');
					var $modifyButton = $('#' + 'comment${comment.id}Button1');
					var $deleteButton = $('#' + 'comment${comment.id}Button2');
					var $submitButton = $('#' + 'comment${comment.id}Button3');
					
					$modifyButton.click(function(e) {
						e.preventDefault();
						$form.find("textarea").removeAttr("readonly");
						$(this).attr("hidden", "hidden"); // this(여기서는 $modifyButton)의 attr값 중 hidden의 value를 hidden으로 설정(hidden이 없었으니 새로 생김(hidden="hidden"))
						$submitButton.removeAttr("hidden");
					});
					
					$submitButton.click(function() {
						alert("수정 되었습니다.");
					});
					
					$deleteButton.click(function(e) {
						e.preventDefault();
						
						if (confirm("삭제 하시겠습니까?")) {
							$form.attr("action", "${pageContext.request.contextPath}/sample2/comment/remove");
							alert("삭제 되었습니다.");
							$form.submit();
						}
					});
				});
			</script>
			<div>
				<form id="comment${comment.id}Form" action="${pageContext.request.contextPath}/sample2/comment/modify" method="post">
					<input name="commentId" value="${comment.id}" hidden />
					<input name="boardId" value="${board.boardId}" hidden />
					<textarea name="comment" readonly>${comment.comment}</textarea>
					<span>${comment.memberName}</span>
					<span>${comment.timeAgo}</span>
				
					<c:if test="${sessionScope.userLogined.id == comment.memberId}">
						<button id="comment${comment.id}Button1">수정</button>
						<button id="comment${comment.id}Button3" hidden>전송</button>
						<button id="comment${comment.id}Button2">삭제</button>
					</c:if>
				</form>
			</div>
		</c:forEach>
	</div>
</body>
</html>