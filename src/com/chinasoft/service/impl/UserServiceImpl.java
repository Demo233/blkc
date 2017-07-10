package com.chinasoft.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chinasoft.dao.UserDao;
import com.chinasoft.domain.User;
import com.chinasoft.service.UserService;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

	@Resource(name = "userDao")
	private UserDao userDao;

	public void add(User user) {
		userDao.add(user);
	}

	// 用户登录，根据用户名和密码查找一个user存在session中
	public User getByLoginAndPwd(String userLogin, String userPwd) {

		return userDao.getByLoginAndPwd(userLogin,userPwd);
	}

	// 查找所有用户
	public List<User> findAllUser() throws Exception {
		List<User> users = userDao.findAll();
		if(users!=null){
			return users;
		}else{
			throw new RuntimeException("不存在任何信息，请添加用户");
		}
	}

	//保存用户
	public int saveUser(String userLogin, String userName, String userPwd,
			String note) {
		
		User u = this.userDao.getByLogin(userLogin);
		if(u!=null){
			return -1;
		}
		
		User user = new User();
		if(userLogin != null && !userLogin.trim().equals("")){
			user.setUserLogin(userLogin);
		}
		if(userPwd != null && !userPwd.trim().equals("")){
			user.setUserPwd(userPwd);
		}
		if(userName != null && !userName.trim().equals("")){
			user.setUserName(userName);
		}
		if(note != null && !note.trim().equals("")){
			user.setNote(note);
		}
		this.userDao.add(user);
		return 1;
	}

	// 根据id删除用户
	public void deleteUserById(Integer id) throws Exception {
		if(id == null || id < 1){
			throw new RuntimeException("请重试！！！");
		}else{
			this.userDao.delete(id);
		}
	}
	
	// 根绝id查找用户
	public User getUserById(Integer id) throws Exception {
		if(id == null || id < 1){
			throw new RuntimeException("请重试！！！");
		}else{
			User user = this.userDao.findById(id);
			return user;
		}
	}

	// 根据id更新用户
	public void updateUser(Integer id, String userLogin, String userName,
			String userPwd, String note) throws Exception {
		
		//根据id查找用户
		if(id == null || id < 1){
			throw new RuntimeException("请重试！！！");
		}
		
		User user = this.userDao.findById(id);
		if(user!=null){
			
			if(userLogin != null && !userLogin.trim().equals("")){
				user.setUserLogin(userLogin);
			}
			if(userPwd != null && !userPwd.trim().equals("")){
				user.setUserPwd(userPwd);
			}
			if(userName != null && !userName.trim().equals("")){
				user.setUserName(userName);
			}
			if(note != null && !note.trim().equals("")){
				user.setNote(note);
			}
			
			// 更新用户
			this.userDao.update(user);
		}
	}

	// 多条件查询
	public List<User> findUserByLoginOrName(String userLogin, String userName)
			throws Exception {
		
		return this.userDao.findUserByLoginOrName(userLogin, userName);
	}

	// 修改session中用户的密码
	public void updateUser(User sessionUser, String newPwd1) throws Exception {
		if(sessionUser == null){
			throw new RuntimeException("请重新登录!!!");
		}
		sessionUser.setUserPwd(newPwd1);
		this.userDao.update(sessionUser);
	}

	/*
	 * @Autowired
	 * 
	 * @Qualifier("userDao") private UserDao userDao;
	 * 
	 * public void addTwoUser(User user1, User user2) {
	 * 
	 * userDao.addUser(user1); //int i = 10 / 0; userDao.addUser(user2); }
	 */
}
