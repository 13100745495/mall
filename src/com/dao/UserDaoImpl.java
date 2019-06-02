package com.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.entity.User;
import com.util.ConnDB;

public class UserDaoImpl implements UserDao{
	private Connection conn;
	private PreparedStatement psta;
	private ResultSet rs;
	@Override
	public User selectUser(int uid) throws SQLException {
		User user = new User();
		conn = ConnDB.getConn();
		psta = conn.prepareStatement("select * from user where uid = ?");
		psta.setInt(1, uid);
		rs = psta.executeQuery();
		if(rs.next()){
			user.setUid(rs.getInt("uid"));
			user.setUsername(rs.getString("username"));
			user.setPassword(rs.getString("password"));
			user.setEmail(rs.getString("email"));
			user.setPhone(rs.getString("phone"));
		}else{
			user = null;
		}
		return user;
	}
	@Override
	public User selectUser(String username) throws SQLException {
		User user = new User();
		conn = ConnDB.getConn();
		psta = conn.prepareStatement("select * from user where username = ?");
		psta.setString(1, username);
		rs = psta.executeQuery();
		if(rs.next()){
			user.setUid(rs.getInt("uid"));
			user.setUsername(rs.getString("username"));
			user.setPassword(rs.getString("password"));
			user.setEmail(rs.getString("email"));
			user.setPhone(rs.getString("phone"));
		}else{
			user = null;
		}
		return user;
	}
	@Override
	public boolean selectUser1(String username) throws SQLException {
		boolean flag = false;
		conn = ConnDB.getConn();
		psta = conn.prepareStatement("select * from user where username = ?");
		psta.setString(1, username);
		rs = psta.executeQuery();
		if(rs.next()){
			flag = true;
		}
		return flag;
	}
	@Override
	public boolean insertUser(User u) throws SQLException {
		boolean flag = false;
		conn = ConnDB.getConn();
		String sql = "insert into user(username,password,email,phone) values(?,?,?,?)";
		if (!u.equals(null)) {
			psta = conn.prepareStatement(sql);
			psta.setString(1, u.getUsername());
			psta.setString(2, u.getPassword());
			psta.setString(3, u.getEmail());
			psta.setString(4, u.getPhone());
			psta.executeUpdate();
			flag = true;
		}
		return flag;
	}
	@Override
	public boolean deleteUserById(int uid) throws SQLException {
		boolean flag = false;
		conn = ConnDB.getConn();
		String sql = "delete from user where uid = ?";
		psta = conn.prepareStatement(sql);
		psta.setInt(1, uid);
		int s = psta.executeUpdate();
		if (s > 0) {
			flag = true;
		}
		return flag;
	}
	@Override
	public boolean updateUser(User u) throws SQLException {
		boolean flag = false;
		conn = ConnDB.getConn();
		String sql = "update user set username = ?,password = ?,email = ?,phone = ? where uid = ?";
		if(!u.equals(null)) {
			psta = conn.prepareStatement(sql);
			psta.setString(1, u.getUsername());
			psta.setString(2, u.getPassword());
			psta.setString(3, u.getEmail());
			psta.setString(4, u.getPhone());
			psta.setInt(5, u.getUid());
			psta.executeUpdate();
			flag = true;
		}
		return flag;
	}
	@Override
	public List<User> selectAllUser() throws SQLException {
		ArrayList<User> list = new ArrayList<User>();
		conn = ConnDB.getConn();
		String sql = "select * from user";
		psta = conn.prepareStatement(sql);
		rs = psta.executeQuery();
		while(rs.next()){
			User u = new User();
			u.setUid(rs.getInt("uid"));
			u.setUsername(rs.getString("username"));
			u.setPassword(rs.getString("password"));
			u.setEmail(rs.getString("email"));
			u.setPhone(rs.getString("phone"));
			u.setDate(rs.getString("date"));
			list.add(u);
		}
		return list;
	}
}
