package com.chinasoft.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.chinasoft.dao.BlDao;
import com.chinasoft.domain.Bl;

@Repository("blDao")
public class BlDaoImpl extends BaseDaoImpl<Bl> implements BlDao{

	// 通过名称、厚度、质量、宽度、长度来确定一个唯一的玻璃编号返回出去
	public String getNumByConditions(String mc, String hd, String zl,
			String kd, String cd) {
		
		StringBuffer sb = new StringBuffer();
		sb.append("from Bl ");
		sb.append(" where mc='"+mc+"' ");
		if(hd !=null && !hd.trim().equals("")){
			sb.append(" and hd='"+hd+"' ");
		}
		if(zl != null && !zl.trim().equals("")){
			sb.append(" and zl='"+zl+
					"' ");
		}
		sb.append(" and kd='"+kd+"' ");
		sb.append(" and cd='"+cd+"' ");
		
		Query query = this.getCurrentSession().createQuery(sb.toString());
		Bl bl = (Bl) query.uniqueResult();
		String str;
		if(bl == null){
			str = "";
		}else{
			str = bl.getNum();
		}
		return str;
	}

	// 条件查询(名称、厚度、质量、长度、宽度)
	public List<Bl> sreach(String mc, String hd, String zl, String cd, String kd) {
		
		StringBuffer sb = new StringBuffer();
		sb.append("from Bl where 1=1 ");
		if(mc != null && !mc.trim().equals("")){
			sb.append(" and mc='"+mc+"' ");
		}
		if(hd != null && !hd.trim().equals("")){
			sb.append(" and hd='"+hd+"' ");
		}
		if(zl != null && !zl.trim().equals("")){
			sb.append(" and zl='"+zl+"' ");
		}
		if(cd != null && !cd.trim().equals("")){
			sb.append(" and cd='"+cd+"' ");
		}
		if(kd != null && !kd.trim().equals("")){
			sb.append(" and kd='"+kd+"' ");
		}
		
		Query query = this.getCurrentSession().createQuery(sb.toString());
		return query.list();
	}

	public List<Bl> findAllZl() {
		StringBuffer sb = new StringBuffer();
		sb.append("from Bl b ");
		sb.append(" where b.zl is not null ");
		sb.append(" and b.zl <> '' ");
		sb.append(" group by b.zl ");
		Query query = this.getCurrentSession().createQuery(sb.toString());
		return query.list();
	}

}
