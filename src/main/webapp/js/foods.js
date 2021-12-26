$(function() {

$("#foodsname").blur(
		function() {
			$("#foodsname_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#foodsname").after("<span id='foodsname_msg' style='color: red'>食品名称不能为空</span>");
			}
	});

$("#fcateid").blur(
		function() {
			$("#fcateid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#fcateid").after("<span id='fcateid_msg' style='color: red'>食品类型不能为空</span>");
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

$("#price").blur(
		function() {
			$("#price_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#price").after("<span id='price_msg' style='color: red'>价格不能为空</span>");
			}
	});

$("#contents").blur(
		function() {
			$("#contents_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#contents").after("<span id='contents_msg' style='color: red'>食品介绍不能为空</span>");
			}
	});







$('#sub').click(function(){
var foodsname = $("#foodsname").val();
var fcateid = $("#fcateid").val();
var image = $("#image").val();
var price = $("#price").val();
var contents = $("#contents").val();
$("#foodsname_msg").empty();
$("#fcateid_msg").empty();
$("#image_msg").empty();
$("#price_msg").empty();
$("#contents_msg").empty();
if (foodsname == "" || foodsname == null) {
	$("#foodsname").after("<span id='foodsname_msg' style='color: red'>食品名称不能为空</span>");
	return false;
}
if (fcateid == "" || fcateid == null) {
	$("#fcateid").after("<span id='fcateid_msg' style='color: red'>食品类型不能为空</span>");
	return false;
}
if (image == "" || image == null) {
	$("#image").after("<span id='image_msg' style='color: red'>图片不能为空</span>");
	return false;
}
if (price == "" || price == null) {
	$("#price").after("<span id='price_msg' style='color: red'>价格不能为空</span>");
	return false;
}
if (contents == "" || contents == null) {
	$("#contents").after("<span id='contents_msg' style='color: red'>食品介绍不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#foodsname_msg").empty();
$("#fcateid_msg").empty();
$("#image_msg").empty();
$("#price_msg").empty();
$("#contents_msg").empty();
});

});
