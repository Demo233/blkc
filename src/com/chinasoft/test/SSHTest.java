package com.chinasoft.test;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.chinasoft.action.UserAction;
import com.chinasoft.domain.Bl;
import com.chinasoft.domain.User;
import com.chinasoft.service.BlService;
import com.chinasoft.service.UserService;
import com.chinasoft.utils.GenerateNumUtils;

public class SSHTest {
	
	@Test
	public void hibernateInit(){

		Configuration configuration = new Configuration().configure();
		SessionFactory sf = configuration.buildSessionFactory();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		
		User user = new User();
		user.setUserLogin("zhangsan");
		user.setUserName("张三");
		user.setUserPwd("123");
		user.setNote("我是张三");
		session.save(user);
		tx.commit();
		
		session.close();
		sf.close();
		
	}
	
	@Test
	public void springWebInit(){
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		UserAction userAction = ac.getBean("userAction",UserAction.class);
		System.out.println(userAction);
		
	}
	
	@Test
	public void springHibernateInit(){
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		SessionFactory sessionFactory = (SessionFactory) ac.getBean("sessionFactory");
		System.out.println(sessionFactory);
		
	}
	
	@Test
	public void transactionTest(){

		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		UserService userService =  (UserService) ac.getBean("userService");
		System.out.println(userService);
		User user1 = new User();
		User user2 = new User();
		user1.setUserLogin("lisi");
		user1.setUserName("李四");
		user1.setUserPwd("123");
		user1.setNote("这是李四");
		user2.setUserLogin("wangwu");
		user2.setUserName("王五");
		user2.setUserPwd("123");
		user2.setNote("这是王五");
		//userService.addTwoUser(user1, user2);
	
	}
	
	@Test
	public void addTest(){
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		UserService userService =  (UserService) ac.getBean("userService");
		User user = new User();
		user.setUserLogin("zhangsan");
		user.setUserName("张三");
		user.setUserPwd("123");
		user.setNote("我是张三");
		userService.add(user);
		
	}
	
	@Test
	public void loginTest(){
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		UserService userService =  (UserService) ac.getBean("userService");
		User user = userService.getByLoginAndPwd("zhangsan", "123");
		System.out.println(user);
	}
	
	@Test
	public void generateNumTest(){
		System.out.println(GenerateNumUtils.createBlNum());
	}
	
	@Test
	public void demo1() throws Exception{
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		BlService blService = ac.getBean("blService",BlService.class);
		String num = "BL566654";
		String mc = "冰花车刻";
		String hd = "";
		String zl = "";
		String cd = "2000";
		String kd = "1700";
		Integer sl = 0;
		blService.save(num, mc, hd, zl, kd, cd, sl);
	}
	
	@Test
	public void demo2() throws Exception{
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		BlService blService = ac.getBean("blService",BlService.class);
		List<Bl> lists = blService.findAllZl();
		System.out.println(lists);
		
	}
	
	@Test
	public void demo3(){
		
		String s = GenerateNumUtils.createBlNum();
		System.out.println(s);
		
	}
	
}
