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
	<c:choose>
		<c:when test="${param.category eq 'faq' }">
			<c:set var="title" value="FAQ" />
		</c:when>
		<c:when test="${param.category eq 'notice' }">
			<c:set var="title" value="공지사항" />
		</c:when>
		<c:when test="${param.category eq 'voc' }">
			<c:set var="title" value="고객의 소리" />
		</c:when>
		<c:otherwise>
			<c:set var="title" value="메뉴" />
		</c:otherwise>
	</c:choose>
	<div class="content">
		<h2 id="content-title">${title }</h2>
		<div id="content-table">
			<table class="list">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>글쓴이</th>
					<th>작성 일자</th>
					<th>수정 일자</th>
					<th>활성 여부</th>
				</tr>
				<tr>
				<!-- 테이블 내용 추가 -->
					<td colspan="6">
						<p style="text-align: center;">- 게시글 없음 -</p>
					</td>
				</tr>
			</table>
			<button type="button" class="addButton">게시글 작성</button>
		</div>
	</div>
</body>
</html>