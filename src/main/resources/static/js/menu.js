$(document).on("click",".inner_modal_open",function(){
	$(this).siblings(".inner_modal").show(0);
});
$(document).on("click",".inner_modal .inner_modal_title .close_wrap",function(){
	$(this).parents(".inner_modal").hide(0);
});


/*function ddd(url, data, callback) {
	$.ajax({
		type: 'GET',
		url: url,
		data: data,
		success: function(dd) {
			callback(dd);
		},
		error: function() {
			console.error("요청 실패");
		}
	});
}*/

