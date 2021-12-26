package com.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.FordersDAO;
import com.entity.Forders;
import com.service.FordersService;

@Service("fordersService")
public class FordersServiceImpl implements FordersService {
	@Autowired
	@Resource
	private FordersDAO fordersDAO;

	@Override // 继承接口的新增 返回值0(失败),1(成功)
	public int insertForders(Forders forders) {
		return this.fordersDAO.insertForders(forders);
	}

	@Override // 继承接口的更新 返回值0(失败),1(成功)
	public int updateForders(Forders forders) {
		return this.fordersDAO.updateForders(forders);
	}

	@Override // 继承接口的删除 返回值0(失败),1(成功)
	public int deleteForders(String fordersid) {
		return this.fordersDAO.deleteForders(fordersid);
	}

	@Override // 继承接口的查询全部
	public List<Forders> getAllForders() {
		return this.fordersDAO.getAllForders();
	}

	@Override // 继承接口的按条件精确查询
	public List<Forders> getFordersByCond(Forders forders) {
		return this.fordersDAO.getFordersByCond(forders);
	}

	@Override // 继承接口的按条件模糊查询
	public List<Forders> getFordersByLike(Forders forders) {
		return this.fordersDAO.getFordersByLike(forders);
	}

	@Override // 继承接口的按主键查询 返回Entity实例
	public Forders getFordersById(String fordersid) {
		return this.fordersDAO.getFordersById(fordersid);
	}

}
