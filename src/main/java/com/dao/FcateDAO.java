package com.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.entity.Fcate;

@Repository("fcateDAO") // Repository标签定义数据库连接的访问 Spring中直接
public interface FcateDAO {

	/**
	 * FcateDAO 接口 可以按名称直接调用fcate.xml配置文件的SQL语句
	 */

	// 插入数据 调用entity包fcate.xml里的insertFcate配置 返回值0(失败),1(成功)
	public int insertFcate(Fcate fcate);

	// 更新数据 调用entity包fcate.xml里的updateFcate配置 返回值0(失败),1(成功)
	public int updateFcate(Fcate fcate);

	// 删除数据 调用entity包fcate.xml里的deleteFcate配置 返回值0(失败),1(成功)
	public int deleteFcate(String fcateid);

	// 查询全部数据 调用entity包fcate.xml里的getAllFcate配置 返回List类型的数据
	public List<Fcate> getAllFcate();

	// 按照Fcate类里面的值精确查询 调用entity包fcate.xml里的getFcateByCond配置 返回List类型的数据
	public List<Fcate> getFcateByCond(Fcate fcate);

	// 按照Fcate类里面的值模糊查询 调用entity包fcate.xml里的getFcateByLike配置 返回List类型的数据
	public List<Fcate> getFcateByLike(Fcate fcate);

	// 按主键查询表返回单一的Fcate实例 调用entity包fcate.xml里的getFcateById配置
	public Fcate getFcateById(String fcateid);

}
