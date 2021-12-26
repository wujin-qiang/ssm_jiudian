package com.service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.entity.Fcart;

@Service("fcartService")
public interface FcartService {
	// 插入数据 调用fcartDAO里的insertFcart配置
	public int insertFcart(Fcart fcart);

	// 更新数据 调用fcartDAO里的updateFcart配置
	public int updateFcart(Fcart fcart);

	// 删除数据 调用fcartDAO里的deleteFcart配置
	public int deleteFcart(String fcartid);

	// 查询全部数据 调用fcartDAO里的getAllFcart配置
	public List<Fcart> getAllFcart();

	// 按照Fcart类里面的字段名称精确查询 调用fcartDAO里的getFcartByCond配置
	public List<Fcart> getFcartByCond(Fcart fcart);

	// 按照Fcart类里面的字段名称模糊查询 调用fcartDAO里的getFcartByLike配置
	public List<Fcart> getFcartByLike(Fcart fcart);

	// 按主键查询表返回单一的Fcart实例 调用fcartDAO里的getFcartById配置
	public Fcart getFcartById(String fcartid);

}
