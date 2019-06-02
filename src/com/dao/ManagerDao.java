package com.dao;

import java.sql.SQLException;

import com.entity.Manager;

public interface ManagerDao {
	public Manager selectManager(String username) throws SQLException;
}
