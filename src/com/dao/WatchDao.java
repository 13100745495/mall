package com.dao;

import java.sql.SQLException;
import java.util.List;

import com.entity.Watch;

public interface WatchDao {
	public Watch selectWatch(int wid) throws SQLException;
	public boolean insertWatch(Watch w) throws SQLException;
	public boolean deleteUserById(int uid) throws SQLException;
	public boolean updateWatch(Watch w) throws SQLException;
	public List<Watch> selectAllWatch() throws SQLException;
}
