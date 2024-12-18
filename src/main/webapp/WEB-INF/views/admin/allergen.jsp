<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./common/header.jsp"%>
</head>
<body>
	<div class="topbar">
		<%@include file="./common/topbar.jsp"%>
	</div>
	<nav>
		<%@include file="./common/sidebar.jsp"%>
	</nav>
	<div class="content">
		<h2 id="content-title">알레르기 관리</h2>
		<hr>
		<div id="content-table">
			<table>
				<tr>
					<th>알레르기 ID</th>
					<th>알레르기 이름</th>
				</tr>
				<tr>
					<td>1</td>
					<td>예제 상품 1</td>
				</tr>
				<tr>
					<td>2</td>
					<td>예제 상품 2</td>
				</tr>
				<tr>
					<td>3</td>
					<td>예제 상품 3</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>