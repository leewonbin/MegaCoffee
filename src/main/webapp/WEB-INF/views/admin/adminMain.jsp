<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<%@include file="header.jsp"%>
<head>
<style>
/* 전체 레이아웃 */
body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
}

.content {
	margin-left: 260px; 
	padding: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
	text-align: left;
}

th, td {
	padding: 10px;
	border: 1px solid #ddd;
}

th {
	background-color: #f4f4f4;
	font-weight: bold;
}
</style>
</head>
<body>
	<div class="topbar">
		<%@include file="topbar.jsp"%>
	</div>
	<nav>
		<%@include file="sidebar.jsp"%>
	</nav>
	<div class="content">
		<h2 id="content-title">상품 관리</h2>
		<hr>
		<div id="content-table">
			<table>
				<tr>
					<th>상품 ID</th>
					<th>상품 이름</th>
					<th>가격</th>
					<th>재고</th>
				</tr>
				<tr>
					<td>1</td>
					<td>예제 상품 1</td>
					<td>10,000원</td>
					<td>50개</td>
				</tr>
				<tr>
					<td>2</td>
					<td>예제 상품 2</td>
					<td>20,000원</td>
					<td>30개</td>
				</tr>
				<tr>
					<td>3</td>
					<td>예제 상품 3</td>
					<td>15,000원</td>
					<td>20개</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
