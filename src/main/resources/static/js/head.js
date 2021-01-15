	function goclasslist(id){
		if(id==""||id==undefined){
			alert("丢失了学生信息！");
			window.location.href = "/start";
			return;
		} 
			var studentname = encodeURIComponent(id);
			window.location.href = "/startlean?id=" + studentname;
		
		
	}
	function goclassStart(){
		window.location.href = "/start";
	}
	function insertClass(id){
		var studentname = encodeURIComponent(id);
		window.location.href = "/insertClass?id=" + studentname;
	}
	
	