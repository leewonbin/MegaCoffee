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
		<h2 id="content-title">상품 관리</h2>
		<hr>
		<div id="content-table">
			<table>
				<tr>
					<th>상품 ID</th>
					<th>상품 이름(K)</th>
					<th>상품 이름(E)</th>
					<th>카테고리</th>
					<th>생성 일자</th>
					<th>수정 일자</th>
					<th>활성 여부</th>
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