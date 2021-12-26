$(function() {

$("#fcatename").blur(
		function() {
			$("#fcatename_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#fcatename").after("<span id='fcatename_msg' style='color: red'>类型名称不能为空</span>");
			}
	});

$("#memo").blur(
		function() {
			$("#memo_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
			}
	});







$('#sub').click(function(){
var fcatename = $("#fcatename").val();
var memo = $("#memo").val();
$("#fcatename_msg").empty();
$("#memo_msg").empty();
if (fcatename == "" || fcatename == null) {
	$("#fcatename").after("<span id='fcatename_msg' style='color: red'>类型名称不能为空</span>");
	return false;
}
if (memo == "" || memo == null) {
	$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#fcatename_msg").empty();
$("#memo_msg").empty();
});

});
