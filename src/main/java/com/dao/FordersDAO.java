package com.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.entity.Forders;

@Repository("fordersDAO") // Repository标签定义数据库连接的访问 Spring中直接
public interface FordersDAO {

	/**
	 * FordersDAO 接口 可以按名称直接调用forders.xml配置文件的SQL语句
	 */

	// 插入数据 调用entity包forders.xml里的insertForders配置 返回值0(失败),1(成功)
	public int insertForders(Forders forders);

	// 更新数据 调用entity包forders.xml里的updateForders配置 返回值0(失败),1(成功)
	public int updateForders(Forders forders);

	// 删除数据 调用entity包forders.xml里的deleteForders配置 返回值0(失败),1(成功)
	public int deleteForders(String fordersid);

	// 查询全部数据 调用entity包forders.xml里的getAllForders配置 返回List类型的数据
	public List<Forders> getAllForders();

	// 按照Forders类里面的值精确查询 调用entity包forders.xml里的getFordersByCond配置 返回List类型的数据
	public List<Forders> getFordersByCond(Forders forders);

	// 按照Forders类里面的值模糊查询 调用entity包forders.xml里的getFordersByLike配置 返回List类型的数据
	public List<Forders> getFordersByLike(Forders forders);

	// 按主键查询表返回单一的Forders实例 调用entity包forders.xml里的getFordersById配置
	public Forders getFordersById(String fordersid);

}
