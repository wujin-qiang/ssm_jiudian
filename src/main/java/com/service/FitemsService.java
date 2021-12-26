package com.service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.entity.Fitems;

@Service("fitemsService")
public interface FitemsService {
	// 插入数据 调用fitemsDAO里的insertFitems配置
	public int insertFitems(Fitems fitems);

	// 更新数据 调用fitemsDAO里的updateFitems配置
	public int updateFitems(Fitems fitems);

	// 删除数据 调用fitemsDAO里的deleteFitems配置
	public int deleteFitems(String fitemsid);

	// 查询全部数据 调用fitemsDAO里的getAllFitems配置
	public List<Fitems> getAllFitems();

	// 按照Fitems类里面的字段名称精确查询 调用fitemsDAO里的getFitemsByCond配置
	public List<Fitems> getFitemsByCond(Fitems fitems);

	// 按照Fitems类里面的字段名称模糊查询 调用fitemsDAO里的getFitemsByLike配置
	public List<Fitems> getFitemsByLike(Fitems fitems);

	// 按主键查询表返回单一的Fitems实例 调用fitemsDAO里的getFitemsById配置
	public Fitems getFitemsById(String fitemsid);

}
