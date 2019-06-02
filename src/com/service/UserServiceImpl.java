package com.service;

import java.sql.SQLException;
import java.util.List;

import com.dao.UserDao;
import com.dao.UserDaoImpl;
import com.entity.User;
import com.util.ConnDB;

public class UserServiceImpl implements UserService{
	private UserDao ud;
	public UserServiceImpl() {
		ud = new UserDaoImpl();
	}

	@Override
	public int login(String username, String password){
		int n = 0;
		User u = null;
		try {
			u = ud.selectUser(username);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(u == null){
			 n = 1;
		}else{
			if(u.getPassword().equals(password)){
				n = 3;
			}else{
				n = 2;
			}
		}
		return n;
	}

	@Override
	public boolean insertUser(User u) {
		boolean flag = false;
		ConnDB.startTransaction();
		try {			
			flag = ud.insertUser(u);
		} catch (Exception e) {
			ConnDB.rollback();
			e.printStackTrace();
		}finally {
			ConnDB.commit();
		}
		return flag;
	}

	@Override
	public boolean deleteUserById(int uid) {
		boolean flag = false;
		ConnDB.startTransaction();
		try {
			flag = ud.deleteUserById(uid);
		} catch (SQLException e) {
			e.printStackTrace();
			ConnDB.rollback();
		}finally {
			ConnDB.commit();
		}
		return flag;
	}

	@Override
	public boolean updateUser(User u) {
		boolean flag = false;
		ConnDB.startTransaction();
		try {
			flag = ud.updateUser(u);
		} catch (SQLException e) {
			e.printStackTrace();
			ConnDB.rollback();
		}finally {
			ConnDB.commit();
		}
		return flag;
	}
	
	@Override
	public User selectUser(int uid) {
		User u = new User();
		ConnDB.startTransaction();
		try {
			u = ud.selectUser(uid);
		} catch (SQLException e) {
			e.printStackTrace();
			ConnDB.rollback();
		}finally {
			ConnDB.commit();
		}
		return u;
	}

	@Override
	public List<User> selectAllUser() {
		List<User> list = null;
		ConnDB.startTransaction();
		try {
			list = ud.selectAllUser();
		} catch (SQLException e) {
			e.printStackTrace();
			ConnDB.rollback();
		}finally {
			ConnDB.commit();
		}
		return list;
	}

	@Override
	public User selectUser(String username) {
		User u = new User();
		ConnDB.startTransaction();
		try {
			u = ud.selectUser(username);
		} catch (SQLException e) {
			e.printStackTrace();
			ConnDB.rollback();
		}finally {
			ConnDB.commit();
		}
		return u;
	}

}
