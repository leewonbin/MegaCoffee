const pageContentCnt = 20;
let currentPage = 1;

function createPaging(pageElement, rowsElement) {
	console.log("adasdfsf")
   let rows = $(rowsElement);
   let totalPageCnt = Math.ceil(rows.length / pageContentCnt);

   setElement();
   displayTable(currentPage);

   function setElement() {

      let pageHtml = `<button class="prev">Previous</button>
                       <div id="pageButtons"></div>
                       <button class="next">Next</button>`;
      $(pageElement).html(pageHtml);
   };

   function displayTable(page) {
      const start = (page - 1) * pageContentCnt;
      const end = start + pageContentCnt;

      rows.each(function(index, row) {
         row.style.display = (index >= start && index < end) ? "" : "none";
      });

      $(pageElement + " .prev").attr("disabled", currentPage <= 10);
      $(pageElement + " .next").attr("disabled", Math.ceil(currentPage / 10) === Math.ceil(totalPageCnt / 10));

      createButtons();
   };

   function createButtons() {
      const pageButtonDiv = $("#pageButtons");
      pageButtonDiv.html("");

      const currentGroup = Math.ceil(currentPage / 10);
      const startPage = (currentGroup - 1) * 10 + 1;
      const endPage = Math.min(startPage + 9, totalPageCnt);

      for (let i = startPage; i <= endPage; i++) {
         const button = $('<button></button>').text(i);
         button.addClass("pageBtn");
         if (i === currentPage) {
            button.addClass("active");
         }
         button.on("click", function() {
            currentPage = i;
            displayTable(currentPage);
         });

         pageButtonDiv.append(button);
      }
   }

   $(pageElement + " .prev").on("click", function() {
      const prevGroupStart = (Math.floor((currentPage - 1) / 10) - 1) * 10 + 1;
      if (prevGroupStart > 0) {
         currentPage = prevGroupStart;
         displayTable(currentPage);
      }
   });

   $(pageElement + " .next").on("click", function() {
      const nextGroupStart = Math.ceil(currentPage / 10) * 10 + 1;
      if (nextGroupStart <= totalPageCnt) {
         currentPage = nextGroupStart;
         displayTable(currentPage);
      }
   });
}
