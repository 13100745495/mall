package com.dao;

import java.sql.*;

import com.entity.Manager;
import com.util.ConnDB;

public class ManagerDaoImpl implements ManagerDao{
	private Connection conn;
	private PreparedStatement psta;
	private ResultSet rs;

	@Override
	public Manager selectManager(String username) throws SQLException {
		Manager mag = new Manager();
		conn = ConnDB.getConn();
		psta = conn.prepareStatement("select * from manager where username = ?");
		psta.setString(1, username);
		rs = psta.executeQuery();
		if(rs.next()){
			mag.setMid(rs.getInt("mid"));
			mag.setUsername(rs.getString("username"));
			mag.setPassword(rs.getString("password"));
		}else{
			mag = null;
		}
		return mag;
	}

}
