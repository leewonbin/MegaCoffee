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
	href="/common/css/simple-line-icons.min.css">
<link rel="stylesheet" type="text/css"
	href="/common/css/style.css?ver=202404010905">
<link rel="stylesheet" type="text/css"
	href="https://img.79plus.co.kr/megahp/common/css/animate.css">
<link rel="stylesheet" type="text/css"
	href="/common/css/aos.css?ver=202307100845">

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
	href="/common/css/daterangepicker.min.css">
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
	href="/common/css/mdtimepicker.css?ver=202307100845">
<script type="text/javascript"
	src="/common/js/mdtimepicker.js?ver=202307100845"></script>

<!-- fullPage -->
<script type="text/javascript"
	src="https://img.79plus.co.kr/megahp/common/js/jquery.fullPage.js"></script>

<!-- swiper -->
<link rel="stylesheet" type="text/css"
	href="/common/css/swiper.min.css?ver=202307100845">
<script type="text/javascript"
	src="https://img.79plus.co.kr/megahp/common/js/swiper.min.js"></script>

<script src="/js/menu.js"></script>  
</head>
<body data-aos-easing="ease" data-aos-duration="1200" data-aos-delay="0">
<jsp:include page="../common/header.jsp"/>
	<div class="overlay none"></div>
	<div class="modal">
		<div class="modal-dialog">
			<div class="modal-content"></div>
		</div>
	</div>
	<div class="wrap">
		<jsp:include page="../common/sidebar.jsp" />
		
		<script src="./js/certified2.js?v=202404251519"></script>

		<div class="cont_wrap db_wrap">
			<div class="cont">
				<div class="cont_box cont_head">
					<div class="cont_boxs">
						<div class="cont_title_wrap">
							<div class="cont_title_info">MEGA NEWS</div>
							<div class="cont_title robo color">
								<h2>게시글 작성</h2>
							</div>
						</div>

					</div>
				</div>
				<div class="cont_box db01">
					<div class="cont_boxs">
						<div class="db">
							<div class="cont_text_wrap text_center">
								<div class="cont_text">
									<a href="/tables">
										<div class="input_width">
											<div class="input_btn_wrap input_wrap2">
												<input type="button" value="FAQ 바로가기"
													class="btn btn1 btn_ani" id="">
											</div>
										</div>
									</a>
								</div>
							</div>
							<form name="submit_form" id="submit_form" method="post" enctype="multipart/form-data">													
								<div class="cont_text_wrap">
									<div class="table_info table_info1">
										<table>
											<tbody>
											<tr>
												<th>
													공지 여부 <span class="red">*<span> </span></span>
												</th>
												<td>
												<div class="checkbox_wrap checkbox_wrap_bottom radio_wrap">
													<label class="checkbox">
														<input type="radio" id="separation" name="separation" value="공지" >
														<span class="check_mark"></span>
															<div class="checkbox_text">
																공지
															</div>
													</label>
												</div>
												<div class="checkbox_wrap checkbox_wrap_bottom radio_wrap">
													<label class="checkbox">
														<input type="radio" id="separation" name="separation" value="일반" >
														<span class="check_mark"></span>
															<div class="checkbox_text">
																일반
															</div>
													</label>
												</div>
												</td>
											</tr>
											<tr>
												<th>
													카테고리 <span class="red">*<span> </span></span>
												</th>
												<td>
												<c:forEach var="category" items="${categoryList}">
													<div class="checkbox_wrap checkbox_wrap_bottom radio_wrap">
														<label class="checkbox">
															<input type="radio" id="categoryId" name="category_id" value="${category.category_id}" >
															<span class="check_mark"></span>
																<div class="checkbox_text">
																	${category.categoryNm}
																</div>
														</label>
													</div>
													</c:forEach>
													
													</td>
												</tr>												
												<tr>
													<th>제목 <span class="red">*<span> </span></span></th>
													<td>
														<div class="input_text_wrap input_wrap2">
															<label> <input type="text" name="title"
																id="customer_tbl_title" required="required"
																oninput="decodeHTMLEntities(this.value,this)"> 
																<span>제목을 입력하세요</span>
															</label>
														</div>
													</td>
												</tr>
												<tr>

													<th>내용 <span class="red">*<span> </span></span></th>
													<td>
														<div class="cont_text">
															<div class="input_textarea_wrap">
																<label> <textarea name="content"
																		id="customer_tbl_content" class="count_input"
																		oninput="decodeHTMLEntities(this.value,this)"></textarea>
																</label>
															</div>
															<div
																class="input_text_info cont_text_info input_limit_byte">
																<span class="count">0</span>/<span class="maxcount">3900</span>byte(한글
																1300자, 영어 4000자)
															</div>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="cont_text_wrap">
									<div class="cont_text">
										<div class="input_btn_wrap input_wrap2">
											<input type="button" value="등록하기" class="btn btn1 btn_ani"
												id="submit">
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script src="js/common/ajaxCall.js"></script>
		<script type="text/javascript">
			
			var ok = true;
			$(document).on("click","#submit",function(e) {
				
							$("input:radio[name='separation']:checked").val();
							$("input:radio[name='category_id']:checked").val();
							
							if(!$('input:radio[name=separation]').is(':checked')) {   
								   alert("공지여부를 선택해 주세요.");
								   return false;
							}
							if(!$('input:radio[name=category_id]').is(':checked')) {   
								   alert("카테고리를 선택해 주세요.");
								   return false;
							}
						
							if ($("input[name='title']").val() == "") {
								alert("제목을 입력하세요");
								$("input[name='title']").focus();
								return false;
							}
												
							if ($("textarea[name='content']").val() == "") {
								alert("내용을 입력하세요");
								$("textarea[name='content']").focus();
								return false;
							}
						
						if(ok){
							if(confirm("작성 하시겠습니까?")){        		
				       			ajaxCall("/boardwrite","POST","submit_form",boardwriteCallbackFnc);
				        	}
						}
						
					});
			
			function boardwriteCallbackFnc(callbackData){
		  		if(callbackData.data == true){
			  		alert("작성이 완료되었습니다.");
			  		location.href = "/tables";  			
		  		}
		  		else{
			  		alert("작성이 실패되었습니다.");  			
		  		}
		  	}
		</script>
		<!-- footer -->
	<jsp:include page="../common/footer.jsp"/>

</body>
</html>