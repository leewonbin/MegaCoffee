$("form").on("submit", function(e) {
	let isValid = true;

	function validateInput(selector, errorMsg) {
		let value = $("[name="+selector+"]").val();
		if (value == "" || value < 0) {
			showAlert(errorMsg);
			$("[name="+selector+"]").focus();
			return false;
		}
		return true;
	}

	function validateCheckedInput(selector, errorMsg) {
		if ($('[name='+selector+']:checked').length == 0) {
			showAlert(errorMsg);
			return false;
		}
		return true;
	}

	const validations = [
		{ selector: "category_id", method: validateCheckedInput, msg: "카테고리를 선택해주세요." },
		{ selector: "type_id", method: validateCheckedInput, msg: "분류를 최소 하나 이상 선택해주세요." },
		{ selector: "menu_title", method: validateInput, msg: "메뉴 제목(한국어)을 입력해주세요." },
		{ selector: "menu_eng_title", method: validateInput, msg: "메뉴 제목(영어)을 입력해주세요." },
		{ selector: "menu_content", method: validateInput, msg: "메뉴 내용을 입력해주세요." },
		{ selector: "nut_size", method: validateInput, msg: "용량을 확인해주세요." },
		{ selector: "nut_calorie", method: validateInput, msg: "칼로리를 확인해주세요." },
		{ selector: "nut_saturated", method: validateInput, msg: "포화지방을 확인해주세요." },
		{ selector: "nut_sugar", method: validateInput, msg: "당을 확인해주세요." },
		{ selector: "nut_sodium", method: validateInput, msg: "나트륨을 확인해주세요." },
		{ selector: "nut_protein", method: validateInput, msg: "단백질을 확인해주세요." },
		{ selector: "nut_caffeine", method: validateInput, msg: "카페인을 확인해주세요." }
	];

	for (let validation of validations) {
		if (!validation.method(validation.selector, validation.msg)) {
			isValid = false;
			return false;
		}
	}

	if ($("[name='menu_img']").val() == "" && $("[name='menu_file_id']").val() == "") {
		showAlert("이미지를 업로드해주세요.");
		isValid = false;
		return false;
	}

	if (!isValid) {
		e.preventDefault();
	}
});