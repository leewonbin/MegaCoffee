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
	<div class="wrap">
		<div class="nav_wrap">
			<div class="nav">
				<ul>
					<li><a href="/customer/?db_category=2">
							<div class="table0">
								<div class="cell">
									<div class="cont_text">창업상담</div>
									<div class="cont_text cont_text_title robo">
										1588-<br>0656
									</div>
								</div>
							</div>
					</a></li>
					<li><a href="/customer/?db_category=7">
							<div class="table0">
								<div class="cell">
									<div class="cont_text">가맹점</div>
									<div class="cont_text cont_text_title robo">인수 상담</div>
								</div>
							</div>
					</a></li>
					<li><a href="/news/voc/">
							<div class="table0">
								<div class="cell">
									<div class="cont_text">고객센터</div>
									<div class="cont_text cont_text_title robo">문의/접수</div>
								</div>
							</div>
					</a></li>
					<li><a href="/news/voc/">
							<div class="table0">
								<div class="cell">
									<div class="cont_text">고객센터</div>
									<div class="cont_text cont_text_title robo">
										1588-<br>8298
									</div>
								</div>
							</div>
					</a></li>
					<li><a href="/store/find">
							<div class="table0">
								<div class="cell">
									<div class="cont_text">(24.12.12)누적</div>
									<div class="cont_text cont_text_title robo">
										3,387호<br> 오픈
									</div>
								</div>
							</div>
					</a></li>
				</ul>
			</div>
			<button type="button" onclick="quick(this);" class="nav_quick">
				<div class="table0">
					<div class="cell">
						<div class="nav_quick_title">
							<img
								src="https://img.79plus.co.kr/megahp/common/img/quick_img.png?ver=202403041117"
								alt="">
							<div class="cont_text_inner robo">QUICK</div>
						</div>
						<div class="nav_quick_close"></div>
					</div>
				</div>
			</button>
		</div>
		<div class="head_wrap">
			<div class="head">
				<div class="head_logo">
					<a href="/"> <img
						src="https://img.79plus.co.kr/megahp/common/img/logo.png"
						class="head_logo_img_fixed"> <img
						src="https://img.79plus.co.kr/megahp/common/img/logo_b.png"
						class="head_logo_img">
					</a>
				</div>
				<div class="head_menu_wrap">
					<div class="head_menu_logo t m">
						<img src="https://img.79plus.co.kr/megahp/common/img/logo_w.png">
					</div>
					<div class="head_menu">
						<ul>
							<li class=""><a href="/about/brand/" class="pc"> 메가 스토리
							</a> <a class="m head_menu_down"> 메가 스토리 </a>
								<div
									class="head_menu_down_menu cont_list cont_list1 cont_list_small cont_list_small1"
									style="display: none; height: 120px; padding-top: 20px; margin-top: 0px; padding-bottom: 20px; margin-bottom: 0px;">
									<ul>
										<li><a href="/about/brand/"> 브랜드 </a></li>
										<li><a href="/about/bi/"> BI </a></li>
										<li><a href="/about/map/"> 오시는 길 </a></li>
									</ul>
								</div></li>
							<li class=""><a href="/menu/" class="pc"> 메뉴소개 </a> <a
								class="m head_menu_down"> 메뉴소개 </a>
								<div
									class="head_menu_down_menu cont_list cont_list1 cont_list_small cont_list_small1"
									style="display: none; height: 120px; padding-top: 20px; margin-top: 0px; padding-bottom: 20px; margin-bottom: 0px;">
									<ul>
										<li><a
											href="/menu/?menu_category1=1&amp;menu_category2=1"> 음료 </a>
										</li>
										<li><a
											href="/menu/?menu_category1=2&amp;menu_category2=2"> 푸드 </a>
										</li>
										<li><a
											href="/menu/?menu_category1=3&amp;menu_category2=3"> 상품 </a>
										</li>
									</ul>
								</div></li>
							<li class=""><a href="/store/find/" class="pc"> 매장 </a> <a
								class="m head_menu_down"> 매장 </a>
								<div
									class="head_menu_down_menu cont_list cont_list1 cont_list_small cont_list_small1"
									style="display: none; height: 60px; padding-top: 20px; margin-top: 0px; padding-bottom: 20px; margin-bottom: 0px;">
									<ul>
										<li><a href="/store/find/"> 매장찾기 </a></li>
									</ul>
								</div></li>
							<li><a href="/startup/cost" class="pc"> 창업안내 </a> <a
								class="m head_menu_down"> 창업안내 </a>
								<div
									class="head_menu_down_menu cont_list cont_list1 cont_list_small cont_list_small1"
									style="display: none; height: 181px; padding-top: 20px; margin-top: 0px; padding-bottom: 20px; margin-bottom: 0px;">
									<ul>
										<li><a href="/startup/cost/"> 개설비용 </a></li>
										<li><a href="/startup/interior/"> 인테리어 </a></li>
										<li><a href="/customer/?db_category=2"> 창업문의 </a></li>
										<li><a href="/customer/?db_category=7"> 가맹점 인수 </a></li>
										<li><a href="/bbs/?bbs_category=7"> 창업뉴스 </a></li>
									</ul>
								</div></li>
							<li class=""><a href="/bbs/?bbs_category=4" class="pc">
									메가소식 </a> <a class="m head_menu_down"> 메가소식 </a>
								<div
									class="head_menu_down_menu cont_list cont_list1 cont_list_small cont_list_small1"
									style="display: none; height: 151px; padding-top: 20px; margin-top: 0px; padding-bottom: 20px; margin-bottom: 0px;">
									<ul>
										<li><a href="/bbs/?bbs_category=1"> 공지사항 </a></li>
										<li><a href="/bbs/?bbs_category=3"> 이벤트 </a></li>
										<li><a href="/tables"> FAQ </a></li>
										<li><a href="/news/voc/"> 고객의 소리 </a></li>
									</ul>
								</div></li>
							<li class=""><a href="/recruit/job/" class="pc"> 채용 </a> 
							<a class="m head_menu_down"> 채용 </a>
								<div
									class="head_menu_down_menu cont_list cont_list1 cont_list_small cont_list_small1"
									style="display: none; height: 60px; padding-top: 20px; margin-top: 0px; padding-bottom: 20px; margin-bottom: 0px;">
									<ul>
										<li><a href="/recruit/job/"> 채용안내 </a></li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="head_sns">
					<div class="cont_list cont_list_small">
						<ul>
							<li><a href="https://blog.naver.com/ekddusekddus"
								target="_blank"> <img
									src="https://img.79plus.co.kr/megahp/common/img/sns/sns_blog.png">
							</a></li>
							<li><a
								href="https://www.facebook.com/mega.mgc.coffee.official"
								target="_blank"> <img
									src="https://img.79plus.co.kr/megahp/common/img/sns/sns_facebook.png">
							</a></li>
							<li><a
								href="https://www.instagram.com/mega.mgc.coffee_official/"
								target="_blank"> <img
									src="https://img.79plus.co.kr/megahp/common/img/sns/sns_instagram.png">
							</a></li>
							<li><a href="https://smartstore.naver.com/megamgccoffee"
								target="_blank"> <img
									src="https://img.79plus.co.kr/megahp/common/img/sns/sns_smartstore.png">
							</a></li>
							<!-- <li> -->
							<!-- <a href="/manager/" target="_blank"> -->
							<!-- <img src="https://img.79plus.co.kr/megahp/common/img/sns/sns_mng.png"> -->
							<!-- <span>점주님전용</span> -->
							<!-- </a> -->
							<!-- </li> -->
						</ul>
					</div>
				</div>
				<div class="mobile_menu_icon_wrap m t">
					<div class="mobile_menu_icon">
						<div class="mobile_menu_icon_bar bar_black"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 게시판 카페고리 색 변경 -->
	<script>
		$(document).ready(function() {
			$(".cont_tab ul li").eq(0).addClass("check");

		});

		$(function() {
			$('.cont_tab ul li').click(function() {
				$('.cont_tab ul li').eq(0).removeClass("check");
				$(".cont_tab ul li").eq(1).addClass("check");
			})
		})
	</script>
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
								<li>
									<a href="/tables"> 전체 </a>
								</li>
								<li class="cont_tab5">
									 <a href="/tables?CATEGORY_ID=1">가맹문의</a><!-- ${CATEGORY_ID == 1 ? 'check' : ''} -->									
								</li>
								<li class="cont_tab6">
									<a href="/tables?CATEGORY_ID=2">매장정보 </a>
								</li>
								<li class="cont_tab7">
									<a href="/tables?CATEGORY_ID=3">스탬프 </a>
								</li>
								<li class="cont_tab8">
									<a href="/tables?CATEGORY_ID=4">무료쿠폰 </a>
								</li>
								<li class="cont_tab9">
									<a href="/tables?CATEGORY_ID=5">모바일쿠폰 </a>
								</li>
								<li class="cont_tab10">
									<a href="/tables?CATEGORY_ID=6">고객센터 </a>
								</li>
								
							</ul>
						</div>
						<div class="cont_list cont_list_content cont_list_content_search">
							<ul>
								<li>
									<div class="board_search_wrap">
										<div class="board_search">
											<form>
												<input type="hidden" name="bbs_category" id="bbs_category"
													value="4"> <input type="hidden"
													name="bbs_detail_category" id="bbs_detail_category"
													value="">
												<ul>
													<li class="board_search_select">
														<div class="input_select_wrap input_wrap2">
															<select name="bbs_search_category"
																id="bbs_search_category">
																<option value="bbs_tbl_title">제목</option>
																<option value="bbs_tbl_content">내용</option>
																<option value="bbs_tbl_name">작성자</option>
															</select>
														</div>
													</li>
													<li>
														<div class="input_text_wrap input_wrap2">
															<label> <input type="text" name="bbs_search"
																id="bbs_search" class="" value=""
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
								<li style="text-align: right"><a href="/boardwrite"><button
											type="button" class="input_btn_wrap input_wrap2"
											style="background-color: #FDD000; color: black; font-weight: 600;">
											게시글 작성</button></a></li>
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
											<td class=board_pc>${(paging.total-status.index)-((paging.nowPage-1)*paging.cntPerPage) }</td>
											<td>
												<div class="text_wrap">
													<div class="text">
														<a
															href="${path}/boardDetail?id=${board.boardId}&CATEGOGY_ID=${CATEGORY_ID}">
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
									<li class="fo_re"><a
										href="/tables?nowPage=1&CATEGORY_ID=${CATEGORY_ID}"><span>처음</span></a></li>
									<li
										class="board_page_link <c:if test='${paging.startPage == 1}'>disabled</c:if>"
										id="dataTable_previous"><c:if
											test='${paging.nowPage != 1 }'>
											<a
												href="/tables?nowPage=${paging.nowPage-1}&CATEGORY_ID=${CATEGORY_ID}"
												aria-controls="dataTable" data-dt-idx="0" tabindex="0"
												class="board_page_link">이전</a>
										</c:if></li>
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
									<li class="fo_re"><a
										href="/tables?nowPage=${paging.lastPage}&CATEGORY_ID=${CATEGORY_ID}"><span>마지막</span></a></li>
								</ul>
							</div>
						</div>


					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="foot_menu_wrap">
		<div class="foot_menu">
			<div class="cont_list">
				<ul>
					<li><a class="modal_open modal_open_policy1"> <b>이용약관</b>
					</a></li>
					<li><a class="modal_open modal_open_policy2"> <b>개인정보처리방침</b>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="foot_wrap">
		<div class="foot">
			<div class="cont_list cont_list_content">
				<ul>
					<li>
						<div class="cont_text">
							<div class="cont_list cont_list_m cont_list_m1">
								<ul>
									<li>
										<div class="foot_logo">
											<img
												src="https://img.79plus.co.kr/megahp/common/img/logo_w.png">
										</div>
									</li>
									<li>
										<div class="foot_sns">
											<div
												class="cont_list cont_list3 cont_list_small cont_list_width">
												<ul>
													<li><a href="https://blog.naver.com/ekddusekddus"
														target="_blank"> <img
															src="https://img.79plus.co.kr/megahp/common/img/sns/sns_blog.png">
													</a></li>
													<li><a
														href="https://www.facebook.com/mega.mgc.coffee.official"
														target="_blank"> <img
															src="https://img.79plus.co.kr/megahp/common/img/sns/sns_facebook.png">
													</a></li>
													<li><a
														href="https://www.instagram.com/mega.mgc.coffee_official/"
														target="_blank"> <img
															src="https://img.79plus.co.kr/megahp/common/img/sns/sns_instagram.png">
													</a></li>
													<li><a
														href="https://smartstore.naver.com/megamgccoffee"
														target="_blank"> <img
															src="https://img.79plus.co.kr/megahp/common/img/sns/sns_smartstore.png">
													</a></li>
													<!-- <li> -->
													<!-- <a href="/manager/" target="_blank"> -->
													<!-- <img src="https://img.79plus.co.kr/megahp/common/img/sns/sns_mng.png"> -->
													<!-- </a> -->
													<!-- </li> -->
												</ul>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="cont_text foot_info">
							<div class="cont_list cont_list_small cont_list_width_m">
								<ul>
									<li><b>주식회사 앤하우스</b></li>
									<li>대표자 김대영</li>
									<li>창업상담 1588-0656</li>
									<li>고객센터 1588-8298</li>
									<li>FAX 02-325-5199</li>
									<li>사업자등록번호 105-87-51367</li>
									<li>서울특별시 강남구 강남대로 518 11층, 13층 (주)앤하우스</li>
									<li>개인정보보호 책임자 이종원</li>
								</ul>
							</div>
						</div>
					</li>
					<li>
						<div class="cont_list cont_list6 pc">
							<ul>
								<li>
									<div class="cont_text cont_text_title">메가 스토리</div>
									<div class="cont_text">
										<div
											class="cont_list cont_list1 cont_list_small cont_list_small1">
											<ul>
												<li><a href="/about/brand/"> 브랜드 </a></li>
												<li><a href="/about/bi/"> BI </a></li>
												<li><a href="/about/map/"> 오시는 길 </a></li>
											</ul>
										</div>
									</div>
								</li>
								<li>
									<div class="cont_text cont_text_title">메뉴소개</div>
									<div class="cont_text">
										<div
											class="cont_list cont_list1 cont_list_small cont_list_small1">
											<ul>
												<li><a
													href="/menu/?menu_category1=1&amp;menu_category2=1"> 음료
												</a></li>
												<li><a
													href="/menu/?menu_category1=2&amp;menu_category2=2"> 푸드
												</a></li>
												<li><a
													href="/menu/?menu_category1=3&amp;menu_category2=3"> 상품
												</a></li>
											</ul>
										</div>
									</div>
								</li>
								<li>
									<div class="cont_text cont_text_title">매장</div>
									<div class="cont_text">
										<div
											class="cont_list cont_list1 cont_list_small cont_list_small1">
											<ul>
												<li><a href="/store/find/"> 매장찾기 </a></li>
											</ul>
										</div>
									</div>
								</li>
								<li>
									<div class="cont_text cont_text_title">창업안내</div>
									<div class="cont_text">
										<div
											class="cont_list cont_list1 cont_list_small cont_list_small1">
											<ul>
												<li><a href="/startup/cost/"> 개설비용 </a></li>
												<li><a href="/startup/interior/"> 인테리어 </a></li>
												<li><a href="/customer/?db_category=2"> 창업문의 </a></li>
												<li><a href="/bbs/?bbs_category=7"> 창업뉴스 </a></li>
											</ul>
										</div>
									</div>
								</li>
								<li>
									<div class="cont_text cont_text_title">메가소식</div>
									<div class="cont_text">
										<div
											class="cont_list cont_list1 cont_list_small cont_list_small1">
											<ul>
												<li><a href="/bbs/?bbs_category=1"> 공지사항 </a></li>
												<li><a href="/bbs/?bbs_category=3"> 이벤트 </a></li>
												<li><a href="/tables"> FAQ </a></li>
												<li><a href="/news/voc/"> 고객의 소리 </a></li>
											</ul>
										</div>
									</div>
								</li>
								<li>
									<div class="cont_text cont_text_title">제휴문의</div>
									<div class="cont_text">
										<div
											class="cont_list cont_list1 cont_list_small cont_list_small1">
											<ul>
												<li><a href="/customer/?db_category=3"> 상품제안 </a></li>
												<li><a href="/customer/?db_category=5"> 마케팅 제휴 </a></li>
											</ul>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	</div>
	<a href="javascript:go_top()">
		<div class="go_top_wrap">
			<div class="go_top"></div>
		</div>
	</a>
	<div class="swiper-container">
		<div class="swiper-wrapper">
			<div class="swiper-slide"></div>
			<div class="swiper-slide"></div>
		</div>
	</div>
	<!-- s: 사이트 연관 채널 마크업 -->
	<script type="application/ld+json">
		{
			"@context": "http://schema.org",
			"@type": "Person",
			"name": "My Site Name",
			"url": "https://mega-mgccoffee.com",
			"sameAs": [
			   "https://blog.naver.com/ekddusekddus",
			   "https://www.instagram.com/mega.mgc.coffee_official",
			   "https://www.facebook.com/mega.mgc.coffee.official",
			   "https://smartstore.naver.com/megamgccoffee"
			]
		}
	</script>
	<!-- e: 사이트 연관 채널 마크업 -->
	<script type="text/javascript"
		src="/common/js/daterangepicker_common.js"></script>
	<script type="text/javascript"
		src="https://img.79plus.co.kr/megahp/common/js/aos.js"></script>
	<script>
		$(".modal").on("hidden.bs.modal", function(e) {
			$(".modal-content").empty();
		});
		AOS.init({
			duration : 1200,
		});
		$(document).ready(function() {
			var swiper_foot = new Swiper(".swiper_foot", {
				slidesPerView : "auto",
				spaceBetween : 50,
				loop : true,
				autoplay : {
					delay : 0,
				},
				speed : 5000,
				navigation : {
					nextEl : ".swiper-button-next",
					prevEl : ".swiper-button-prev",
				},
				on : {
					slideChange : function() {
					},
					activeIndexChange : function() {
					}
				},
				breakpoints : {}
			});
		});
	</script>

</body>
</html>