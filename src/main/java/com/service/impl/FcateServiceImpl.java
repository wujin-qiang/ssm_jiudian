package com.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.FcateDAO;
import com.entity.Fcate;
import com.service.FcateService;

@Service("fcateService")
public class FcateServiceImpl implements FcateService {
	@Autowired
	@Resource
	private FcateDAO fcateDAO;

	@Override // 继承接口的新增 返回值0(失败),1(成功)
	public int insertFcate(Fcate fcate) {
		return this.fcateDAO.insertFcate(fcate);
	}

	@Override // 继承接口的更新 返回值0(失败),1(成功)
	public int updateFcate(Fcate fcate) {
		return this.fcateDAO.updateFcate(fcate);
	}

	@Override // 继承接口的删除 返回值0(失败),1(成功)
	public int deleteFcate(String fcateid) {
		return this.fcateDAO.deleteFcate(fcateid);
	}

	@Override // 继承接口的查询全部
	public List<Fcate> getAllFcate() {
		return this.fcateDAO.getAllFcate();
	}

	@Override // 继承接口的按条件精确查询
	public List<Fcate> getFcateByCond(Fcate fcate) {
		return this.fcateDAO.getFcateByCond(fcate);
	}

	@Override // 继承接口的按条件模糊查询
	public List<Fcate> getFcateByLike(Fcate fcate) {
		return this.fcateDAO.getFcateByLike(fcate);
	}

	@Override // 继承接口的按主键查询 返回Entity实例
	public Fcate getFcateById(String fcateid) {
		return this.fcateDAO.getFcateById(fcateid);
	}

}
