package com.dao;

import java.sql.SQLException;
import java.util.List;

import com.entity.User;

public interface UserDao {
	public User selectUser(int uid) throws SQLException;
	public User selectUser(String username) throws SQLException;
	public boolean selectUser1(String username) throws SQLException;
	public boolean insertUser(User u) throws SQLException;
	public boolean deleteUserById(int uid) throws SQLException;
	public boolean updateUser(User u) throws SQLException;
	public List<User> selectAllUser() throws SQLException;
}
