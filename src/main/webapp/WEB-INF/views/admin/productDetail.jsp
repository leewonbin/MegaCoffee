<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./common/header.jsp"%>
<style>
/* 전체 레이아웃 */
body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background-color: #f9f9f9;
}

/* 콘텐츠 영역 */
.content {
	margin-left: 260px; /* 사이드바 넓이 */
	padding: 20px;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

/* 제목 스타일 */
h2 {
	color: #333;
	font-size: 24px;
	border-bottom: 3px solid #FAD000; /* 포인트 색상 */
	padding-bottom: 10px;
	margin-bottom: 20px;
}

/* 상품 정보 컨테이너 */
.product-container {
	display: flex;
	gap: 20px;
	margin-top: 20px;
	align-items: flex-start;
}

/* 상품 이미지 */
.product-image {
	width: 250px;
	height: 250px;
	background-color: #ddd;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 14px;
	color: #666;
	border: 1px solid #ccc;
}

/* 상품 정보 */
.product-details {
	flex: 1;
	display: flex;
	flex-direction: column;
	gap: 30px;
}

.product-details label {
	font-weight: bold;
	color: #555;
}

.product-details .value {
	font-size: 16px;
	color: #333;
}

/* 영양성분 카드 레이아웃 */
.nutrition-cards {
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	gap: 10px;
	width: 500px;
	height: 200px;
	margin-top: 20px; /* 영양성분 카드 아래 여백 추가 */
}

.nutrition-card {
	background-color: #fff;
	border: 1px solid #ddd;
	border-radius: 8px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	padding: 5px;
	text-align: center;
	font-size: 12px;
}

.nutrition-card h3 {
	margin-top: 15px;
	font-size: 14px;
	color: #333;
}

.nutrition-card p {
	margin: 5px 0 0;
	font-size: 12px;
	color: #555;
}

/* 버튼 스타일 */
.buttons {
	margin-top: 20px; /* 추가된 여백 */
	display: flex;
	justify-content: space-between;
}

.buttons form {
	display: inline-block;
	margin-right: 10px;
}

.buttons input[type="submit"] {
	padding: 5px 15px;
	border: none;
	cursor: pointer;
	font-size: 14px;
	border-radius: 5px;
}

.btn-danger {
	background-color: #ff5e5e;
	color: #fff;
}

.btn-primary {
	background-color: #007bff;
	color: #fff;
}
</style>
</head>
<body>
	<div class="topbar">
		<%@include file="./common/topbar.jsp"%>
	</div>
	<nav>
		<%@include file="./common/sidebar.jsp"%>
	</nav>
	<div class="content">
		<h2>상품 정보</h2>
		<div class="product-container">
			<!-- 상품 이미지 -->
			<div class="product-image">상품 이미지</div>
			<!-- 상품 상세 정보 -->
			<div class="product-details">
				<div>
					<label>상품 아이디:</label> <span class="value">12345</span>
				</div>
				<div>
					<label>상품명:</label> <span class="value">상품명</span>
				</div>
				<div>
					<label>상품 설명:</label> <span class="value">상품설명</span>
				</div>
				<div>
					<label>알레르기 성분:</label> <span class="value">알레르기</span>
				</div>
				<div>
					<label>고카페인 여부:</label> <span class="value">N</span>
				</div>
			</div>
			<!-- 영양성분 카드 -->
			<div class="nutrition-cards">
				<div class="nutrition-card">
					<h3>포화지방</h3>
					<p>5g</p>
				</div>
				<div class="nutrition-card">
					<h3>당류</h3>
					<p>15g</p>
				</div>
				<div class="nutrition-card">
					<h3>나트륨</h3>
					<p>300mg</p>
				</div>
				<div class="nutrition-card">
					<h3>단백질</h3>
					<p>10g</p>
				</div>
				<div class="nutrition-card">
					<h3>카페인</h3>
					<p>50mg</p>
				</div>
				<div class="nutrition-card">
					<h3>칼로리</h3>
					<p>200kcal</p>
				</div>
				<div class="buttons">
					<input type="submit" value="삭제" class="btn btn-danger" />
					<input type="submit" value="수정" class="btn btn-primary" />
				</div>
			</div>
		</div>
	</div>
</body>
</html>
