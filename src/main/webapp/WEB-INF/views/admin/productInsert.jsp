<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./common/header.jsp"%>
<style>
.info-wrap {
	width: 44%;
	height: 450px;
	border: 1px solid black;
	float: left;
	margin-left: 63px;
	margin-top: 20px;
	border-radius: 10px;
	position: relative;
}

.wrap-Info {
	position: absolute;
	background-color: white;
	font-size: 16px;
	top: -11px;
	left: 23px;
	width: 84px;
	text-align: center;
}

table {
	border-collapse: separate;
	border-spacing: 20px;
	font-size: 14px;
}

td label {
	display: inline-block;
	width: 110px;
	line-height: 10px;
	font-size: 14px;
}

ul.nutritional {
	margin-top: -10px;
	list-style-type: none;
	width: 45.93%;
	margin-left: -5px;
	float: left;
}

li {
	margin-bottom: 15px;
	padding: 5px 10px;
	line-height: 1.6;
}

dt {
	float: left;
	width: 85%;
}

dd {
	float: right;
	width: 15%;
	text-align: right;
	margin-left: 0px;
}

input[type=checkbox], input[type=radio] {
	accent-color: #FAD000;
	border: 0;
}

.buttonsDiv {
	float: right;
	margin-top: 15px;
	margin-right: 30px;
}

/* input number 화살표 지움 */
input::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
	-webkit-appearance: none;
	margin: 0;
}

input[type=number] {
	width: 30px;
	text-align: right;
	-moz-appearance: textfield;
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
		<form action="/admin/productInsert" method="post">
			<h2 id="content-title">상품 추가</h2>
			<div class="product-info info-wrap">
				<span class="wrap-Info"> 상품 정보 </span>
				<table>
					<tr>
						<td>카테고리</td>
						<td>
							<input type="radio" name="category_id" value='1' checked />
							<label>음료</label>
							<input type="radio" name="category_id" value='2' />
							<label>푸드</label>
						</td>
					</tr>
					<tr>
						<td>분류</td>
						<td>
							<c:forEach var="type" items="${typeList }" varStatus="status">
								<input type="checkbox" name="type_id" value="${type.type_id }" />
								<label>${type.type_name }</label>
								<c:if test="${status.count % 4 == 0 }">
									<br>
								</c:if>
							</c:forEach>
						</td>
					</tr>
					<tr>
						<td>메뉴 제목(K)</td>
						<td>
							<input type="text" name="menu_title" />
						</td>
					</tr>
					<tr>
						<td>메뉴 제목(E)</td>
						<td>
							<input type="text" name="menu_eng_title" />
						</td>
					</tr>
					<tr>
						<td>메뉴 내용</td>
						<td>
							<textarea cols="50" rows="4" name="menu_content"></textarea>
						</td>
					</tr>
					<tr>
						<td>냉온 여부</td>
						<td>
							<input type="radio" name="menu_ice_hot" value="ICE" />
							<label>ICE</label>
							<input type="radio" name="menu_ice_hot" value="HOT" />
							<label>HOT</label>
							<input type="radio" name="menu_ice_hot" value="null" checked />
							<label>선택안함</label>
						</td>
					</tr>
					<tr>
						<td>원사이즈 여부</td>
						<td>
							<input type="checkbox" name="menu_onesize" value="Y" />
						</td>
					</tr>
					<tr>
						<td>이미지</td>
						<td>
							<input type="file" name="menu_file_id">
						</td>
					</tr>
				</table>
			</div>
			<div class="nutritional-info info-wrap">
				<span class="wrap-Info"> 영양 정보 </span>
				<table>
					<tr>
						<td>용량 / 단위</td>
						<td>
							<input type="number" name="nut_size" />
							<select name="nut_unit">
								<option value="oz">oz</option>
								<option value="g">g</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>고카페인 여부</td>
						<td>
							<input type="checkbox" name="nut_high_caffeine" value="Y" />
						</td>
					</tr>
					<tr>
						<td>알레르기</td>
						<td>
							<c:forEach var="all" items="${allergenList }" varStatus="status">
								<input type="checkbox" name="all_id" value="${all.all_id }" />
								<label>${all.all_name }</label>
								<c:if test="${status.count % 4 == 0 }">
									<br>
								</c:if>
							</c:forEach>
						</td>
					</tr>
					<tr>
						<td>영양 성분</td>
						<td>
							<ul class="nutritional" style="border-right: 1px solid #ddd">
								<li>
									<dl>
										<dt>1회 제공량(kcal)</dt>
										<dd>
											<input type="number" name="nut_calorie" step="0.01" />
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>포화지방(g)</dt>
										<dd>
											<input type="number" name="nut_saturated" step="0.01" />
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>당류(g)</dt>
										<dd>
											<input type="number" name="nut_sugar" step="0.01" />
										</dd>
									</dl>
								</li>
							</ul>

							<ul class="nutritional">
								<li>
									<dl>
										<dt>나트륨(mg)</dt>
										<dd>
											<input type="number" name="nut_sodium" step="0.01" />
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>단백질(g)</dt>
										<dd>
											<input type="number" name="nut_protein" step="0.01" />
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>카페인(mg)</dt>
										<dd>
											<input type="number" name="nut_caffeine" step="0.01" />
										</dd>
									</dl>
								</li>
							</ul>
						</td>
					</tr>
				</table>
			</div>
			<div class="buttonsDiv">
				<input type="submit" value="추가" />
				<button>취소</button>
			</div>
		</form>
	</div>
</body>
</html>