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
h2.pageInfo {
	color: #333;
	font-size: 24px;
	border-bottom: 3px solid #FAD000; /* 포인트 색상 */
	padding-bottom: 10px;
	margin-bottom: 20px;
}

.img-wrap {
	position: relative;
}

.iceOrHot {
	background-color: #007eff;
	position: absolute;
	right: 10px;
	bottom: 10px;
	color: #fff;
	padding: 5px 15px;
	border-radius: 100px;
	position: absolute;
	color: #fff;
}
/* 상품 정보 컨테이너 */
.product-container {
	display: flex;
	gap: 15px;
	align-items: flex-start;
	margin-left: 7%;
}

.product-container .details-header {
	position: relative;
	margin-bottom: -20px;
}

.details-header>div {
	border-bottom: 2px solid black;
	width: 500px;
}

.details-header .menuKName {
	margin-bottom: -10px;
}

.details-header .menuEName {
	color: gray;
}

.details-header>p {
	font-size: 14px;
	margin-bottom: 1px;
	width: 500px;
}

.details-center {
	width: 500px;
	border-bottom: 1px solid #ddd;
	color: #444;
	font-size: 14px;
}

.details-center>p {
	height: 45px;
	border-bottom: 1px solid #ddd;
	line-height: 45px;
	border-top: 1px solid #ddd;
	margin-bottom: -5px;
}

.details-center>ul {
	list-style-type: none;
	width: 49.93%;
	float: left;
}

.details-center li {
	margin-bottom: 15px;
	padding: 5px 10px;
	line-height: 1.6;
}

.details-center dl {
	width: 100%;
	font-size: 14px;
	color: #444;
}

.details-center dt {
	float: left;
	width: 85%;
}

.details-center dd {
	float: right;
	width: 15%;
	text-align: right;
	margin-left: 0px;
}

.details-bottom {
	line-height: 30px;
	width: 500px;
	color: #444;
	font-size: 14px;
}

/* 상품 이미지 */
.product-image {
	width: 400px;
	height: 450px;
	background-color: #ddd;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 14px;
	color: #666;
}

/* 상품 정보 */
.product-details {
	flex: 1;
	display: flex;
	flex-direction: column;
	gap: 15px;
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
		<h2 class="pageInfo">상품 정보</h2>
		<div class="product-container">
			<div class="img-wrap">
				<img class="product-image" src="/img/20240610132459_1717993499610_KiXcTR2q5P.jpg" />
				<div class="iceOrHot">ICE</div>
			</div>
			<!-- 상품 이미지 -->
			<!-- 상품 상세 정보 -->
			<div class="product-details">
				<div class="details-header">
					<div>
						<h2 class="menuKName">라떼</h2>
						<p class="menuEName">latte [oneSize]</p>
					</div>
					<p>피스타치오 숲 속 산타가 좋아하는 은은한 향의 피스타치오 라떼에 쌉싸름한 블렌딩 커피를 추가해 더욱 고소하게 즐길 수 있는 따뜻한 라떼</p>
				</div>
				<div class="details-center">
					<p>영양 성분</p>
					<ul style="border-right: 1px solid #ddd">
						<li>
							<dl>
								<dt>1회 제공량(kcal)</dt>
								<dd>80</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>포화지방(g)</dt>
								<dd>80</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>당류(g)</dt>
								<dd>80</dd>
							</dl>
						</li>
					</ul>

					<ul>
						<li>
							<dl>
								<dt>나트륨(mg)</dt>
								<dd>80</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>단백질(g)</dt>
								<dd>80</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>카페인(mg)</dt>
								<dd>80</dd>
							</dl>
						</li>
					</ul>
					<label>알레르기 성분:</label> <span class="value">알레르기</span> <br>
					<label>고카페인 함유</label>
				</div>
				<div class="details-bottom">
					<label>분류 : </label> <span class="value">커피, 디카페인</span><br> 
					<div style="float: right">
						<button>수정</button>
						<button>삭제</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
