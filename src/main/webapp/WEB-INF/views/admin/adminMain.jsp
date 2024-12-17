<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<%@include file="header.jsp"%>
<head>
<style>
.topbar {
	width: 100%;
	height: 80px;
	display: flex;
	border-bottom: 1px solid #ddd;
	justify-content: space-between;
	align-items: center;
}

.topbar .nickName {
	margin-right : 80px;
}

.topbar .logo {
	width: 230px;
	margin-left: 12px;
}
</style>
</head>
<body>
	<div class="topbar">
		<img class="logo" src="/img/logo.png">
		<p class="nickName">asfdsdf</p>
	</div>
	<nav>
		<%@include file="sidebar.jsp"%>
	</nav>
</body>
</html>