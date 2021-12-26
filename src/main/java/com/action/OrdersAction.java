package com.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Books;
import com.entity.Orders;
import com.service.BooksService;
import com.service.OrdersService;
import com.entity.Users;
import com.entity.Rooms;
import com.service.UsersService;
import com.service.RoomsService;
import com.util.PageHelper;
import com.util.VeDate;

//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/orders", produces = "text/plain;charset=utf-8")
public class OrdersAction extends BaseAction {
	// 注入Service 由于标签的存在 所以不需要getter setter
	@Autowired
	@Resource
	private OrdersService ordersService;
	@Autowired
	@Resource
	private UsersService usersService;
	@Autowired
	@Resource
	private RoomsService roomsService;
	@Autowired
	@Resource
	private BooksService booksService;

	// 准备添加数据
	@RequestMapping("createOrders.action")
	public String createOrders() {
		List<Users> usersList = this.usersService.getAllUsers();
		this.getRequest().setAttribute("usersList", usersList);
		List<Rooms> roomsList = this.roomsService.getAllRooms();
		this.getRequest().setAttribute("roomsList", roomsList);
		return "admin/addorders";
	}

	// 添加数据
	@RequestMapping("addOrders.action")
	public String addOrders(Orders orders) {
		this.ordersService.insertOrders(orders);
		return "redirect:/orders/createOrders.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteOrders.action")
	public String deleteOrders(String id) {
		this.ordersService.deleteOrders(id);
		return "redirect:/orders/getAllOrders.action";
	}

	// 批量删除数据
	@RequestMapping("deleteOrdersByIds.action")
	public String deleteOrdersByIds() {
		String[] ids = this.getRequest().getParameterValues("ordersid");
		for (String ordersid : ids) {
			this.ordersService.deleteOrders(ordersid);
		}
		return "redirect:/orders/getAllOrders.action";
	}

	// 更新数据
	@RequestMapping("updateOrders.action")
	public String updateOrders(Orders orders) {
		this.ordersService.updateOrders(orders);
		return "redirect:/orders/getAllOrders.action";
	}

	@RequestMapping("stayin.action")
	public String stayin(String id) {
		String date = VeDate.getStringDateShort();
		Orders orders = this.ordersService.getOrdersById(id);
		if(!date.equals(orders.getBegindate())){
			this.getSession().setAttribute("message", "非当天不能办理入住");
			return "redirect:/orders/getAllOrders.action";
		}
		orders.setStatus("已入住");
		orders.setThestart(VeDate.getStringDateShort());
		this.ordersService.updateOrders(orders);
		Rooms rooms = this.roomsService.getRoomsById(orders.getRoomsid());
		rooms.setStatus("入住");
		this.roomsService.updateRooms(rooms);
		return "redirect:/orders/getAllOrders.action";
	}

	@RequestMapping("checkout.action")
	public String checkout(String id) {
		Orders orders = this.ordersService.getOrdersById(id);
		orders.setStatus("结算");
		orders.setTheend(VeDate.getStringDateShort());
		Rooms rooms = this.roomsService.getRoomsById(orders.getRoomsid());
		rooms.setStatus("空闲");
		this.roomsService.updateRooms(rooms);
		long days = VeDate.getDays(orders.getTheend(), orders.getThestart()) + 1;
		double total = VeDate.getDouble(days * Double.parseDouble(rooms.getPrice()));
		orders.setTotal("" + total);
		this.ordersService.updateOrders(orders);
		Books books = new Books();
		books.setAddtime(VeDate.getStringDateShort());
		books.setCate("客房收入");
		books.setMoney(orders.getTotal());
		books.setOrdercode(orders.getOrdercode());
		this.booksService.insertBooks(books);
		this.getSession().setAttribute("message", "应付费用 " + total + " 元");
		return "redirect:/orders/getAllOrders.action";
	}

	// 显示全部数据
	@RequestMapping("getAllOrders.action")
	public String getAllOrders(String number) {
		List<Orders> ordersList = this.ordersService.getAllOrders();
		PageHelper.getPage(ordersList, "orders", null, null, 10, number, this.getRequest(), null);
		return "admin/listorders";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryOrdersByCond.action")
	public String queryOrdersByCond(String cond, String name, String number) {
		Orders orders = new Orders();
		if (cond != null) {
			if ("ordercode".equals(cond)) {
				orders.setOrdercode(name);
			}
			if ("usersid".equals(cond)) {
				orders.setUsersid(name);
			}
			if ("roomsid".equals(cond)) {
				orders.setRoomsid(name);
			}
			if ("price".equals(cond)) {
				orders.setPrice(name);
			}
			if ("thestart".equals(cond)) {
				orders.setThestart(name);
			}
			if ("theend".equals(cond)) {
				orders.setTheend(name);
			}
			if ("total".equals(cond)) {
				orders.setTotal(name);
			}
			if ("status".equals(cond)) {
				orders.setStatus(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.ordersService.getOrdersByLike(orders), "orders", nameList, valueList, 10, number, this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/queryorders";
	}

	// 按主键查询数据
	@RequestMapping("getOrdersById.action")
	public String getOrdersById(String id) {
		Orders orders = this.ordersService.getOrdersById(id);
		this.getRequest().setAttribute("orders", orders);
		List<Users> usersList = this.usersService.getAllUsers();
		this.getRequest().setAttribute("usersList", usersList);
		List<Rooms> roomsList = this.roomsService.getAllRooms();
		this.getRequest().setAttribute("roomsList", roomsList);
		return "admin/editorders";
	}

	public OrdersService getOrdersService() {
		return ordersService;
	}

	public void setOrdersService(OrdersService ordersService) {
		this.ordersService = ordersService;
	}

}
