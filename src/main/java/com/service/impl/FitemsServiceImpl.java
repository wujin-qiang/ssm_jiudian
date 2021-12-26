package com.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.FitemsDAO;
import com.entity.Fitems;
import com.service.FitemsService;

@Service("fitemsService")
public class FitemsServiceImpl implements FitemsService {
	@Autowired
	@Resource
	private FitemsDAO fitemsDAO;

	@Override // 继承接口的新增 返回值0(失败),1(成功)
	public int insertFitems(Fitems fitems) {
		return this.fitemsDAO.insertFitems(fitems);
	}

	@Override // 继承接口的更新 返回值0(失败),1(成功)
	public int updateFitems(Fitems fitems) {
		return this.fitemsDAO.updateFitems(fitems);
	}

	@Override // 继承接口的删除 返回值0(失败),1(成功)
	public int deleteFitems(String fitemsid) {
		return this.fitemsDAO.deleteFitems(fitemsid);
	}

	@Override // 继承接口的查询全部
	public List<Fitems> getAllFitems() {
		return this.fitemsDAO.getAllFitems();
	}

	@Override // 继承接口的按条件精确查询
	public List<Fitems> getFitemsByCond(Fitems fitems) {
		return this.fitemsDAO.getFitemsByCond(fitems);
	}

	@Override // 继承接口的按条件模糊查询
	public List<Fitems> getFitemsByLike(Fitems fitems) {
		return this.fitemsDAO.getFitemsByLike(fitems);
	}

	@Override // 继承接口的按主键查询 返回Entity实例
	public Fitems getFitemsById(String fitemsid) {
		return this.fitemsDAO.getFitemsById(fitemsid);
	}

}
