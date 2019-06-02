package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.Watch;
import com.util.ConnDB;

public class WatchDaoImpl implements WatchDao{
	private Connection conn;
	private PreparedStatement psta;
	private ResultSet rs;

	@Override
	public boolean insertWatch(Watch w) throws SQLException {
		boolean flag = false;
		conn = ConnDB.getConn();
		String sql = "insert into watch(name,price,money,photo) values(?,?,?,?)";
		if (!w.equals(null)) {
			psta = conn.prepareStatement(sql);
			psta.setString(1, w.getName());
			psta.setInt(2, w.getPrice());
			psta.setInt(3, w.getMoney());
			psta.setString(4, w.getPhoto());
			psta.executeUpdate();
			flag = true;
		}
		return flag;
	}
	
	@Override
	public List<Watch> selectAllWatch() throws SQLException {
		ArrayList<Watch> list = new ArrayList<Watch>();
		conn = ConnDB.getConn();
		String sql = "select * from watch";
		psta = conn.prepareStatement(sql);
		rs = psta.executeQuery();
		while(rs.next()){
			Watch w = new Watch();
			w.setWid(rs.getInt("wid"));
			w.setName(rs.getString("name"));
			w.setPrice(rs.getInt("price"));
			w.setMoney(rs.getInt("money"));
			w.setPhoto(rs.getString("photo"));
			w.setDate(rs.getString("date"));
			list.add(w);
		}
		return list;
	}

	@Override
	public boolean deleteUserById(int wid) throws SQLException {
		boolean flag = false;
		conn = ConnDB.getConn();
		String sql = "delete from watch where wid = ?";
		psta = conn.prepareStatement(sql);
		psta.setInt(1, wid);
		int s = psta.executeUpdate();
		if (s > 0) {
			flag = true;
		}
		return flag;
	}

	@Override
	public Watch selectWatch(int wid) throws SQLException {
		Watch watch = new Watch();
		conn = ConnDB.getConn();
		psta = conn.prepareStatement("select * from watch where wid = ?");
		psta.setInt(1, wid);
		rs = psta.executeQuery();
		if(rs.next()){
			watch.setWid(rs.getInt("wid"));
			watch.setName(rs.getString("name"));
			watch.setPrice(rs.getInt("price"));
			watch.setMoney(rs.getInt("money"));
			watch.setPhoto(rs.getString("photo"));
		}else{
			watch = null;
		}
		return watch;
	}

	@Override
	public boolean updateWatch(Watch w) throws SQLException {
		boolean flag = false;
		conn = ConnDB.getConn();
		String sql = "update watch set name = ?,price = ?,money = ?,photo = ? where wid = ?";
		if(!w.equals(null)) {
			psta = conn.prepareStatement(sql);
			psta.setString(1, w.getName());
			psta.setInt(2, w.getPrice());
			psta.setInt(3, w.getMoney());
			psta.setString(4, w.getPhoto());
			psta.setInt(5, w.getWid());
			psta.executeUpdate();
			flag = true;
		}
		return flag;
	}
}
