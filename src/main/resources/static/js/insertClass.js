function check(){
		var ct = $("#classtitle").val();
		var cd = $("#classdetail").val();
		if(cd == ""){
			alert("请填写课文内容！");
			$("#classdetail").focus();
			return false;
		} else {
			return true;
		}
	}