<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.topbar {
	width: 100%;
	height: 80px;
	display: flex;
	border-bottom: 1px solid #ddd;
	justify-content: space-between;
	align-items: center;
	background-color: #f9f9f9;
}

.topbar .nickName {
	margin-right: 80px;
	font-size: 16px;
	color: #555;
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
		<p class="nickName">관리자 닉네임</p>
	</div>
</body>
</html>