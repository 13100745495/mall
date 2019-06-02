package com.service;

import java.util.List;

import com.entity.User;

public interface UserService {
	public int login(String username,String  password);
	public boolean insertUser(User u);
	public boolean deleteUserById(int uid);
	public boolean updateUser(User u);
	public User selectUser(int uid);
	public User selectUser(String username);
	public List<User> selectAllUser();
}
