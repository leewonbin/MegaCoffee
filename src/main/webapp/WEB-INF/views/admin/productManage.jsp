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

.img_name {
	width: 200px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
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
	width: 40px;
	text-align: right;
	border: none; border-bottom : 1px solid #CCC;
	-moz-appearance: textfield;
	border-bottom: 1px solid #CCC;
}

input:focus, textarea:focus {
	border : 2px solid #FAD000; 
	border-radius : 5px;
	outline : none;
	
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
		<h2 id="content-title">${mnDto eq null ? '상품 추가' : '상품 수정' }</h2>

		<!-- 폼 태그 시작 -->
		<form action="${mnDto eq null ? '/admin/productInsert' : '/admin/productModify'}" method="post" enctype="multipart/form-data" onsubmit="return validate()">
			<div class="product-info info-wrap">
				<span class="wrap-Info"> 상품 정보 </span>
				<c:if test="${mnDto ne null }">
					<input type="hidden" name="menu_id" value="${mnDto.menu_id }" />
					<input type="hidden" name="nut_id" value="${mnDto.nut_id }" />
					<input type="hidden" name="menu_file_id" value="${mnDto.menu_file_id }"/>
				</c:if>
				<table>
					<tr>
						<td>카테고리</td>
						<td>
							<input type="radio" name="category_id" value='1' ${mnDto.category_id == 1 || mnDto.category_id == null  ? 'checked="checked"' : '' } />
							<label>음료</label>
							<input type="radio" name="category_id" value='2' ${mnDto.category_id == 2 ? 'checked="checked"' : '' } />
							<label>푸드</label>
						</td>
					</tr>
					<tr>
						<td>분류</td>
						<td>
							<c:forEach var="type" items="${typeList }" varStatus="status">
								<c:set var="loop_flag" value="true" />
								<c:forEach var="selectType" items="${selectTypeList }">
									<c:if test="${loop_flag}">
										<c:choose>
											<c:when test="${type.type_id == selectType.type_id }">
												<c:set var="check" value='checked' />
												<c:set var="loop_flag" value="false" />
											</c:when>
											<c:otherwise>
												<c:set var="check" value='' />
											</c:otherwise>
										</c:choose>
									</c:if>
								</c:forEach>
								<input type="checkbox" name="type_id" value="${type.type_id }" ${check } />
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
							<input type="text" name="menu_title" value="${mnDto.menu_title }" />
						</td>
					</tr>
					<tr>
						<td>메뉴 제목(E)</td>
						<td>
							<input type="text" name="menu_eng_title" value="${mnDto.menu_eng_title }" />
						</td>
					</tr>
					<tr>
						<td>메뉴 내용</td>
						<td>
							<textarea cols="50" rows="4" name="menu_content">${mnDto.menu_content }</textarea>
						</td>
					</tr>
					<tr>
						<td>냉온 여부</td>
						<td>
							<input type="radio" name="menu_ice_hot" value="ICE" ${mnDto.menu_ice_hot == 'ICE' ? 'checked="checked"' : '' } />
							<label>ICE</label>
							<input type="radio" name="menu_ice_hot" value="HOT" ${mnDto.menu_ice_hot == 'HOT' ? 'checked="checked"' : '' } />
							<label>HOT</label>
							<input type="radio" name="menu_ice_hot" value="" ${empty mnDto.menu_ice_hot? 'checked="checked"' : '' } />
							<label>선택안함</label>
						</td>
					</tr>
					<tr>
						<td>원사이즈 여부</td>
						<td>
							<input type="checkbox" name="menu_onesize" value="Y" ${mnDto.menu_onesize == 'Y' ? 'checked="checked"' : '' } />
						</td>
					</tr>
					<tr>
						<td>이미지</td>
						<td>
							<input type="text" value="${mnDto.menu_file_id }" readonly />
							<input type="file" name="menu_img" />
						</td>
					</tr>
					
					<tr>
						<td>활성화 여부</td>
						<td>
							<select name="menu_del">
								<option value="N" ${mnDto.menu_del == 'N' ? 'selected="selected"' : '' }>N</option>
								<option value="Y" ${mnDto.menu_del == 'Y' ? 'selected="selected"' : '' }>Y</option>
							</select>
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
							<input type="number" name="nut_size" value="${mnDto.nut_size }" />
							<select name="nut_unit">
								<option value="oz" ${mnDto.nut_unit == 'oz' ? 'selected="selected"' : '' }>oz</option>
								<option value="g" ${mnDto.nut_unit == 'g' ? 'selected="selected"' : '' }>g</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>고카페인 여부</td>
						<td>
							<input type="checkbox" name="nut_high_caffeine" value="Y" ${mnDto.nut_high_caffeine == 'Y' ? 'checked="checked"' : '' } />
						</td>
					</tr>
					<tr>
						<td>알레르기</td>
						<td>
							<c:forEach var="all" items="${allergenList }" varStatus="status">
								<c:set var="loop_flag" value="true" />
								<c:forEach var="selectAllergen" items="${selectAllergenList }">
									<c:if test="${loop_flag }">
										<c:choose>
											<c:when test="${all.all_id == selectAllergen.all_id }">
												<c:set var="check" value="checked" />
												<c:set var="loop_flag" value="false" />
											</c:when>
											<c:otherwise>
												<c:set var="check" value='' />
											</c:otherwise>
										</c:choose>
									</c:if>
								</c:forEach>
								<input type="checkbox" name="all_id" value="${all.all_id }" ${check } />
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
							<ul class="nutritional">
								<li>
									<dl>
										<dt>1회 제공량(kcal)</dt>
										<dd>
											<input type="number" name="nut_calorie" step="0.01" value="${mnDto.nut_calorie }" />
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>포화지방(g)</dt>
										<dd>
											<input type="number" name="nut_saturated" step="0.01" value="${mnDto.nut_saturated}" />
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>당류(g)</dt>
										<dd>
											<input type="number" name="nut_sugar" step="0.01" value="${mnDto.nut_sugar }" />
										</dd>
									</dl>
								</li>
							</ul>

							<ul class="nutritional" style="border-left: 1px solid #ddd; margin-left: 15px;">
								<li>
									<dl>
										<dt>나트륨(mg)</dt>
										<dd>
											<input type="number" name="nut_sodium" step="0.01" value="${mnDto.nut_sodium }" />
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>단백질(g)</dt>
										<dd>
											<input type="number" name="nut_protein" step="0.01" value="${mnDto.nut_protein }" />
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>카페인(mg)</dt>
										<dd>
											<input type="number" name="nut_caffeine" step="0.01" value="${mnDto.nut_caffeine }" />
										</dd>
									</dl>
								</li>
							</ul>
						</td>
					</tr>
				</table>
			</div>
			<div class="buttonsDiv">
				<button type="submit">${mnDto eq null ? '상품 추가' : '상품 수정' }</button>
				<button type="reset">취소</button>
			</div>
		</form>
		<!-- 폼 태그 끝 -->
	</div>
	<script src="/js/common/validate.js"></script>
</body>
</html>
