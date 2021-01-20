	$(function() {
		$("#goback").click(function(){
			var id = $("#idis").val();
			var studentname = encodeURIComponent(id);
			location.href = "/startlean?id=" + studentname;
		});
	});
	