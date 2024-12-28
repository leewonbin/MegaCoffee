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
<!-- <script type="text/javascript"
	src="https://img.79plus.co.kr/megahp/common/js/jquery.fullPage.js"></script> -->

<!-- swiper -->
<!-- <link rel="stylesheet" type="text/css"
	href="/css/swiper.min.css?ver=202307100845">
<script type="text/javascript"
	src="https://img.79plus.co.kr/megahp/common/js/swiper.min.js"></script> -->



<script>
$(document).ready(function () {
    const allCheckbox = $("input[name='list_checkbox_all']");
    const checkbox = $("input[name='list_checkbox']");

    allCheckbox.on('change', function () {
        if (allCheckbox.is(':checked')) {
            checkbox.prop('checked', false);
            $("#menu_list li").show() 					//전체 보기
        } else {
            hideLi(); 				//전체 선택 해제= 리스트 숨기기
        }
    });

    checkbox.on('change', function () {
        if (checkbox.is(':checked')) {
            allCheckbox.prop('checked', false);
        }

        const selectType = [];
        $("input[name='list_checkbox']:checked").each(function () {
            selectType.push($(this).val());
        });

        if (selectType.length === 0) {
            hideLi(); 
        } else {
            select(selectType);
        }
    });
    function select(selectType) {
        console.log("타입:", selectType);

        $.ajax({
            url: '/filterType',
            type: 'GET',
            data: {
                category_id: "${param.category_id}",
                type_id: selectType
            },
            traditional: true,
            success: function (response) {
                display(response);
                console.log("메뉴:", response);
            },
            error: function (error) {
                console.error("오류 발생:", error);
            }
        });
    }

    function display(items) {
        $("#menu_list li").hide();

        items.forEach(function (menuInfo) {						//데이터 값 표시
            $("#menu_list li[data-key='" + menuInfo + "']").show();
        });
    }

    function hideLi() {
        $("#menu_list li").hide();
    }
});

</script>

</head>
<body data-aos-easing="ease" data-aos-duration="1200" data-aos-delay="0">
<jsp:include page="../common/header.jsp" />
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
					<c:when
						test="${param.category_id == '1' || param.category_id == '2'}">
						<div class="cont_text_wrap list_checkbox_wrap">
							<div class="cont_text cont_text_title">
								<b>분류보기</b>
							</div>
							<div class="checkbox_wrap">
								<label class="checkbox"> <input type="checkbox" id=""
									name="list_checkbox_all" value="0" checked="checked"> <span
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
					<div class="cont_gallery_list cont_gallery_list2 cont_list cont_list4 cont_list_m cont_list_m2">
						<!-- <ul id="menu_list"> -->
							<div class="cont_gallery_list cont_gallery_list2 cont_list cont_list4 cont_list_m cont_list_m2 wfull">
								<ul id="menu_list">
									<c:forEach var="menu" items="${menuList}">
										<li data-key="${menu['MENU_ID']}" >
											<a class="inner_modal_open">
												<div class="cont_gallery_list_box">
													<div class="cont_gallery_list_img" style="width: 305px; height: 305px;">
														<c:choose>
															<c:when test="${menu['MENU_ICE_HOT'] == 'ICE'}">
																<div class="cont_gallery_list_label cont_gallery_list_label2">${menu['MENU_ICE_HOT']}</div>
															</c:when>
															<c:when test="${menu['MENU_ICE_HOT'] == 'HOT'}">
																<div class="cont_gallery_list_label cont_gallery_list_label1">${menu['MENU_ICE_HOT']}</div>
															</c:when>
														</c:choose>
														<img src="/img/${menu['MENU_FILE_ID']}">
													</div>
													<!-- 여기가 이미지 나오는 부분 -->
													<div class="cont_text_box">
														<div class="cont_text">
															<div class="cont_text_inner text_wrap cont_text_title">
																<div class="text text1">
																	<b>${menu['MENU_TITLE']}</b>
																</div>
															</div>
															<div class="cont_text_inner text_wrap cont_text_info">
																<div class="text text1">${menu['MENU_ENG_TITLE']}</div>
															</div>
														</div>
														<div class="cont_text cont_text_info">
															<div class="text_wrap">
																<div class="text text2">${menu['MENU_CONTENT']}</div>
															</div>
														</div>
													</div>
												</div>
										</a> <!-- 여기가 이미지 눌렀을때 창 나오는 부분 -->
											<div class="inner_modal">
												<div class="cont_text_box">
													<div class="cont_text inner_modal_title">
														<div class="cont_text_inner cont_text_title">
															<b>${menu['MENU_TITLE']}</b>
														</div>
														<div class="cont_text_inner cont_text_info">
															${menu['MENU_ENG_TITLE']}</div>
														<div class="close_wrap">
															<div class="close"></div>
														</div>
													</div>
													<div class="cont_text">
														<c:choose>
															<c:when test="${menu['MENU_ONESIZE'] == 'N'}">
																<div class="cont_text_inner">${menu['NUT_SIZE']}${menu['NUT_UNIT']}</div>
															</c:when>
															<c:when test="${menu['MENU_ONESIZE'] == 'Y'}">
																<div class="cont_text_inner">One size/${menu['NUT_SIZE']}${menu['NUT_UNIT']}</div>
															</c:when>
															<c:otherwise>
															</c:otherwise>
														</c:choose>
														<div class="cont_text_inner">${menu['NUT_CALORIE']}kcal</div>
													</div>
													<div class="cont_text">${menu['MENU_CONTENT']}</div>
													<div class="cont_text cont_text_info">알레르기 성분 : ${menu['ALL_NAME']}</div>
												</div>
												<div
													class="cont_list cont_list2 cont_list_small cont_list_small2">
													<ul>
														<li>포화지방 ${menu['NUT_SATURATED']}g</li>
														<li>당류 ${menu['NUT_SUGAR']}g</li>
														<li>나트륨 ${menu['NUT_SODIUM']}mg</li>
														<li>단백질 ${menu['NUT_PROTEIN']}g</li>
														<li>카페인 ${menu['NUT_CAFFEINE']}mg</li>
													</ul>
												</div>
											</div>
										</li>
									</c:forEach>
								</ul>


							</div>
							<div class="board_page_wrap">
								<div class="board_page"></div>
							</div>
						<!-- </ul> -->
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
</body>
</html>