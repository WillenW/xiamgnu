package com.power.br.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.power.br.pojo.ProductPOJO;

@Service("ProductDao")
public class ProductDaoImp implements ProductDao {
	@Autowired
	private SessionFactory sessionFactory;

	public void saveProduct(ProductPOJO pojo) {
	  Session session = sessionFactory.getCurrentSession();
	  String sql = "insert into br_product(name,memo,img_url)values('"+pojo.getName()+"','"+pojo.getMemo()+"','"+pojo.getImg_url()+"')";
	  Query query = session.createSQLQuery(sql);
	  query.executeUpdate();
	}
	
}
