package com.power.br.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.power.br.dao.ProductDao;
import com.power.br.pojo.ProductPOJO;
import com.power.br.service.ProductService;

@Service("ProductService")
public class ProducServiceImp implements ProductService {

	@Autowired
	private ProductDao productDao;
	public void saveProduct(ProductPOJO pojo) {
		productDao.saveProduct(pojo);

	}

}
