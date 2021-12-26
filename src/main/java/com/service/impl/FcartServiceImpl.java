package com.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.FcartDAO;
import com.entity.Fcart;
import com.service.FcartService;

@Service("fcartService")
public class FcartServiceImpl implements FcartService {
	@Autowired
	@Resource
	private FcartDAO fcartDAO;

	@Override // 继承接口的新增 返回值0(失败),1(成功)
	public int insertFcart(Fcart fcart) {
		return this.fcartDAO.insertFcart(fcart);
	}

	@Override // 继承接口的更新 返回值0(失败),1(成功)
	public int updateFcart(Fcart fcart) {
		return this.fcartDAO.updateFcart(fcart);
	}

	@Override // 继承接口的删除 返回值0(失败),1(成功)
	public int deleteFcart(String fcartid) {
		return this.fcartDAO.deleteFcart(fcartid);
	}

	@Override // 继承接口的查询全部
	public List<Fcart> getAllFcart() {
		return this.fcartDAO.getAllFcart();
	}

	@Override // 继承接口的按条件精确查询
	public List<Fcart> getFcartByCond(Fcart fcart) {
		return this.fcartDAO.getFcartByCond(fcart);
	}

	@Override // 继承接口的按条件模糊查询
	public List<Fcart> getFcartByLike(Fcart fcart) {
		return this.fcartDAO.getFcartByLike(fcart);
	}

	@Override // 继承接口的按主键查询 返回Entity实例
	public Fcart getFcartById(String fcartid) {
		return this.fcartDAO.getFcartById(fcartid);
	}

}
