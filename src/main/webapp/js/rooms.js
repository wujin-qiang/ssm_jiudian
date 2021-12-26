$(function() {

$("#roomsno").blur(
		function() {
			$("#roomsno_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#roomsno").after("<span id='roomsno_msg' style='color: red'>客房号不能为空</span>");
			}
	});

$("#cateid").blur(
		function() {
			$("#cateid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#cateid").after("<span id='cateid_msg' style='color: red'>客房类型不能为空</span>");
			}
	});

$("#price").blur(
		function() {
			$("#price_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#price").after("<span id='price_msg' style='color: red'>单价不能为空</span>");
			}
	});

$("#image").blur(
		function() {
			$("#image_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#image").after("<span id='image_msg' style='color: red'>图片不能为空</span>");
			}
	});

$("#shebei").blur(
		function() {
			$("#shebei_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#shebei").after("<span id='shebei_msg' style='color: red'>客房设备不能为空</span>");
			}
	});

$("#chaoxiang").blur(
		function() {
			$("#chaoxiang_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#chaoxiang").after("<span id='chaoxiang_msg' style='color: red'>朝向不能为空</span>");
			}
	});

$("#mianji").blur(
		function() {
			$("#mianji_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#mianji").after("<span id='mianji_msg' style='color: red'>面积不能为空</span>");
			}
	});

$("#contents").blur(
		function() {
			$("#contents_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#contents").after("<span id='contents_msg' style='color: red'>客房介绍不能为空</span>");
			}
	});







$('#sub').click(function(){
var roomsno = $("#roomsno").val();
var cateid = $("#cateid").val();
var price = $("#price").val();
var image = $("#image").val();
var shebei = $("#shebei").val();
var chaoxiang = $("#chaoxiang").val();
var mianji = $("#mianji").val();
var contents = $("#contents").val();
$("#roomsno_msg").empty();
$("#cateid_msg").empty();
$("#price_msg").empty();
$("#image_msg").empty();
$("#shebei_msg").empty();
$("#chaoxiang_msg").empty();
$("#mianji_msg").empty();
$("#contents_msg").empty();
if (roomsno == "" || roomsno == null) {
	$("#roomsno").after("<span id='roomsno_msg' style='color: red'>客房号不能为空</span>");
	return false;
}
if (cateid == "" || cateid == null) {
	$("#cateid").after("<span id='cateid_msg' style='color: red'>客房类型不能为空</span>");
	return false;
}
if (price == "" || price == null) {
	$("#price").after("<span id='price_msg' style='color: red'>单价不能为空</span>");
	return false;
}
if (image == "" || image == null) {
	$("#image").after("<span id='image_msg' style='color: red'>图片不能为空</span>");
	return false;
}
if (shebei == "" || shebei == null) {
	$("#shebei").after("<span id='shebei_msg' style='color: red'>客房设备不能为空</span>");
	return false;
}
if (chaoxiang == "" || chaoxiang == null) {
	$("#chaoxiang").after("<span id='chaoxiang_msg' style='color: red'>朝向不能为空</span>");
	return false;
}
if (mianji == "" || mianji == null) {
	$("#mianji").after("<span id='mianji_msg' style='color: red'>面积不能为空</span>");
	return false;
}
if (contents == "" || contents == null) {
	$("#contents").after("<span id='contents_msg' style='color: red'>客房介绍不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#roomsno_msg").empty();
$("#cateid_msg").empty();
$("#price_msg").empty();
$("#image_msg").empty();
$("#shebei_msg").empty();
$("#chaoxiang_msg").empty();
$("#mianji_msg").empty();
$("#contents_msg").empty();
});

});
