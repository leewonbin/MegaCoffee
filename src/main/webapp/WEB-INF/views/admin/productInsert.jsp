<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./common/header.jsp"%>
<style>
.info-wrap {
	width: 48%;
	height: 450px;
	border: 1px solid black;
	float: left;
	margin-left: 10px;
	margin-top: 20px;
	border-radius: 10px;
	position: relative;
}

.product-info {
	
}

.nutritional-info {
	
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
	font-size: 15px;
}

td label {
	display: inline-block;
	width: 76px;
	line-height: 10px;
	font-size: 11px;
}

ul.nutritional {
	margin-top: -10px;
	list-style-type: none;
	width: 46.93%;
	margin-left: 11px;
	float: left;
}

li {
	margin-bottom: 15px;
	padding: 5px 10px;
	line-height: 1.6;
}

dl {
	width: 100%;
	color: #444;
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

dd>input {
	width: 30px;
	text-align: right;
}

input[type=checkbox], input[type=radio] {
	accent-color: #FAD000;
	border: 0;
}

.buttonsDiv {
	float : right; 
	margin-top : 15px;
	margin-right : 30px;
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
		<h2 id="content-title">상품 추가</h2>
		<div class="product-info info-wrap">
			<span class="wrap-Info"> 상품 정보 </span>
			<table>
				<tr>
					<td>카테고리</td>
					<td>
						<input type="radio" name="category" value='1' checked />
						음료
						<input type="radio" name="category" value='2' />
						푸드
					</td>
				</tr>
				<tr>
					<td>분류</td>
					<td>
						<input type="checkbox" />
						<label>커피</label>
						<input type="checkbox" />
						<label>티</label>
						<input type="checkbox" />
						<label>에이드&주스</label>
						<input type="checkbox" />
						<label>디카페인</label><br>
						<input type="checkbox" />
						<label>음료</label>
						<input type="checkbox" />
						<label>디저트</label>
						<input type="checkbox" />
						<label>신상품</label>
						<input type="checkbox" />
						<label>스무디&프라페</label>
					</td>
				</tr>
				<tr>
					<td>메뉴 제목(K)</td>
					<td>
						<input type="text" />
					</td>
				</tr>
				<tr>
					<td>메뉴 제목(E)</td>
					<td>
						<input type="text" />
					</td>
				</tr>
				<tr>
					<td>메뉴 내용</td>
					<td>
						<textarea cols="50" rows="4"></textarea>
					</td>
				</tr>
				<tr>
					<td>냉온 여부</td>
					<td>
						<input type="checkbox" />
						ICE
						<input type="checkbox" />
						HOT
					</td>
				</tr>
				<tr>
					<td>원사이즈 여부</td>
					<td>
						<input type="checkbox" />
					</td>
				</tr>
				<tr>
					<td>이미지</td>
					<td>
						<input type="file">
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
						<input type="text" />
						<select>
							<option>oz</option>
							<option>g</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>고카페인 여부</td>
					<td>
						<input type="checkbox" />
					</td>
				</tr>
				<tr>
					<td>알레르기</td>
					<td>
						<input type="checkbox" />
						<label>아몬드</label>
						<input type="checkbox" />
						<label>우유</label>
						<input type="checkbox" />
						<label>복숭아</label>
						<input type="checkbox" />
						<label>오징어</label><br>
						<input type="checkbox" />
						<label>닭고기</label>
						<input type="checkbox" />
						<label>계란</label>
						<input type="checkbox" />
						<label>땅콩</label>
						<input type="checkbox" />
						<label>알류</label><br>
						<input type="checkbox" />
						<label>대두</label>
						<input type="checkbox" />
						<label>쇠고기</label>
						<input type="checkbox" />
						<label>토마토</label>
						<input type="checkbox" />
						<label>바지락</label><br>
						<input type="checkbox" />
						<label>밀</label>
						<input type="checkbox" />
						<label>굴</label>
						<input type="checkbox" />
						<label>돼지고기</label>
						<input type="checkbox" />
						<label>아산화황</label><br>
						<input type="checkbox" />
						<label>아황산류</label>
					</td>
				</tr>
			</table>
			<ul class="nutritional" style="border-right: 1px solid #ddd">
				<li>
					<dl>
						<dt>1회 제공량(kcal)</dt>
						<dd>
							<input type="text" />
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>포화지방(g)</dt>
						<dd>
							<input type="text" />
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>당류(g)</dt>
						<dd>
							<input type="text" />
						</dd>
					</dl>
				</li>
			</ul>

			<ul class="nutritional">
				<li>
					<dl>
						<dt>나트륨(mg)</dt>
						<dd>
							<input type="text" />
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>단백질(g)</dt>
						<dd>
							<input type="text" />
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>카페인(mg)</dt>
						<dd>
							<input type="text" />
						</dd>
					</dl>
				</li>
			</ul>
		</div>
		<div class="buttonsDiv">
			<button>추가</button>
			<button>취소</button>
		</div>
	</div>
</body>
</html>