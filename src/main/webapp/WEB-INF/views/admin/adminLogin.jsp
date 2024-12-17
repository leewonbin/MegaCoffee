<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<%@include file="header.jsp" %>
<body>
<c:if test="${msg ne null}">
	<script>
		showAlert("${msg}");
	</script>
</c:if>
	<form action="/admin/login" method="post">
		<input type="text" name="admin_id" placeholder="id" required>
		<input type="password" name="admin_pw" placeholder="password" required>
		<button>로그인</button>
	</form>
</body>
</html>