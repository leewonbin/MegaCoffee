/*$(document).on("click", ".inner_modal_open", function() {
	$(this).siblings(".inner_modal").show(0);
});
$(document).on("click", ".inner_modal .inner_modal_title .close_wrap", function() {
	$(this).parents(".inner_modal").hide(0);
});*/


$(document).ready(
	function() {
		$(".datepickertime_wrap input").mdtimepicker();
		$(".detail_flex_slider_wrap").flexslider(
			{
				animation: "slide",
				controlNav: "thumbnails",
				start: function() {
					$(".detail_flex_slider_wrap img").css(
						"visibility", "visible");
				},
			});
		//head_down_menu start
		$(".head_wrap .head .head_menu > ul > li").hover(		//카테고리 펼쳐지는거
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

		$(".head_wrap").hover(									//상단 카테고리 펼쳐졌다 접어드는거
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
	});









