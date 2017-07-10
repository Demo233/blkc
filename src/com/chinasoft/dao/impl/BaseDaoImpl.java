package com.chinasoft.dao.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.chinasoft.dao.BaseDao;

public class BaseDaoImpl<T> implements BaseDao<T> {

	private Class clazz;

	public BaseDaoImpl() {
		ParameterizedType pt = (ParameterizedType) this.getClass()
				.getGenericSuperclass();
		this.clazz = (Class) pt.getActualTypeArguments()[0];
	}

	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public void add(T t) {
		Session session = this.getCurrentSession();
		session.save(t);
	}

	public void delete(Serializable id) {
		T t = this.findById(id);
		if (t != null) {
			this.getCurrentSession().delete(t);
		}
	}

	public void update(T t) {
		this.getCurrentSession().update(t);
	}

	public T findById(Serializable id) {
		return (T) this.getCurrentSession().get(this.clazz, id);
	}

	public List<T> findAll() {

		Query query = this.getCurrentSession().createQuery(
				"from " + this.clazz.getSimpleName());
		return query.list();
	}

}
