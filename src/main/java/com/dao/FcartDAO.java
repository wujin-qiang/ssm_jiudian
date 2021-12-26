package com.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.entity.Fcart;

@Repository("fcartDAO") // Repository标签定义数据库连接的访问 Spring中直接
public interface FcartDAO {

	/**
	 * FcartDAO 接口 可以按名称直接调用fcart.xml配置文件的SQL语句
	 */

	// 插入数据 调用entity包fcart.xml里的insertFcart配置 返回值0(失败),1(成功)
	public int insertFcart(Fcart fcart);

	// 更新数据 调用entity包fcart.xml里的updateFcart配置 返回值0(失败),1(成功)
	public int updateFcart(Fcart fcart);

	// 删除数据 调用entity包fcart.xml里的deleteFcart配置 返回值0(失败),1(成功)
	public int deleteFcart(String fcartid);

	// 查询全部数据 调用entity包fcart.xml里的getAllFcart配置 返回List类型的数据
	public List<Fcart> getAllFcart();

	// 按照Fcart类里面的值精确查询 调用entity包fcart.xml里的getFcartByCond配置 返回List类型的数据
	public List<Fcart> getFcartByCond(Fcart fcart);

	// 按照Fcart类里面的值模糊查询 调用entity包fcart.xml里的getFcartByLike配置 返回List类型的数据
	public List<Fcart> getFcartByLike(Fcart fcart);

	// 按主键查询表返回单一的Fcart实例 调用entity包fcart.xml里的getFcartById配置
	public Fcart getFcartById(String fcartid);

}
