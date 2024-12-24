<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<style type="text/css">
@charset "UTF-8"; 

[ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak,
	.x-ng-cloak, .ng-hide:not(.ng-hide-animate) {
	display: none !important;
}

ng\:form {
	display: block;
}
</style>
<title>메가MGC커피</title>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="title" content="메가MGC커피">
<meta name="Subject"
	content="메가커피 커피전문점, 프랜차이즈, 메가엠지씨커피, 빅사이즈 투샷, 가맹안내, 테이크아웃">
<meta name="keywords"
	content="메가커피 커피전문점, 프랜차이즈, 메가엠지씨커피, 빅사이즈 투샷, 가맹안내, 테이크아웃">
<meta name="Descript-xion"
	content="메가커피 커피전문점, 프랜차이즈, 메가엠지씨커피, 빅사이즈 투샷, 가맹안내, 테이크아웃">
<meta name="Description"
	content="메가커피 커피전문점, 프랜차이즈, 메가엠지씨커피, 빅사이즈 투샷, 가맹안내, 테이크아웃">
<meta name="Publisher" content="chingooplus">
<meta name="Other Agent" content="chingooplus">
<meta name="Distribution" content="chingooplus">
<meta name="Copyright" content="chingooplus">
<meta name="Author" content="chingooplus">
<meta name="Robots" content="ALL">
<!-- <meta name="Robots" content="noindex"> -->
<!-- naver start -->
<meta name="naver-site-verification"
	content="855dc64a4a2ca80c4cb373c1b30a054d1807804e">
<!-- naver end -->
<!-- webmaster start -->
<meta property="og:type" content="website">
<meta property="og:title" content="메가MGC커피">
<meta property="og:site_name"
	content="메가커피 커피전문점, 프랜차이즈, 메가엠지씨커피, 빅사이즈 투샷, 가맹안내, 테이크아웃">
<meta property="og:description"
	content="메가커피 커피전문점, 프랜차이즈, 메가엠지씨커피, 빅사이즈 투샷, 가맹안내, 테이크아웃">
<meta property="og:url" content="https://www.mega-mgccoffee.com/">
<meta property="og:image" content="/thumbnail.png?ver=202307100845">
<!-- webmaster end -->
<!-- app start-->
<meta property="al:ios:url" content="applinks://docs">
<meta property="al:ios:app_store_id" content="12345">
<meta property="al:ios:app_name" content="App Links">
<meta property="al:android:url" content="applinks://docs">
<meta property="al:android:app_name" content="App Links">
<meta property="al:android:package" content="org.applinks">
<meta property="al:web:url" content="http://applinks.org/documentation">
<!-- app end-->
<link rel="canonical" href="https://www.mega-mgccoffee.com/">
<link rel="icon" href="/favicon.ico?ver=202307100845" sizes="16x16">
<link rel="icon" href="/favicon.ico?ver=202307100845" sizes="32x32">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@900&amp;display=swap">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;600;700;900&amp;display=swap">

<link rel="stylesheet" type="text/css"
	href="https://use.fontawesome.com/releases/v6.0.0/css/all.css">
<link rel="stylesheet" type="text/css"
	href="https://img.79plus.co.kr/megahp/common/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" type="text/css"
	href="/common/css/simple-line-icons.min.css">
<link rel="stylesheet" type="text/css" href="/common/css/style.css">
<link rel="stylesheet" type="text/css"
	href="https://img.79plus.co.kr/megahp/common/css/animate.css">
<link rel="stylesheet" type="text/css" href="/common/css/aos.css">

<script type="text/javascript"
	src="https://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript"
	src="https://img.79plus.co.kr/megahp/common/js/bootstrap.js"></script>
<script type="text/javascript"
	src="https://img.79plus.co.kr/megahp/common/js/jquery.flexslider.js"></script>
<script type="text/javascript"
	src="https://img.79plus.co.kr/megahp/common/js/jquery.bxslider.js"></script>
<script type="text/javascript" src="/common/js/common.js"></script>

<!-- daterangepicker -->
<link rel="stylesheet" type="text/css"
	href="/common/css/daterangepicker.min.css">
<script type="text/javascript"
	src="https://img.79plus.co.kr/megahp/common/js/angular.min.js"></script>
<script type="text/javascript"
	src="https://img.79plus.co.kr/megahp/common/js/angular-messages.min.js"></script>
<script type="text/javascript"
	src="https://img.79plus.co.kr/megahp/common/js/moment.min.js"></script>
<script type="text/javascript" src="/common/js/daterangepicker.min.js"></script>
<script type="text/javascript"
	src="/common/js/angular-daterangepicker.min.js"></script>
<!-- datemdpicker -->
<link rel="stylesheet" type="text/css"
	href="/common/css/mdtimepicker.css">
<script type="text/javascript" src="/common/js/mdtimepicker.js"></script>

<!-- fullPage -->
<script type="text/javascript"
	src="https://img.79plus.co.kr/megahp/common/js/jquery.fullPage.js"></script>

<!-- swiper -->
<link rel="stylesheet" type="text/css" href="/common/css/swiper.min.css">
<script type="text/javascript"
	src="https://img.79plus.co.kr/megahp/common/js/swiper.min.js"></script>

<script>
	$(document).ready(
			function() {
				$(".datepickertime_wrap input").mdtimepicker();
				$(".detail_flex_slider_wrap").flexslider(
						{
							animation : "slide",
							controlNav : "thumbnails",
							start : function() {
								$(".detail_flex_slider_wrap img").css(
										"visibility", "visible");
							},
						});
				//head_down_menu start
				$(".head_wrap .head .head_menu > ul > li").hover(
						function() {
							if ($(".head_menu_wrap").is(".right0") == false) {
								$(".head_wrap .head .head_menu > ul > li")
										.removeClass("check");
								$(this).addClass("check");
								$(".head_menu_down_menu").stop().slideDown(
										"fast");
							}
							;
						},
						function() {
							$(".head_wrap .head .head_menu > ul > li")
									.removeClass("check");
						});

				$(".head_wrap").hover(
						function() {
							$(this).addClass("head_over");
						},
						function() {
							if ($(".head_menu_wrap").is(".right0") == false) {
								$(this).removeClass("head_over");
								$(".head_wrap .head .head_menu > ul > li")
										.removeClass("check");
								$(".head_menu_down_menu").stop()
										.slideUp("fast");
							}
						});
				//head_down_menu end
				//mobile start
				$(".mobile_menu_icon").click(function() {
					$(".head_wrap").addClass("head_over");
					$(this).toggleClass("mobile_menu_icon_open");
					if ($(this).is(".mobile_menu_icon_open")) {
						$(".head_menu_wrap").addClass("right0");
					} else {
						$(".head_menu_wrap").removeClass("right0");
					}
				});
				$(".head_menu_down").click(
						function() {
							$(this).toggleClass("head_menu_down_open");
							if ($(this).is(".head_menu_down_open")) {
								$(this).next(".head_menu_down_menu").find("ul")
										.slideDown("fast");
							} else {
								$(this).next(".head_menu_down_menu").find("ul")
										.slideUp("fast");
							}
						});
				//mobile end
				cont_gallery_list_img();
				$(window).resize(
						function() {
							$(".head_menu_down_menu > ul").css("display",
									"block");
							if ($(window).width() < 760) {
								$(".head_menu_down_menu > ul").css("display",
										"none");
							}
							;
							$(".head_menu_down").removeClass(
									"head_menu_down_open");
							if ($(window).width() >= 1280) {
								$(".head_wrap").removeClass("head_over");
								$(".head_menu_wrap").removeClass("right0");
								$(".mobile_menu_icon").removeClass(
										"mobile_menu_icon_open");
							}
							;
							cont_gallery_list_img();
						});
			});
	$(window).scroll(function() {
		if ($(document).scrollTop() > $(".cont_wrap").offset().top) {
			$(".head_wrap").addClass("head_fixed");
		} else {
			$(".head_wrap").removeClass("head_fixed");
		}
	});
	function cont_gallery_list_img() {
		$(".cont_gallery_list > ul > li").each(
				function() {
					if ($(this).find(".cont_gallery_list_img").length) {
						$(this).find(".cont_gallery_list_img").css("width",
								$(this).width());
					}
					;

					if ($(this).find(".cont_gallery_list_img_height").length) {
						$(this).find(".cont_gallery_list_img_height").css(
								"height", $(this).width());
					} else {
						$(this).find(".cont_gallery_list_img").css("height",
								$(this).width());
					}
					;
				});
	};

	function login() {
		location.href = "/login/?ReturnPage=" + window.location.pathname;
	};
	function logout() {
		location.href = "/login/logout.php?ReturnPage="
				+ window.location.pathname;
	};
	function quick(ele) {
		$(ele).parents(".nav_wrap").find(".nav").fadeToggle("fast");
		$(".nav_wrap .nav_quick_title, .nav_wrap .nav_quick_close")
				.slideToggle("fast");
	}
</script>
</head>
<body data-aos-easing="ease" data-aos-duration="1200" data-aos-delay="0">
	<div class="overlay none"></div>
	<div class="modal">
		<div class="modal-dialog">
			<div class="modal-content"></div>
		</div>
	</div>
	<!--  -->
	<div class="wrap">
		<jsp:include page="../common/sidebar.jsp" />
	</div>
	<!--  -->
	<div class="cont_wrap bbs_wrap">
		<div class="cont">
			<div class="cont_box cont_head">
				<div class="cont_boxs">
					<div class="cont_title_wrap">
						<div class="cont_title_info">MEGA NEWS</div>
						<div class="cont_title robo color">
							<h2>FAQ</h2>
						</div>
					</div>
					<div class="cont_text_wrap">
						<div class="cont_text cont_list_map">
							<ul>
								<li>홈</li>
								<li>메가소식</li>
								<li>FAQ</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="cont_box brand01">
				<div class="cont_boxs text_center">
					<div class="cont_title_wrap">
						<div class="cont_title">
							<b>자주하는 질문 </b>
						</div>
					</div>
					<div class="cont_text_wrap">
						<div class="cont_text">궁금하신 내용을 검색해 주세요.</div>
					</div>
					<div class="cont_text_wrap">
						<div class="cont_tab">
							<ul class="category-wrap">
							
							<li class="${empty param.CATEGORY_ID ? 'check' : ''}">
							    <a href="/tables"> 전체 </a>
							</li>
							<c:forEach var="category" items="${categoryList}">
							    <li class="cont_tab ${param.CATEGORY_ID == category.category_id ? 'check' : ''}">
							        <a href="/tables?CATEGORY_ID=${category.category_id}">${category.categoryNm}</a>
							    </li>
							</c:forEach>
								
							</ul>
						</div>
						<div class="cont_list cont_list_content cont_list_content_search">
							<ul>
								<li>
									<div class="board_search_wrap">
										<div class="board_search">
											<form action="${contextPath }/tables" method="get">
												<!-- <input type="hidden" name="bbs_category" id="bbs_category" value="4">  -->
												<input type="hidden" name="CATEGORY_ID" id="CATEGORY_ID" value="${param.CATEGORY_ID}">
												<ul>
													<li class="board_search_select">
														<div class="input_select_wrap input_wrap2">
															<select name="searchType"
																id="searchType">
																<option value="title">제목</option>
																<option value="content">내용</option>
																<option value="name">작성자</option>
															</select>
														</div>
													</li>
													<li>
														<div class="input_text_wrap input_wrap2">
															<label> <input type="text" name="keyword"
																id="keyword" class="" value=""
																placeholder="검색어를 입력하세요" required="required">
															</label>
														</div>
													</li>
													<li class="board_search_btn">
														<div class="input_btn_wrap input_wrap2">
															<input type="submit" value="검색" class="btn btn1" id="">
														</div>
													</li>
												</ul>
											</form>

										</div>
									</div>
								</li>
								<li style="text-align: right">
									<a href="/boardwrite">
										<button type="button" class="input_btn_wrap input_wrap2"
												style="background-color: #FDD000; color: black; font-weight: 600;">
												게시글 작성
										</button>
									</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="cont_text_wrap">
						<div class="board_list">
							<table>
								<colgroup>
									<col class="board_w75 board_pc">
									<col>
									<col class="board_w150 board_pc">
									<col class="board_w100 board_pc">
									<col class="board_w100 board_pc">
								</colgroup>
								<thead>
									<tr>
										<th class="board_pc">번호</th>
										<th>제목</th>
										<th class="board_pc">글쓴이</th>
										<th>날짜</th>
										<th class="board_pc">조회</th>
									</tr>
								</thead>
								<tbody>
									<!-- 게시물 리스트 반복문 -->
									<c:forEach var="board" items="${boardList}" varStatus="status">
										<tr>
											<!-- 번호 -->
											<td class=board_pc>${(paging.total-status.index)-((paging.nowPage-1)*paging.cntPerPage)}</td>
											<td>
												<div class="text_wrap">
													<div class="text">
														<a
															href="${path}/boardDetail?id=${board.boardId}&CATEGORY_ID=${CATEGORY_ID}">
															<em> ${board.title} </em>
														</a>
													</div>
												</div>
											</td>
											<!-- 작성자 -->
											<td class=board_pc>${board.writer}</td>
											<!-- 작성일 -->
											<td>${board.upload_at}</td>
											<!-- 조회수 -->
											<td class=board_pc>${board.hits}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

						<div class="board_page_wrap">
							<div class="board_page">
								<ul class="boardPagination">
									<li class="fo_re">
										<a href="/tables?nowPage=1&CATEGORY_ID=${CATEGORY_ID}">
											<span>처음</span>
										</a>
									</li>
									<li
										class="board_page_link <c:if test='${paging.startPage == 1}'>disabled</c:if>"
										id="dataTable_previous"><c:if
											test='${paging.nowPage != 1 }'>
											<a
												href="/tables?nowPage=${paging.nowPage-1}&CATEGORY_ID=${CATEGORY_ID}"
												aria-controls="dataTable" data-dt-idx="0" tabindex="0"
												class="board_page_link">이전</a>
										</c:if>
									</li>
									<c:forEach begin="${paging.startPage }"
										end="${paging.endPage }" var="p">
										<li
											class="board_page_check <c:if test='${p == paging.nowPage}'>active</c:if>">
											<a
											href="/tables?nowPage=${p}&cntPerPage=${paging.cntPerPage}&CATEGORY_ID=${CATEGORY_ID}">
												<span>${p}</span>
										</a>
										</li>
									</c:forEach>
									<c:if test='${paging.nowPage!=paging.lastPage}'>
										<li class="paginate_button page-item next" id="dataTable_next">
											<a
											href="/tables?nowPage=${paging.nowPage+1 }&cntPerPage=${paging.cntPerPage}&CATEGORY_ID=${CATEGORY_ID}"
											aria-controls="dataTable" data-dt-idx="7" tabindex="0"
											class="page-link">다음</a>
										</li>
									</c:if>
									<li >
										<a
											href="/tables?nowPage=${paging.lastPage}&CATEGORY_ID=${CATEGORY_ID}">
											<span>마지막</span>
										</a>
									</li>
								</ul>
							</div>
						</div>


					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- footer -->
	<jsp:include page="../common/footer.jsp"/>
	<jsp:include page="../common/header.jsp"/>
</body>
</html>