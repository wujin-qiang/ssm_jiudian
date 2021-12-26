package com.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Books;
import com.entity.Forders;
import com.entity.Users;
import com.service.BooksService;
import com.service.FordersService;
import com.service.UsersService;
import com.util.PageHelper;
import com.util.VeDate;

//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/forders", produces = "text/plain;charset=utf-8")
public class FordersAction extends BaseAction {
	// 注入Service 由于标签的存在 所以不需要getter setter
	@Autowired
	@Resource
	private FordersService fordersService;
	@Autowired
	@Resource
	private UsersService usersService;
	@Autowired
	@Resource
	private BooksService booksService;

	// 准备添加数据
	@RequestMapping("createForders.action")
	public String createForders() {
		List<Users> usersList = this.usersService.getAllUsers();
		this.getRequest().setAttribute("usersList", usersList);
		return "admin/addforders";
	}

	// 添加数据
	@RequestMapping("addForders.action")
	public String addForders(Forders forders) {
		this.fordersService.insertForders(forders);
		return "redirect:/forders/createForders.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteForders.action")
	public String deleteForders(String id) {
		this.fordersService.deleteForders(id);
		return "redirect:/forders/getAllForders.action";
	}

	// 批量删除数据
	@RequestMapping("deleteFordersByIds.action")
	public String deleteFordersByIds() {
		String[] ids = this.getRequest().getParameterValues("fordersid");
		for (String fordersid : ids) {
			this.fordersService.deleteForders(fordersid);
		}
		return "redirect:/forders/getAllForders.action";
	}

	// 更新数据
	@RequestMapping("updateForders.action")
	public String updateForders(Forders forders) {
		this.fordersService.updateForders(forders);
		return "redirect:/forders/getAllForders.action";
	}

	@RequestMapping("checkout.action")
	public String checkout(String id) {
		Forders forders = this.fordersService.getFordersById(id);
		forders.setStatus("已结算");
		this.fordersService.updateForders(forders);
		Books books = new Books();
		books.setAddtime(VeDate.getStringDateShort());
		books.setCate("餐饮收入");
		books.setMoney(forders.getTotal());
		books.setOrdercode(forders.getOrdercode());
		this.booksService.insertBooks(books);
		return "redirect:/forders/getAllForders.action";
	}

	// 显示全部数据
	@RequestMapping("getAllForders.action")
	public String getAllForders(String number) {
		List<Forders> fordersList = this.fordersService.getAllForders();
		PageHelper.getPage(fordersList, "forders", null, null, 10, number, this.getRequest(), null);
		return "admin/listforders";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryFordersByCond.action")
	public String queryFordersByCond(String cond, String name, String number) {
		Forders forders = new Forders();
		if (cond != null) {
			if ("ordercode".equals(cond)) {
				forders.setOrdercode(name);
			}
			if ("usersid".equals(cond)) {
				forders.setUsersid(name);
			}
			if ("total".equals(cond)) {
				forders.setTotal(name);
			}
			if ("addtime".equals(cond)) {
				forders.setAddtime(name);
			}
			if ("status".equals(cond)) {
				forders.setStatus(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.fordersService.getFordersByLike(forders), "forders", nameList, valueList, 10, number, this.getRequest(),
				"query");
		name = null;
		cond = null;
		return "admin/queryforders";
	}

	// 按主键查询数据
	@RequestMapping("getFordersById.action")
	public String getFordersById(String id) {
		Forders forders = this.fordersService.getFordersById(id);
		this.getRequest().setAttribute("forders", forders);
		List<Users> usersList = this.usersService.getAllUsers();
		this.getRequest().setAttribute("usersList", usersList);
		return "admin/editforders";
	}

	public FordersService getFordersService() {
		return fordersService;
	}

	public void setFordersService(FordersService fordersService) {
		this.fordersService = fordersService;
	}

}
