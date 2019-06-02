package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.Indent;
import com.util.ConnDB;

public class IndentDaoImpl implements IndentDao{
	private Connection conn;
	private PreparedStatement psta;
	private ResultSet rs;
	@Override
	public boolean insertindent(Indent i) throws SQLException {
		boolean flag = false;
		conn = ConnDB.getConn();
		String sql = "insert into indent(wid,name,username,phone,address) values(?,?,?,?,?)";
		if (!i.equals(null)) {
			psta = conn.prepareStatement(sql);
			psta.setInt(1, i.getWid());
			psta.setString(2, i.getName());
			psta.setString(3, i.getUsername());
			psta.setString(4, i.getPhone());
			psta.setString(5, i.getAddress());
			psta.executeUpdate();
			flag = true;
		}
		return flag;
	}
	@Override
	public List<Indent> selectAllIndent() throws SQLException {
		ArrayList<Indent> list = new ArrayList<Indent>();
		conn = ConnDB.getConn();
		String sql = "select * from indent";
		psta = conn.prepareStatement(sql);
		rs = psta.executeQuery();
		while(rs.next()){
			Indent i = new Indent();
			i.setiid(rs.getInt("iid"));
			i.setWid(rs.getInt("wid"));
			i.setName(rs.getString("name"));
			i.setUsername(rs.getString("username"));
			i.setPhone(rs.getString("phone"));
			i.setAddress(rs.getString("address"));
			i.setDate(rs.getString("date"));
			list.add(i);
		}
		return list;
	}

}
