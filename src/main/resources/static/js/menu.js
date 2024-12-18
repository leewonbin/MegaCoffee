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

																// 한 페이지당 4 * 5로 구성되어 있음


/*document.addEventListener("DOMContentLoaded", function() {
	const rowsPerPage = 10;
	let currentPage = 1;
	const rows = document.querySelectorAll("#boardBody tr"); //모든 데이터 행

	const totalPages = Math.ceil(rows.length / rowsPerPage);

	function displayTable(page) {
		const start = (page - 1) * rowsPerPage;
		const end = start + rowsPerPage;

		rows.forEach((row, index) => {
			row.style.display = (index >= start && index < end) ? "" : "none";
		});

		createPageButtons();

		document.getElementById('prev').disabled = (page === 1);
		document.getElementById('next').disabled = (page === totalPages);

		document.getElementById('prev').style.display = (page === 1);
		document.getElementById('next').style.display = (page === totalPages);			//? 'none' : 'inline-block'
	}

	function createPageButtons() {
		const pageButtonsDiv = document.getElementById("page-buttons");
		pageButtonsDiv.innerHTML = "";

		const groupSize = 10;
		const currentGroup = Math.ceil(currentPage / groupSize);
		const startPage = (currentGroup - 1) * groupSize + 1;
		const endPage = Math.min(startPage + groupSize - 1, totalPages);

		for (let i = startPage; i <= endPage; i++) {
			const pageButton = document.createElement("button");
			pageButton.textContent = i;
			pageButton.classList.add("page-btn");

			if (i === currentPage) {
				pageButton.classList.add("active");
			}

			pageButton.addEventListener("click", function() {
				currentPage = i;
				displayTable(currentPage);
			});

			pageButtonsDiv.appendChild(pageButton);
		}
	}

	document.getElementById('prev').addEventListener('click', function() {
		if (currentPage > 1) {
			currentPage--;
			displayTable(currentPage);
		}
	});

	document.getElementById('next').addEventListener('click', function() {
		if (currentPage < totalPages) {
			currentPage++;
			displayTable(currentPage);
		}
	});

	displayTable(currentPage);

});
*/
