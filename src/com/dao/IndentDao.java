package com.dao;

import java.sql.SQLException;
import java.util.List;

import com.entity.Indent;

public interface IndentDao {
	public boolean insertindent(Indent i) throws SQLException;
	public List<Indent> selectAllIndent() throws SQLException;
}
