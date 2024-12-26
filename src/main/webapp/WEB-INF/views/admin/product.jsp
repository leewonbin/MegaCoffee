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
	<c:if test="${not empty msg }">
		<script>
			showAlert("${msg}");
		</script>
	</c:if>
	<div class="content">
		<h2 id="content-title">상품 관리</h2>
		<div id="content-table">
			<table class="list">
				<tr>
					<th>상품 ID</th>
					<th>상품 이름(K)</th>
					<th>상품 이름(E)</th>
					<th>생성 일자</th>
					<th>수정 일자</th>
					<th>활성 여부</th>
				</tr>
				<c:choose>
					<c:when test="${menuList ne null }">
						<c:forEach items="${menuList }" var="menu">
							<tr onclick='location.href="/admin/productDetail?menu_id=${menu.menu_id }"'>
								<td>${menu.menu_id }</td>
								<td>${menu.menu_title }</td>
								<td>${menu.menu_eng_title }</td>
								<td>${menu.menu_date }</td>
								<td>${menu.menu_update }</td>
								<td>${menu.menu_del }</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<p>메뉴 없음</p>
					</c:otherwise>
				</c:choose>
			</table>
			<button type="button" class="addButton">상품 추가</button>
		</div>
	</div>
	<script>
		$(".addButton").on("click",function() {
		    location.href="/admin/moveInsert";
		})
	</script>
</body>
</html>