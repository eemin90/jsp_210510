<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>옵션 선택 화면</title>
</head>
<body>
<div class="container">
	
	<form action="<%= request.getContextPath() %>/ch07/textbook/view.jsp">
		<div class="form-group">
		
			<label for="select1">		
				보고 싶은 페이지 선택:
			</label>
			
			<select class="form-control" id="select1" name="code">
				<option value="A">A 페이지</option>
				<option value="B">B 페이지</option>
				<option value="C">C 페이지</option>
			</select>

		</div>
		
		<input type="submit" class="btn btn-primary" value="이동">
	</form>
</div>
</body>
</html>