	$(function() {
	   
	});
	function getClass(ht){
	  $("#hsq").val(ht);
	  $("#getNew").submit();
	}
	function goclassDetail(classSeq,id,ss,cd){
		$("#class_seq").val(classSeq);
		$("#id").val(id);
		$("#student_seq").val(ss);
		$("#class_title").val(cd);
		$("#getClassDetail").submit();
	}