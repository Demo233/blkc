package com.chinasoft.dao;

import java.util.List;

import com.chinasoft.domain.Bl;

public interface BlDao extends BaseDao<Bl>{

	// 通过名称、厚度、质量、宽度、长度来确定一个唯一的玻璃编号返回出去
	String getNumByConditions(String mc, String hd, String zl, String kd,
			String cd);
	// 条件查询(名称、厚度、质量、长度、宽度)
	List<Bl> sreach(String mc, String hd, String zl, String cd, String kd);

	// 查所有的质量
	List<Bl> findAllZl();
}
