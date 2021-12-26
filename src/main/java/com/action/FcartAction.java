package com.action;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Fcart;
import com.service.FcartService;
import com.entity.Users;
import com.entity.Foods;
import com.service.UsersService;
import com.service.FoodsService;
import com.util.PageHelper;

//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/fcart", produces = "text/plain;charset=utf-8")
public class FcartAction extends BaseAction {
	// 注入Service 由于标签的存在 所以不需要getter setter
	@Autowired
	@Resource
	private FcartService fcartService;
	@Autowired
	@Resource
	private UsersService usersService;
	@Autowired
	@Resource
	private FoodsService foodsService;

	// 准备添加数据
	@RequestMapping("createFcart.action")
	public String createFcart() {
		List<Users> usersList = this.usersService.getAllUsers();
		this.getRequest().setAttribute("usersList", usersList);
		List<Foods> foodsList = this.foodsService.getAllFoods();
		this.getRequest().setAttribute("foodsList", foodsList);
		return "admin/addfcart";
	}

	// 添加数据
	@RequestMapping("addFcart.action")
	public String addFcart(Fcart fcart) {
		this.fcartService.insertFcart(fcart);
		return "redirect:/fcart/createFcart.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteFcart.action")
	public String deleteFcart(String id) {
		this.fcartService.deleteFcart(id);
		return "redirect:/fcart/getAllFcart.action";
	}

	// 批量删除数据
	@RequestMapping("deleteFcartByIds.action")
	public String deleteFcartByIds() {
		String[] ids = this.getRequest().getParameterValues("fcartid");
		for (String fcartid : ids) {
			this.fcartService.deleteFcart(fcartid);
		}
		return "redirect:/fcart/getAllFcart.action";
	}

	// 更新数据
	@RequestMapping("updateFcart.action")
	public String updateFcart(Fcart fcart) {
		this.fcartService.updateFcart(fcart);
		return "redirect:/fcart/getAllFcart.action";
	}

	// 显示全部数据
	@RequestMapping("getAllFcart.action")
	public String getAllFcart(String number) {
		List<Fcart> fcartList = this.fcartService.getAllFcart();
		PageHelper.getPage(fcartList, "fcart", null, null, 10, number, this.getRequest(), null);
		return "admin/listfcart";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryFcartByCond.action")
	public String queryFcartByCond(String cond, String name, String number) {
		Fcart fcart = new Fcart();
		if (cond != null) {
			if ("usersid".equals(cond)) {
				fcart.setUsersid(name);
			}
			if ("foodsid".equals(cond)) {
				fcart.setFoodsid(name);
			}
			if ("num".equals(cond)) {
				fcart.setNum(name);
			}
			if ("price".equals(cond)) {
				fcart.setPrice(name);
			}
			if ("addtime".equals(cond)) {
				fcart.setAddtime(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.fcartService.getFcartByLike(fcart), "fcart", nameList, valueList, 10, number, this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/queryfcart";
	}

	// 按主键查询数据
	@RequestMapping("getFcartById.action")
	public String getFcartById(String id) {
		Fcart fcart = this.fcartService.getFcartById(id);
		this.getRequest().setAttribute("fcart", fcart);
		List<Users> usersList = this.usersService.getAllUsers();
		this.getRequest().setAttribute("usersList", usersList);
		List<Foods> foodsList = this.foodsService.getAllFoods();
		this.getRequest().setAttribute("foodsList", foodsList);
		return "admin/editfcart";
	}

	public FcartService getFcartService() {
		return fcartService;
	}

	public void setFcartService(FcartService fcartService) {
		this.fcartService = fcartService;
	}

}
