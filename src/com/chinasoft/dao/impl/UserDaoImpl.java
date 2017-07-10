package com.chinasoft.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.chinasoft.dao.UserDao;
import com.chinasoft.domain.User;

@Repository("userDao")
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

	// 用户登录，根据用户名和密码查找一个user存在session中
	public User getByLoginAndPwd(String userLogin, String userPwd) {

		StringBuffer sb = new StringBuffer();
		sb.append("from User u ");
		sb.append(" where u.userLogin=? ");
		sb.append(" and u.userPwd=? ");

		Query query = this.getCurrentSession().createQuery(sb.toString());
		query.setParameter(0, userLogin);
		query.setParameter(1, userPwd);
		return (User) query.uniqueResult();
	}

	// 保存用户时，根据用户名查找用户
	public User getByLogin(String userLogin) {
		StringBuffer sb = new StringBuffer();
		sb.append("from User u ");
		sb.append(" where u.userLogin=? ");

		Query query = this.getCurrentSession().createQuery(sb.toString());
		query.setParameter(0, userLogin);
		return (User) query.uniqueResult();
	}

	// 多条件查询
	public List<User> findUserByLoginOrName(String userLogin, String userName) {
		StringBuffer sb = new StringBuffer();
		sb.append("from User u where 1=1 ");
		
		if(userLogin!=null && !userLogin.trim().equals("")){
			sb.append(" and u.userLogin='"+userLogin+"' ");
		}
		if(userName!=null && !userName.trim().equals("")){
			sb.append(" and u.userName='"+userName+"' ");
		}
		Query query = this.getCurrentSession().createQuery(sb.toString());
		return query.list();
	}
	
	/*
	 * @Autowired
	 * 
	 * @Qualifier("sessionFactory") private SessionFactory sessionFactory;
	 * 
	 * public void addUser(User user) {
	 * 
	 * Session session = sessionFactory.getCurrentSession(); session.save(user);
	 * }
	 */

	
}
