package com.action;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Fcate;
import com.service.FcateService;
import com.util.PageHelper;

//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/fcate", produces = "text/plain;charset=utf-8")
public class FcateAction extends BaseAction {
	// 注入Service 由于标签的存在 所以不需要getter setter
	@Autowired
	@Resource
	private FcateService fcateService;

	// 准备添加数据
	@RequestMapping("createFcate.action")
	public String createFcate() {
		return "admin/addfcate";
	}

	// 添加数据
	@RequestMapping("addFcate.action")
	public String addFcate(Fcate fcate) {
		this.fcateService.insertFcate(fcate);
		return "redirect:/fcate/createFcate.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteFcate.action")
	public String deleteFcate(String id) {
		this.fcateService.deleteFcate(id);
		return "redirect:/fcate/getAllFcate.action";
	}

	// 批量删除数据
	@RequestMapping("deleteFcateByIds.action")
	public String deleteFcateByIds() {
		String[] ids = this.getRequest().getParameterValues("fcateid");
		for (String fcateid : ids) {
			this.fcateService.deleteFcate(fcateid);
		}
		return "redirect:/fcate/getAllFcate.action";
	}

	// 更新数据
	@RequestMapping("updateFcate.action")
	public String updateFcate(Fcate fcate) {
		this.fcateService.updateFcate(fcate);
		return "redirect:/fcate/getAllFcate.action";
	}

	// 显示全部数据
	@RequestMapping("getAllFcate.action")
	public String getAllFcate(String number) {
		List<Fcate> fcateList = this.fcateService.getAllFcate();
		PageHelper.getPage(fcateList, "fcate", null, null, 10, number, this.getRequest(), null);
		return "admin/listfcate";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryFcateByCond.action")
	public String queryFcateByCond(String cond, String name, String number) {
		Fcate fcate = new Fcate();
		if (cond != null) {
			if ("fcatename".equals(cond)) {
				fcate.setFcatename(name);
			}
			if ("memo".equals(cond)) {
				fcate.setMemo(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.fcateService.getFcateByLike(fcate), "fcate", nameList, valueList, 10, number, this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/queryfcate";
	}

	// 按主键查询数据
	@RequestMapping("getFcateById.action")
	public String getFcateById(String id) {
		Fcate fcate = this.fcateService.getFcateById(id);
		this.getRequest().setAttribute("fcate", fcate);
		return "admin/editfcate";
	}

	public FcateService getFcateService() {
		return fcateService;
	}

	public void setFcateService(FcateService fcateService) {
		this.fcateService = fcateService;
	}

}
