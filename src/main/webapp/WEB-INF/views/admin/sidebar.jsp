<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
nav {
	width: 250px;
	background-color: white;
	border-right: 1px solid #ddd;
	position: fixed;
	height: 100%;
}

ul, .menu {
	padding-left: 0px;
}

.menu li {
	list-style-type: none;
	height: 30px;
	line-height: 30px;
	display: block;
	padding: 20px 20px;
	font-size: 15px;
	color: black;
	cursor: pointer;
}

.menu li:hover {
	background-color: #FAD000;
}

div.childrenMenu a {
	margin-left: 15px;
}

</style>
</head>
<body>
	<nav>
		<ul class="menu">
			<li class="parentMenu">메뉴</li>
			<div class="childrenMenu" style="display: none;">
				<ul>
					<li><a>상품</a></li>
					<li><a>카테고리</a></li>
					<li><a>알레르기</a></li>
				</ul>
			</div>
			<li class="parentMenu">게시판</li>
			<div class="childrenMenu" style="display: none;">
				<ul>
					<li><a>FAQ</a></li>
					<li><a>공지사항</a></li>
					<li><a>고객의 소리</a></li>
				</ul>
			</div>
		</ul>
	</nav>
	<script>
	$(".parentMenu")
		.on(
			"click",
			function(e) {
			    console.log(e.target.style.backgroundColor);
			    e.target.style.backgroundColor = e.target.style.backgroundColor == "" ? "#FAD000"
				    : "";
			    /* $(e.target).css("background-color","#FAD000") */
			    $(e.target).next().slideToggle(300);
			    /* console.log(e);
			    let childrenMenu = e.target.nextElementSibling;
			    childrenMenu.style.display = childrenMenu.style.display == "none" ? "block" : "none"; */
			})
    </script>
</body>
</html>