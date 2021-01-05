	$(function() {
		
	});
	function check(){
		var hw = $("#hw").val();
		if(hw == ""){
			alert("请填写单词！");
			$("#hw").focus();
			return false;
		} else {
			return true;
		}
	}