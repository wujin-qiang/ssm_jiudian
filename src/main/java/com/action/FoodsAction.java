package com.action;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Foods;
import com.service.FoodsService;
import com.entity.Fcate;
import com.service.FcateService;
import com.util.PageHelper;

//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/foods", produces = "text/plain;charset=utf-8")
public class FoodsAction extends BaseAction {
	// 注入Service 由于标签的存在 所以不需要getter setter
	@Autowired
	@Resource
	private FoodsService foodsService;
	@Autowired
	@Resource
	private FcateService fcateService;

	// 准备添加数据
	@RequestMapping("createFoods.action")
	public String createFoods() {
		List<Fcate> fcateList = this.fcateService.getAllFcate();
		this.getRequest().setAttribute("fcateList", fcateList);
		return "admin/addfoods";
	}

	// 添加数据
	@RequestMapping("addFoods.action")
	public String addFoods(Foods foods) {
		foods.setSellnum("0");
		this.foodsService.insertFoods(foods);
		return "redirect:/foods/createFoods.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteFoods.action")
	public String deleteFoods(String id) {
		this.foodsService.deleteFoods(id);
		return "redirect:/foods/getAllFoods.action";
	}

	// 批量删除数据
	@RequestMapping("deleteFoodsByIds.action")
	public String deleteFoodsByIds() {
		String[] ids = this.getRequest().getParameterValues("foodsid");
		for (String foodsid : ids) {
			this.foodsService.deleteFoods(foodsid);
		}
		return "redirect:/foods/getAllFoods.action";
	}

	// 更新数据
	@RequestMapping("updateFoods.action")
	public String updateFoods(Foods foods) {
		this.foodsService.updateFoods(foods);
		return "redirect:/foods/getAllFoods.action";
	}

	// 显示全部数据
	@RequestMapping("getAllFoods.action")
	public String getAllFoods(String number) {
		List<Foods> foodsList = this.foodsService.getAllFoods();
		PageHelper.getPage(foodsList, "foods", null, null, 10, number, this.getRequest(), null);
		return "admin/listfoods";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryFoodsByCond.action")
	public String queryFoodsByCond(String cond, String name, String number) {
		Foods foods = new Foods();
		if (cond != null) {
			if ("foodsname".equals(cond)) {
				foods.setFoodsname(name);
			}
			if ("fcateid".equals(cond)) {
				foods.setFcateid(name);
			}
			if ("image".equals(cond)) {
				foods.setImage(name);
			}
			if ("price".equals(cond)) {
				foods.setPrice(name);
			}
			if ("sellnum".equals(cond)) {
				foods.setSellnum(name);
			}
			if ("contents".equals(cond)) {
				foods.setContents(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.foodsService.getFoodsByLike(foods), "foods", nameList, valueList, 10, number, this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/queryfoods";
	}

	// 按主键查询数据
	@RequestMapping("getFoodsById.action")
	public String getFoodsById(String id) {
		Foods foods = this.foodsService.getFoodsById(id);
		this.getRequest().setAttribute("foods", foods);
		List<Fcate> fcateList = this.fcateService.getAllFcate();
		this.getRequest().setAttribute("fcateList", fcateList);
		return "admin/editfoods";
	}

	public FoodsService getFoodsService() {
		return foodsService;
	}

	public void setFoodsService(FoodsService foodsService) {
		this.foodsService = foodsService;
	}

}
