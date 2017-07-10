package com.chinasoft.service;

import java.util.List;

import com.chinasoft.domain.User;

public interface UserService {

	// 测试事务
	// public void addTwoUser(User user1,User user2);
	
	void add(User user);

	// 用户登录，根据用户名和密码查找一个user存在session中
	User getByLoginAndPwd(String userLogin, String userPwd);

	// 查找所有用户
	List<User> findAllUser() throws Exception;

	// 保存用户
	int saveUser(String userLogin, String userName, String userPwd, String note);

	// 根据id删除用户
	void deleteUserById(Integer id) throws Exception;

	// 根据id查找用户
	User getUserById(Integer id) throws Exception;

	// 根据id更新用户
	void updateUser(Integer id, String userLogin, String userName,
			String userPwd, String note) throws Exception;

	// 多条件查询(用户登录名和用户名)
	List<User> findUserByLoginOrName(String userLogin, String userName) throws Exception;

	// 修改session中用户的密码
	void updateUser(User sessionUser, String newPwd1) throws Exception;

}
