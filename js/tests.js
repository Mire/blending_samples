$(document).ready(function() {
	$("a").click(
		function (event) {
			event.preventDefault();
			if (event && event.target && event.target.attributes && event.target.attributes.href) {
				var leftHtml = $(event.target).attr("href");
				$("#test-container").attr("src", leftHtml);
				var ref = leftHtml.replace(".html", ".png")
				// $("#ref-container").attr("src", ref);
				// $("#ref-container").contents("");
				
				$('#ref-container').contents().find('html').html("<html><body><img src='" + ref + "' style='width: 440px'/></body></html>");
			}
		}
	);
});