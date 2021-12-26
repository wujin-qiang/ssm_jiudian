$(function() {

$("#usersid").blur(
		function() {
			$("#usersid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#usersid").after("<span id='usersid_msg' style='color: red'>用户不能为空</span>");
			}
	});

$("#roomsid").blur(
		function() {
			$("#roomsid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#roomsid").after("<span id='roomsid_msg' style='color: red'>客房不能为空</span>");
			}
	});

$("#price").blur(
		function() {
			$("#price_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#price").after("<span id='price_msg' style='color: red'>价格不能为空</span>");
			}
	});

$("#addtime").blur(
		function() {
			$("#addtime_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#addtime").after("<span id='addtime_msg' style='color: red'>加入日期不能为空</span>");
			}
	});







$('#sub').click(function(){
var usersid = $("#usersid").val();
var roomsid = $("#roomsid").val();
var price = $("#price").val();
var addtime = $("#addtime").val();
$("#usersid_msg").empty();
$("#roomsid_msg").empty();
$("#price_msg").empty();
$("#addtime_msg").empty();
if (usersid == "" || usersid == null) {
	$("#usersid").after("<span id='usersid_msg' style='color: red'>用户不能为空</span>");
	return false;
}
if (roomsid == "" || roomsid == null) {
	$("#roomsid").after("<span id='roomsid_msg' style='color: red'>客房不能为空</span>");
	return false;
}
if (price == "" || price == null) {
	$("#price").after("<span id='price_msg' style='color: red'>价格不能为空</span>");
	return false;
}
if (addtime == "" || addtime == null) {
	$("#addtime").after("<span id='addtime_msg' style='color: red'>加入日期不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#usersid_msg").empty();
$("#roomsid_msg").empty();
$("#price_msg").empty();
$("#addtime_msg").empty();
});

});
