$(document).ready(function() {
	$("a").click(
		function (event) {
			event.preventDefault();
			if (event && event.target && event.target.attributes && event.target.attributes.href) {
				var leftHtml = $(event.target).attr("href");
				$("#test-container").attr("src", leftHtml);
				var rightHtml = leftHtml.replace(".html", "-screenshot.html")
				$("#ref-container").attr("src", rightHtml);

			}
		}
	);
});