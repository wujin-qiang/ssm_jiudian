package com.action;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Fitems;
import com.service.FitemsService;
import com.entity.Foods;
import com.service.FoodsService;
import com.util.PageHelper;

//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/fitems", produces = "text/plain;charset=utf-8")
public class FitemsAction extends BaseAction {
	// 注入Service 由于标签的存在 所以不需要getter setter
	@Autowired
	@Resource
	private FitemsService fitemsService;
	@Autowired
	@Resource
	private FoodsService foodsService;

	// 准备添加数据
	@RequestMapping("createFitems.action")
	public String createFitems() {
		List<Foods> foodsList = this.foodsService.getAllFoods();
		this.getRequest().setAttribute("foodsList", foodsList);
		return "admin/addfitems";
	}

	// 添加数据
	@RequestMapping("addFitems.action")
	public String addFitems(Fitems fitems) {
		this.fitemsService.insertFitems(fitems);
		return "redirect:/fitems/createFitems.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteFitems.action")
	public String deleteFitems(String id) {
		this.fitemsService.deleteFitems(id);
		return "redirect:/fitems/getAllFitems.action";
	}

	// 批量删除数据
	@RequestMapping("deleteFitemsByIds.action")
	public String deleteFitemsByIds() {
		String[] ids = this.getRequest().getParameterValues("fitemsid");
		for (String fitemsid : ids) {
			this.fitemsService.deleteFitems(fitemsid);
		}
		return "redirect:/fitems/getAllFitems.action";
	}

	// 更新数据
	@RequestMapping("updateFitems.action")
	public String updateFitems(Fitems fitems) {
		this.fitemsService.updateFitems(fitems);
		return "redirect:/fitems/getAllFitems.action";
	}

	// 显示全部数据
	@RequestMapping("getAllFitems.action")
	public String getAllFitems(String number) {
		List<Fitems> fitemsList = this.fitemsService.getAllFitems();
		PageHelper.getPage(fitemsList, "fitems", null, null, 10, number, this.getRequest(), null);
		return "admin/listfitems";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryFitemsByCond.action")
	public String queryFitemsByCond(String cond, String name, String number) {
		Fitems fitems = new Fitems();
		if (cond != null) {
			if ("ordercode".equals(cond)) {
				fitems.setOrdercode(name);
			}
			if ("foodsid".equals(cond)) {
				fitems.setFoodsid(name);
			}
			if ("num".equals(cond)) {
				fitems.setNum(name);
			}
			if ("price".equals(cond)) {
				fitems.setPrice(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.fitemsService.getFitemsByLike(fitems), "fitems", nameList, valueList, 10, number, this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/queryfitems";
	}

	// 按主键查询数据
	@RequestMapping("getFitemsById.action")
	public String getFitemsById(String id) {
		Fitems fitems = this.fitemsService.getFitemsById(id);
		this.getRequest().setAttribute("fitems", fitems);
		List<Foods> foodsList = this.foodsService.getAllFoods();
		this.getRequest().setAttribute("foodsList", foodsList);
		return "admin/editfitems";
	}

	public FitemsService getFitemsService() {
		return fitemsService;
	}

	public void setFitemsService(FitemsService fitemsService) {
		this.fitemsService = fitemsService;
	}

}
