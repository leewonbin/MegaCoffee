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
		<div id="content-table">
			<table class="list">
				<tr>
					<th>알레르기 ID</th>
					<th>알레르기 이름</th>
				</tr>
				<c:choose>
					<c:when test="${allergenList ne null }">
						<c:forEach items="${allergenList }" var="all">
							<tr>
								<td>${all.all_id }</td>
								<td>${all.all_name }</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<p>알레르기 없음</p>
					</c:otherwise>
				</c:choose>
			</table>
			<button type="button" class="addButton">알레르기 추가</button>
		</div>
	</div>
</body>
</html>