package com.power.br.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.power.br.dao.UserDao;
import com.power.br.pojo.User;
import com.power.br.service.UserService;

@Service("UserService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public List<User> getUserList() {
		// TODO Auto-generated method stub
		return userDao.getAllUser();
	}

	
}
