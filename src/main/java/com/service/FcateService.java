package com.service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.entity.Fcate;

@Service("fcateService")
public interface FcateService {
	// 插入数据 调用fcateDAO里的insertFcate配置
	public int insertFcate(Fcate fcate);

	// 更新数据 调用fcateDAO里的updateFcate配置
	public int updateFcate(Fcate fcate);

	// 删除数据 调用fcateDAO里的deleteFcate配置
	public int deleteFcate(String fcateid);

	// 查询全部数据 调用fcateDAO里的getAllFcate配置
	public List<Fcate> getAllFcate();

	// 按照Fcate类里面的字段名称精确查询 调用fcateDAO里的getFcateByCond配置
	public List<Fcate> getFcateByCond(Fcate fcate);

	// 按照Fcate类里面的字段名称模糊查询 调用fcateDAO里的getFcateByLike配置
	public List<Fcate> getFcateByLike(Fcate fcate);

	// 按主键查询表返回单一的Fcate实例 调用fcateDAO里的getFcateById配置
	public Fcate getFcateById(String fcateid);

}
