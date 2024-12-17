<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<%@include file="header.jsp"%>
<body>
	<c:if test="${msg ne null}">
		<script>
	    showAlert("${msg}");
	</script>
	</c:if>
	<ul>
		<li><a href="/admin/menu">메뉴</a></li>
		<li><a href="/admin/board">메가소식</a></li>
	</ul>
</body>
</html>