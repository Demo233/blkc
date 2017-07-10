package com.chinasoft.dao;

import java.util.List;

import com.chinasoft.domain.User;

public interface UserDao extends BaseDao<User>{

	// 用户登录，根据用户名和密码查找一个user存在session中
	User getByLoginAndPwd(String userLogin, String userPwd);

	// 根据登录名查找用户
	User getByLogin(String userLogin);

	// 条件查询(用户登录名和用户名)
	List<User> findUserByLoginOrName(String userLogin, String userName);

	// 测试事务
	// public void addUser(User user);
	
}
