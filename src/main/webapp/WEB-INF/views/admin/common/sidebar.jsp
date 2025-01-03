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

.menu .childrenMenu {
	/* background-color : #ddd; */
	
}

.menu li:hover {
	background-color: #FAD000;
}

div.childrenMenu a {
	margin-left: 15px;
	text-decoration-line: none;
	color: black;
}

.active {
	background-color: #FAD000;
}
</style>
</head>
<body>
	<nav>
		<ul class="menu">
			<li class="parentMenu">메뉴</li>
			<div class="childrenMenu product_menu" style="display: none;">
				<ul>
					<li data-category='drink'><a>음료</a></li>
					<li data-category='food'><a>푸드</a></li>
					<li data-category='product'><a>상품</a></li>
				</ul>
			</div>
			<li class="parentMenu">게시판</li>
			<div class="childrenMenu board_menu" style="display: none;">
				<ul>
					<li data-category='faq'><a>FAQ</a></li>
					<li data-category='notice'><a>공지사항</a></li>
					<li data-category='voc'><a>고객의 소리</a></li>
				</ul>
			</div>
		</ul>
	</nav>
	<script>
	$(function() {
	    let cateElement = $('li[data-category="'+"${param.category}"+'"]')
	    if(cateElement != null) {
	  		let sameMenu = cateElement.closest("div");		// 형제 메뉴 모두 표시
	 	    sameMenu.toggle();
		    sameMenu.prev().addClass("active");
		    cateElement.addClass("active");
	    }
	})
	
	$(".product_menu li").on("click",function(e) {
	    let category = $(e.target).attr("data-category");
	    location.href='/admin/product?category=' + category;
	})
	
	$(".board_menu li").on("click",function(e) {
	    let category = $(e.target).attr("data-category");
	    location.href='/admin/board?category=' + category;
	})
	
	$(".parentMenu").on("click",function(e) {
	    let element = $(e.target); 
	    
	    element.next().slideToggle();
	    element.siblings("li.parentMenu").next().hide();

	})
    </script>
</body>
</html>