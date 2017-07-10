package com.chinasoft.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.management.RuntimeErrorException;
import javax.resource.spi.CommException;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chinasoft.dao.BlDao;
import com.chinasoft.domain.Bl;
import com.chinasoft.service.BlService;

@Service("blService")
@Transactional
public class BlServiceImpl implements BlService{

	@Resource(name="blDao")
	private BlDao blDao;
	
	public List<Bl> findAllBl() throws Exception {
		return this.blDao.findAll();
	}

	// 添加一个玻璃款型
	public void save(String num, String mc, String hd, String zl, String kd,
			String cd, Integer sl) throws Exception {
		
		// 添加之前先查找数据库中是否存在该信息（根据名称、厚度、质量、宽度、长度来查找）
		String str = this.blDao.getNumByConditions(mc,hd,zl,kd,cd);
		// 如果num不为空，则表示该记录已存在，抛出异常
		if(!str.trim().equals("")){
			throw new RuntimeException("该玻璃信息已存在，请重试");
		}
		
		// 如果num不为空，就保存该记录,编号、名称、宽度、厚度已经在web层做过校验在这里只用校验厚度和质量
		Bl bl = new Bl();
		if(hd != null && !hd.trim().equals("")){
			bl.setHd(hd);
		}
		if(zl != null && !zl.trim().equals("")){
			bl.setZl(zl);
		}
		bl.setNum(num);
		bl.setMc(mc);
		bl.setCd(cd);
		bl.setKd(kd);
		bl.setSl(0);
		this.blDao.add(bl);
	}

	// 条件查询(名称、厚度、质量、长度、宽度)
	public List<Bl> sreach(String mc, String hd, String zl, String cd, String kd)
			throws Exception {
		
		return this.blDao.sreach(mc, hd, zl, cd, kd);
	}

	// 根据id删除玻璃
	public void deleteBlById(Integer id) throws Exception {
		this.blDao.delete(id);
	}

	// 根据id入库，添加数量
	public void rkById(Integer id,Integer sl) throws Exception {
		
		// 先根据id查询一个玻璃信息
		Bl bl = this.blDao.findById(id);
		if(bl != null ){
			// 修改数量，保存信息
			bl.setSl(bl.getSl() + sl);
			this.blDao.update(bl);
		}else{
			throw new RuntimeException("入库异常，请重试");
		}
		
	}

	// 根据id出库
	public void ckById(Integer id, Integer sl) throws Exception {
		Bl bl = this.blDao.findById(id);
		if(bl != null){
			Integer c = bl.getSl() - sl;
			if(c >= 0 ){
				bl.setSl(c);
				this.blDao.update(bl);
			}else{
				throw new RuntimeException("库存不足");
			}
		}
	}

	// 根据id查找玻璃
	public Bl getById(Integer id) throws Exception {
		
		return this.blDao.findById(id);
	}

	public List<Bl> findAllZl() throws Exception {
		return this.blDao.findAllZl();
	}

	public void update(Integer id, String num, String mc, String hd, String zl,
			String kd, String cd, Integer sl) throws Exception {
		// 根据id查找
		if(id != null && id >= 0){
			Bl bl = this.blDao.findById(id);
			if(bl != null){
				
				// 更新玻璃
				bl.setNum(num);
				bl.setMc(mc);
				bl.setCd(cd);
				bl.setKd(kd);
				bl.setZl(zl);
				bl.setHd(hd);
				this.blDao.update(bl);
				
			}else{
				throw new RuntimeException("操作异常，请重试");
			}
		}else{
			throw new RuntimeException("操作异常，请重试");
		}
	}


}
