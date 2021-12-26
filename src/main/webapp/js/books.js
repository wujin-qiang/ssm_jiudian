$(function() {

$("#ordercode").blur(
		function() {
			$("#ordercode_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#ordercode").after("<span id='ordercode_msg' style='color: red'>订单号不能为空</span>");
			}
	});

$("#cate").blur(
		function() {
			$("#cate_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#cate").after("<span id='cate_msg' style='color: red'>收入来源不能为空</span>");
			}
	});

$("#money").blur(
		function() {
			$("#money_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#money").after("<span id='money_msg' style='color: red'>收入金额不能为空</span>");
			}
	});

$("#addtime").blur(
		function() {
			$("#addtime_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#addtime").after("<span id='addtime_msg' style='color: red'>收入日期不能为空</span>");
			}
	});







$('#sub').click(function(){
var ordercode = $("#ordercode").val();
var cate = $("#cate").val();
var money = $("#money").val();
var addtime = $("#addtime").val();
$("#ordercode_msg").empty();
$("#cate_msg").empty();
$("#money_msg").empty();
$("#addtime_msg").empty();
if (ordercode == "" || ordercode == null) {
	$("#ordercode").after("<span id='ordercode_msg' style='color: red'>订单号不能为空</span>");
	return false;
}
if (cate == "" || cate == null) {
	$("#cate").after("<span id='cate_msg' style='color: red'>收入来源不能为空</span>");
	return false;
}
if (money == "" || money == null) {
	$("#money").after("<span id='money_msg' style='color: red'>收入金额不能为空</span>");
	return false;
}
if (addtime == "" || addtime == null) {
	$("#addtime").after("<span id='addtime_msg' style='color: red'>收入日期不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#ordercode_msg").empty();
$("#cate_msg").empty();
$("#money_msg").empty();
$("#addtime_msg").empty();
});

});
