/**
 * 
 */
const drinkType = [1, 2, 3, 4, 5, 6, 8];
const foodType = [7, 8];

$(function() {
	let category_id = $("[name=category_id]:checked").val();
	typeDisabled(category_id);
})

$("[name=category_id]").on("change",function() {
	typeDisabled(this.value);
});

function fileSelect(f) {
	const fileName = f.files[0].name;
	
	let fileExt = fileName.substring(fileName.lastIndexOf('.'),fileName.length).toLowerCase();
	
	if($.inArray(fileExt,[".jpg",".jpeg","png","pneg"]) == -1) {
		$("[name=menu_img]").val("");
		showAlert("이미지 파일을 선택해주세요.");
		return false;
	}
	
	$("input[name=menu_file_id]").val(fileName);
}


function typeDisabled(category) {
	let types = document.getElementsByName("type_id");
	switch (category) {
		case "1":
			for (let type of types) {
				type.checked = false;
				type.disabled = !drinkType.includes(Number(type.value));
			}
			break;
		case "2":
			for (let type of types) {
				type.checked = false;
				type.disabled = !foodType.includes(Number(type.value));
			}
			break;
	}
}