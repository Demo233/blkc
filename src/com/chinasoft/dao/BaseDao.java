package com.chinasoft.dao;

import java.io.Serializable;
import java.util.List;

public interface BaseDao<T> {

	// 添加
	void add(T t);
	
	// 删除
	void delete(Serializable id);
	
	// 修改
	void update(T t);
	
	// 根据id查找
	T findById(Serializable id);
	
	// 查找所有
	List<T> findAll();
	
}
