<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	href="/css/simple-line-icons.min.css">
<link rel="stylesheet" type="text/css"
	href="/css/style.css?ver=202404010905">
<link rel="stylesheet" type="text/css"
	href="https://img.79plus.co.kr/megahp/common/css/animate.css">
<link rel="stylesheet" type="text/css"
	href="/css/aos.css?ver=202307100845">

<script type="text/javascript"
	src="https://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript"
	src="https://img.79plus.co.kr/megahp/common/js/bootstrap.js"></script>
<script type="text/javascript"
	src="https://img.79plus.co.kr/megahp/common/js/jquery.flexslider.js"></script>
<script type="text/javascript"
	src="https://img.79plus.co.kr/megahp/common/js/jquery.bxslider.js"></script>
<script type="text/javascript"
	src="/common/js/common.js?ver=202307100845"></script>

<!-- daterangepicker -->
<link rel="stylesheet" type="text/css"
	href="/css/daterangepicker.min.css">
<script type="text/javascript"
	src="https://img.79plus.co.kr/megahp/common/js/angular.min.js"></script>
<script type="text/javascript"
	src="https://img.79plus.co.kr/megahp/common/js/angular-messages.min.js"></script>
<script type="text/javascript"
	src="https://img.79plus.co.kr/megahp/common/js/moment.min.js"></script>
<script type="text/javascript"
	src="/common/js/daterangepicker.min.js?ver=202307100845"></script>
<script type="text/javascript"
	src="/common/js/angular-daterangepicker.min.js"></script>
<!-- datemdpicker -->
<link rel="stylesheet" type="text/css"
	href="/css/mdtimepicker.css?ver=202307100845">
<script type="text/javascript"
	src="/common/js/mdtimepicker.js?ver=202307100845"></script>

<!-- fullPage -->
<script type="text/javascript"
	src="https://img.79plus.co.kr/megahp/common/js/jquery.fullPage.js"></script>

<!-- swiper -->
<link rel="stylesheet" type="text/css"
	href="/css/swiper.min.css?ver=202307100845">
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
	<div class="wrap">
		<jsp:include page="../common/sidebar.jsp" />


		<div class="cont_wrap menu_wrap">
			<div class="cont">
			
			<c:choose>
			<c:when test="${param.category_id == '1'}">
			<jsp:include page="../common/menuCategory/drink.jsp" />
			</c:when>
			<c:when test="${param.category_id == '2'}">
			<jsp:include page="../common/menuCategory/food.jsp" />
			</c:when>
			<c:when test="${param.category_id == '3'}">
			<jsp:include page="../common/menuCategory/product.jsp" />
			</c:when>
			<c:otherwise>
			<jsp:include page="../common/menuCategory/main.jsp" />
			</c:otherwise>
		</c:choose>

<c:choose>
<c:when test="${param.category_id == '1' || param.category_id == '2'}">
						<div class="cont_text_wrap list_checkbox_wrap">
							<div class="cont_text cont_text_title">
								<b>분류보기</b>
							</div>
							<div class="checkbox_wrap">
								<label class="checkbox"> <input type="checkbox" id=""
									name="list_checkbox_all" value="all" checked=""> <span
									class="check_mark"></span>
									<div class="checkbox_text">전체 상품보기</div>
								</label>
							</div>
							<c:forEach var="type" items="${typeList}">
								<div class="checkbox_wrap list_checkbox">
									<label class="checkbox"> <input type="checkbox" id=""
										name="list_checkbox" value="${type.type_id}"> <span
										class="check_mark"></span>
										<div class="checkbox_text">${type.type_name}</div>
									</label>
								</div>
							</c:forEach>
						</div>
						</c:when>
						<c:otherwise>
						</c:otherwise>
</c:choose>

							<div class="cont_text_wrap">
								<div
									class="cont_gallery_list cont_gallery_list2 cont_list cont_list4 cont_list_m cont_list_m2">
									<ul id="menu_list">
										<div
											class="cont_gallery_list cont_gallery_list2 cont_list cont_list4 cont_list_m cont_list_m2 wfull">

											<ul id="menu_list">
												<c:forEach var="menu" items="${menuList}">
													<li><a class="inner_modal_open">
															<div class="cont_gallery_list_box">
																<div class="cont_gallery_list_img"
																	style="width: 305px; height: 305px;">
																	<!-- cont_gallery_list_label cont_gallery_list_label1 빨간색, 2가 파란색 -->
																	<%-- <div
																	class="cont_gallery_list_label cont_gallery_list_label2">${menu.menu_ice_hot}</div> --%>
																	<c:choose>
																		<c:when test="${menu.menu_ice_hot == 'ICE'}">
																			<div
																				class="cont_gallery_list_label cont_gallery_list_label2">${menu.menu_ice_hot}</div>
																		</c:when>
																		<c:when test="${menu.menu_ice_hot == 'HOT'}">
																			<div
																				class="cont_gallery_list_label cont_gallery_list_label1">${menu.menu_ice_hot}</div>
																		</c:when>
																		<c:otherwise>
																			<div class="default">${menu.menu_ice_hot}</div>
																		</c:otherwise>
																	</c:choose>
																	<img src="/img/${menu.menu_file_id}">
																</div>
																<!-- 여기가 이미지 나오는 부분 -->
																<div class="cont_text_box">
																	<div class="cont_text">
																		<div class="cont_text_inner text_wrap cont_text_title">
																			<div class="text text1">
																				<b>${menu.menu_title}</b>
																			</div>
																		</div>
																		<div class="cont_text_inner text_wrap cont_text_info">
																			<div class="text text1">${menu.menu_eng_title}</div>
																		</div>
																	</div>
																	<div class="cont_text cont_text_info">
																		<div class="text_wrap">
																			<div class="text text2">${menu.menu_content}</div>
																		</div>
																	</div>
																</div>
															</div>
													</a> <!-- 여기가 이미지 눌렀을때 창 나오는 부분 -->
														<div class="inner_modal">
															<div class="cont_text_box">
																<div class="cont_text inner_modal_title">
																	<div class="cont_text_inner cont_text_title">
																		<b>${menu.menu_title}</b>
																	</div>
																	<div class="cont_text_inner cont_text_info">
																		${menu.menu_eng_title}</div>
																	<div class="close_wrap">
																		<div class="close"></div>
																	</div>
																</div>
																<%-- <div class="cont_text">
																<div class="cont_text_inner">${menu.menu_size}</div>
																<div class="cont_text_inner">${menu.menu_calories}</div>
															</div>
															<div class="cont_text">${menu.menu_content}</div>
															<div class="cont_text cont_text_info">알레르기 성분 :</div>
															<!--${menu.menu_allergen}-->
														</div>--%>
																<%-- <div
															class="cont_list cont_list2 cont_list_small cont_list_small2">
															<ul>
																<li>포화지방 ${menu.menu_saturated}g</li>
																<li>당류 ${menu.menu_sugar}g</li>
																<li>나트륨 ${menu.menu_sodium}mg</li>
																<li>단백질 ${menu.menu_protein}g</li>
																<li>카페인 ${menu.menu_caffeine}mg</li>
															</ul>--%>


															</div>
														</div></li>
												</c:forEach>
											</ul>



										</div>
										<div class="board_page_wrap">
											<div class="board_page"></div>
										</div>
									</ul>
								</div>
							</div>



						</div>
					</div>
				</div>
			</div>
			<!-- <script>
			var category_change = "";
			$(document).on(
					"click",
					"[name='list_checkbox_all']",
					function() {
						if ($(this).prop("checked") == true) {
							$(this).parents(".list_checkbox_wrap").find(
									".list_checkbox").find(":checkbox").prop(
									"checked", false).change();
						}
						menu();
					});
			$(document)
					.on(
							"click",
							"[name='list_checkbox']",
							function() {
								$(this).parents(".list_checkbox_wrap").find(
										"[name='list_checkbox_all']").prop(
										"checked", false).change();
								if ($(this).parents(".list_checkbox_wrap")
										.find("[name='list_checkbox']").length == $(
										this).parents(".list_checkbox").find(
										"[name='list_checkbox']:checked").length) {
									$(this).parents(".list_checkbox_wrap")
											.find("[name='list_checkbox_all']")
											.prop("checked", true).change();
								} else {
									$(this).parents(".list_checkbox_wrap")
											.find("[name='list_checkbox_all']")
											.prop("checked", false).change();
								}
								menu();
							});
			$(document).on("click", ".board_page_link", function() {
				var page = $(this).data("page");
				menu(page);
				$("html").animate({
					scrollTop : $(".menu_box").offset().top - 200
				}, 0);
			});
			$(document).ready(function() {
				menu();
			});
			function menu(page) {
				var list_checkbox_all = $(
						"input[name='list_checkbox_all']:checked").val();
				var checkbox = [];
				$("input[name='list_checkbox']:checked").each(function(i) {
					checkbox.push($(this).val());
				});
				var checklist_join = checkbox.join(",");
				$.ajax({
					url : "menu.php",
					type : "GET",
					data : {
						"page" : page,
						"menu_category1" : '1',
						"menu_category2" : '1',
						"category" : checklist_join,
						"list_checkbox_all" : list_checkbox_all,
					},
					success : function(result) {
						$("#menu_list").html(result);
						cont_gallery_list_img();
					}
				});
			};
		</script> -->
			<!-- footer -->
			<jsp:include page="../common/footer.jsp" />
			<jsp:include page="../common/header.jsp" />
			<script src="js/menu.js"></script>
			<script src="js/common/page.js"></script>
</body>
</html>