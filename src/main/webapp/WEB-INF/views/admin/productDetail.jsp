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
	position: absolute;
	right: 10px;
	bottom: 10px;
	color: #fff;
	padding: 5px 15px;
	border-radius: 100px;
	position: absolute;
	color: #fff;
}

.HOT {
	background-color: #ff5a5a;
}

.ICE {
	background-color: #007eff;
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

.otherNutrient {
	margin-top: 34px;
	margin-left: 265px;
	position: absolute;
	width: 200px;
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
				<img class="product-image" src="/img/${mnDto.menu_file_id }" />
				<c:if test="${mnDto.menu_ice_hot ne null }">
					<div class="iceOrHot ${mnDto.menu_ice_hot}">${mnDto.menu_ice_hot }</div>
				</c:if>
			</div>
			<!-- 상품 이미지 -->
			<!-- 상품 상세 정보 -->
			<div class="product-details">
				<div class="details-header">
					<div>
						<h2 class="menuKName">${mnDto.menu_title }</h2>
						<p class="menuEName">${mnDto.menu_eng_title }${mnDto.menu_onesize != 'N' ? '[OneSize]' : ''}</p>
					</div>
					<p>${mnDto.menu_content }</p>
				</div>
				<div class="details-center">
					<p>영양 성분</p>
					<ul style="border-right: 1px solid #ddd">
						<li>
							<dl>
								<dt>1회 제공량(kcal)</dt>
								<dd>${mnDto.nut_calorie }</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>포화지방(g)</dt>
								<dd>${mnDto.nut_saturated }</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>당류(g)</dt>
								<dd>${mnDto.nut_sugar }</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>나트륨(mg)</dt>
								<dd>${mnDto.nut_sodium }</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>단백질(g)</dt>
								<dd>${mnDto.nut_protein }</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>카페인(mg)</dt>
								<dd>${mnDto.nut_caffeine }</dd>
							</dl>
						</li>
					</ul>
					<div class="otherNutrient">
						<label>알레르기 성분:</label> <span class="value"> <c:if test="${allergenList ne null }">
								<c:forEach var="all" items="${allergenList}" varStatus="status">
									<c:choose>
										<c:when test="${status.last}">
										${all.all_name}
									</c:when>
										<c:otherwise>
										${all.all_name}, 
									</c:otherwise>
									</c:choose>
								</c:forEach>
							</c:if></span>
					</div>
					<br>
					<c:if test="${nDto.nut_high_caffeine eq 'Y' }">
						<label>고카페인 함유</label>
					</c:if>
				</div>
				<div class="details-bottom">

					<label>분류 : </label> <span class="value"> <c:if test="${typeList ne null }">
							<c:forEach items="${typeList }" var="type" varStatus="status">
								<c:choose>
									<c:when test="${status.last}">
										${type.type_name }
									</c:when>
									<c:otherwise>
										${type.type_name }, 
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</c:if>
					</span><br>
					<div style="float: right">
						<button type="button" onclick="location.href='/admin/moveModify?menu_id=${mnDto.menu_id}'">수정</button>
						<button type="button" onclick="productDelete(${mnDto.menu_id})">삭제</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function productDelete(menu_id) {
		    if(confirm("삭제하시겠습니까 ?")) {
				location.href="/admin/productDelete?menu_id="+menu_id;
		    }
		}
	</script>
</body>
</html>
