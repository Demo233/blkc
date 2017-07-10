package com.chinasoft.service;

import java.util.List;

import com.chinasoft.domain.Bl;

public interface BlService {

	// 查找所有玻璃
	List<Bl> findAllBl() throws Exception;
	
	// 根据id查找玻璃
	Bl getById(Integer id) throws Exception;

	// 保存玻璃
	void save(String num, String mc, String hd, String zl, String kd,
			String cd, Integer sl) throws Exception;

	// 条件查询(名称、厚度、质量、长度、宽度)
	List<Bl> sreach(String mc, String hd, String zl, String cd, String kd) throws Exception;

	// 根据id删除玻璃
	void deleteBlById(Integer id) throws Exception;

	// 根据id入库
	void rkById(Integer id,Integer sl) throws Exception;

	// 根据id出库
	void ckById(Integer id, Integer sl) throws Exception;

	// 查找所有质量
	List<Bl> findAllZl() throws Exception;

	// 更新
	void update(Integer id, String num, String mc, String hd, String zl,
			String kd, String cd,Integer sl) throws Exception;
}
