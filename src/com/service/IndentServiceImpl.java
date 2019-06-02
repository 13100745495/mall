package com.service;

import java.sql.SQLException;
import java.util.List;

import com.dao.IndentDao;
import com.dao.IndentDaoImpl;
import com.entity.Indent;
import com.util.ConnDB;

public class IndentServiceImpl implements IndentService{
	private IndentDao id;
	public IndentServiceImpl() {
		id = new IndentDaoImpl();
	}
	
	@Override
	public boolean insertindent(Indent i) {
		boolean flag = false;
		ConnDB.startTransaction();
		try {			
			flag = id.insertindent(i);
		} catch (Exception e) {
			ConnDB.rollback();
			e.printStackTrace();
		}finally {
			ConnDB.commit();
		}
		return flag;
	}

	@Override
	public List<Indent> selectAllIndent() {
		List<Indent> list = null;
		ConnDB.startTransaction();
		try {
			list = id.selectAllIndent();
		} catch (SQLException e) {
			e.printStackTrace();
			ConnDB.rollback();
		}finally {
			ConnDB.commit();
		}
		return list;
	}

}
