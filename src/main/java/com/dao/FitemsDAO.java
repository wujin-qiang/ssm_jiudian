package com.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.entity.Fitems;

@Repository("fitemsDAO") // Repository标签定义数据库连接的访问 Spring中直接
public interface FitemsDAO {

	/**
	 * FitemsDAO 接口 可以按名称直接调用fitems.xml配置文件的SQL语句
	 */

	// 插入数据 调用entity包fitems.xml里的insertFitems配置 返回值0(失败),1(成功)
	public int insertFitems(Fitems fitems);

	// 更新数据 调用entity包fitems.xml里的updateFitems配置 返回值0(失败),1(成功)
	public int updateFitems(Fitems fitems);

	// 删除数据 调用entity包fitems.xml里的deleteFitems配置 返回值0(失败),1(成功)
	public int deleteFitems(String fitemsid);

	// 查询全部数据 调用entity包fitems.xml里的getAllFitems配置 返回List类型的数据
	public List<Fitems> getAllFitems();

	// 按照Fitems类里面的值精确查询 调用entity包fitems.xml里的getFitemsByCond配置 返回List类型的数据
	public List<Fitems> getFitemsByCond(Fitems fitems);

	// 按照Fitems类里面的值模糊查询 调用entity包fitems.xml里的getFitemsByLike配置 返回List类型的数据
	public List<Fitems> getFitemsByLike(Fitems fitems);

	// 按主键查询表返回单一的Fitems实例 调用entity包fitems.xml里的getFitemsById配置
	public Fitems getFitemsById(String fitemsid);

}
