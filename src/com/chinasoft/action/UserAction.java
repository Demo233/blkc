package com.chinasoft.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chinasoft.domain.User;
import com.chinasoft.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller("userAction")
@Scope("prototype")
public class UserAction extends ActionSupport {

	private String userLogin;
	private String userName;
	private String userPwd;
	private String note;
	private Integer id;

	// 修改密码
	private String oddPwd;
	private String newPwd1;
	private String newPwd2;
	
	
	@Resource(name="userService")
	private UserService userService;
	
	public String login() throws Exception{

		if(userLogin!=null && !userLogin.trim().equals("")){
			User user =userService.getByLoginAndPwd(userLogin,userPwd);
			if(user!=null){
				ActionContext.getContext().getSession().put("user", user);
				return "login";
			}else{
				this.addActionError("账号或密码错误");
				return "notFoundUser";
			}
		}else{
			this.addActionError("用户名不能为空");
			return "userLoginIsNull";
		}
	}
	
	// 查找所有user
	public String findAllUser() throws Exception{
		
		List<User> users = userService.findAllUser();
		ActionContext.getContext().put("users", users);
		return "findAll";
	}
	
	// 保存用户
	public String save() throws Exception{
		// 校验用户名和密码不能为空
		if(userLogin==null || userLogin.trim().equals("")){
			this.addActionError("用户名不能为空");
			return "saveView";
		}
		if(userPwd==null || userPwd.trim().equals("")){
			this.addActionError("用户密码不能为空");
			return "saveView";
		}
		int flag = userService.saveUser(userLogin,userName,userPwd,note);
		if (flag == -1) {
			this.addActionError("用户名已存在!!");
			return "saveView";
		} else {
			return "save";
		}
	}
	
	// 根据id删除用户
	public String delete() throws Exception {

		if(id!=null){
			userService.deleteUserById(id);
		}else{
			this.addActionError("请重试！");
			return "error";
		}
		return "deleteSuccess";

	}
	
	// 修改用户的超链接
	public String updateBut() throws Exception{
		if(id != null && id>0){
			User user = this.userService.getUserById(id);
			ActionContext.getContext().put("user", user);
		}else{
			this.addActionError("请重试!");
			return "error";
		}
		return "updateBut";
	}
	
	// 更新用户
	public String update() throws Exception{
		// 校验用户名和密码不能为空
		if(id==null || id<1){
			this.addActionError("修改失败,请重试");
			return "error";
		}
		if(userLogin==null || userLogin.trim().equals("")){
			this.addActionError("修改失败,用户名不能为空");
			return "error";
		}
		/*if(userPwd==null || userPwd.trim().equals("")){
			this.addActionError("修改失败,用户密码不能为空");
			return "error";
		}*/
		userService.updateUser(id,userLogin,userName,userPwd,note);
		return "update";
	}
	
	//条件查询
	public String sreach() throws Exception{
		List<User> users = this.userService.findUserByLoginOrName(userLogin,
				userName);
		ActionContext.getContext().put("users", users);
		return "findAll";
	}
	
	// 退出登录
	public String logout() throws Exception{
		ServletActionContext.getRequest().getSession().removeAttribute("user");
		ServletActionContext.getRequest().getSession().invalidate();
		return "notFoundUser";
	}

	// 更改密码
	public String updatePwd() throws Exception {
		if(oddPwd==null || oddPwd.trim().equals("")){
			this.addActionError("旧密码不能为空,请重试");
			return "pwdError";
		}
		if(newPwd1==null || newPwd1.trim().equals("")){
			this.addActionError("新密码不能为空，请重试");
			return "pwdError";
		}
		if(newPwd2==null || newPwd2.trim().equals("")){
			this.addActionError("确认密码不能为空，请重试");
			return "pwdError";
		}
		
		User sessionUser = (User) ActionContext.getContext().getSession()
				.get("user");
		if (!sessionUser.getUserPwd().equals(oddPwd)) {
			this.addActionError("旧密码错误!!!");
			return "pwdError";
		}
		if (!newPwd1.equals(newPwd2)) {
			this.addActionError("两次密码不一致，请重试");
			return "pwdError";
		}
		this.userService.updateUser(sessionUser, newPwd1);
		return "updatePwdSuccess";
	}
	
	// --------------------------------getter and setter---------------------------
	
	public String getUserLogin() {
		return userLogin;
	}

	public void setUserLogin(String userLogin) {
		this.userLogin = userLogin;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getOddPwd() {
		return oddPwd;
	}

	public void setOddPwd(String oddPwd) {
		this.oddPwd = oddPwd;
	}

	public String getNewPwd1() {
		return newPwd1;
	}

	public void setNewPwd1(String newPwd1) {
		this.newPwd1 = newPwd1;
	}

	public String getNewPwd2() {
		return newPwd2;
	}

	public void setNewPwd2(String newPwd2) {
		this.newPwd2 = newPwd2;
	}
	
	/*
	 * // Test public String execute() throws Exception {
	 * 
	 * 
	 * return SUCCESS; }
	 */

}
