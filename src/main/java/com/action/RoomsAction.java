package com.action;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Rooms;
import com.service.RoomsService;
import com.entity.Cate;
import com.service.CateService;
import com.util.PageHelper;

//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/rooms", produces = "text/plain;charset=utf-8")
public class RoomsAction extends BaseAction {
	// 注入Service 由于标签的存在 所以不需要getter setter
	@Autowired
	@Resource
	private RoomsService roomsService;
	@Autowired
	@Resource
	private CateService cateService;

	// 准备添加数据
	@RequestMapping("createRooms.action")
	public String createRooms() {
		List<Cate> cateList = this.cateService.getAllCate();
		this.getRequest().setAttribute("cateList", cateList);
		return "admin/addrooms";
	}

	// 添加数据
	@RequestMapping("addRooms.action")
	public String addRooms(Rooms rooms) {
		rooms.setStatus("空闲");
		this.roomsService.insertRooms(rooms);
		return "redirect:/rooms/createRooms.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteRooms.action")
	public String deleteRooms(String id) {
		this.roomsService.deleteRooms(id);
		return "redirect:/rooms/getAllRooms.action";
	}

	// 批量删除数据
	@RequestMapping("deleteRoomsByIds.action")
	public String deleteRoomsByIds() {
		String[] ids = this.getRequest().getParameterValues("roomsid");
		for (String roomsid : ids) {
			this.roomsService.deleteRooms(roomsid);
		}
		return "redirect:/rooms/getAllRooms.action";
	}

	// 更新数据
	@RequestMapping("updateRooms.action")
	public String updateRooms(Rooms rooms) {
		this.roomsService.updateRooms(rooms);
		return "redirect:/rooms/getAllRooms.action";
	}

	// 显示全部数据
	@RequestMapping("getAllRooms.action")
	public String getAllRooms(String number) {
		List<Rooms> roomsList = this.roomsService.getAllRooms();
		PageHelper.getPage(roomsList, "rooms", null, null, 10, number, this.getRequest(), null);
		return "admin/listrooms";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryRoomsByCond.action")
	public String queryRoomsByCond(String cond, String name, String number) {
		Rooms rooms = new Rooms();
		if (cond != null) {
			if ("roomsno".equals(cond)) {
				rooms.setRoomsno(name);
			}
			if ("cateid".equals(cond)) {
				rooms.setCateid(name);
			}
			if ("price".equals(cond)) {
				rooms.setPrice(name);
			}
			if ("image".equals(cond)) {
				rooms.setImage(name);
			}
			if ("shebei".equals(cond)) {
				rooms.setShebei(name);
			}
			if ("chaoxiang".equals(cond)) {
				rooms.setChaoxiang(name);
			}
			if ("mianji".equals(cond)) {
				rooms.setMianji(name);
			}
			if ("status".equals(cond)) {
				rooms.setStatus(name);
			}
			if ("contents".equals(cond)) {
				rooms.setContents(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.roomsService.getRoomsByLike(rooms), "rooms", nameList, valueList, 10, number, this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/queryrooms";
	}

	// 按主键查询数据
	@RequestMapping("getRoomsById.action")
	public String getRoomsById(String id) {
		Rooms rooms = this.roomsService.getRoomsById(id);
		this.getRequest().setAttribute("rooms", rooms);
		List<Cate> cateList = this.cateService.getAllCate();
		this.getRequest().setAttribute("cateList", cateList);
		return "admin/editrooms";
	}

	public RoomsService getRoomsService() {
		return roomsService;
	}

	public void setRoomsService(RoomsService roomsService) {
		this.roomsService = roomsService;
	}

}
