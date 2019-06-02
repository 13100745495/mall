package com.service;

import java.sql.SQLException;

import com.dao.ManagerDao;
import com.dao.ManagerDaoImpl;
import com.entity.Manager;

public class ManagerServiceImpl implements ManagerService{
	private ManagerDao md;
	public ManagerServiceImpl() {
		md = new ManagerDaoImpl();
	}
	@Override
	public int login(String username, String password) {
		int n = 0;
		Manager m = null;
		try {
			m = md.selectManager(username);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(m == null){
			 n = 1;
		}else{
			if(m.getPassword().equals(password)){
				n = 3;
			}else{
				n = 2;
			}
		}
		return n;
	}

}
