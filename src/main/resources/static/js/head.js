	function goclasslist(id){
		if(id==""||id==undefined){
			alert("丢失了学生信息！");
			return "再见！";
		}
		var studentname = encodeURIComponent(id);
		window.location.href = "/startlean?id=" + studentname;
	}
	function goclassStart(){
		window.location.href = "/start";
	}