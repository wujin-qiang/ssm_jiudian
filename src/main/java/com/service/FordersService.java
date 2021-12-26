package com.service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.entity.Forders;

@Service("fordersService")
public interface FordersService {
	// 插入数据 调用fordersDAO里的insertForders配置
	public int insertForders(Forders forders);

	// 更新数据 调用fordersDAO里的updateForders配置
	public int updateForders(Forders forders);

	// 删除数据 调用fordersDAO里的deleteForders配置
	public int deleteForders(String fordersid);

	// 查询全部数据 调用fordersDAO里的getAllForders配置
	public List<Forders> getAllForders();

	// 按照Forders类里面的字段名称精确查询 调用fordersDAO里的getFordersByCond配置
	public List<Forders> getFordersByCond(Forders forders);

	// 按照Forders类里面的字段名称模糊查询 调用fordersDAO里的getFordersByLike配置
	public List<Forders> getFordersByLike(Forders forders);

	// 按主键查询表返回单一的Forders实例 调用fordersDAO里的getFordersById配置
	public Forders getFordersById(String fordersid);

}
