package com.service;

import java.sql.SQLException;
import java.util.List;

import com.dao.WatchDao;
import com.dao.WatchDaoImpl;
import com.entity.Watch;
import com.util.ConnDB;

public class WatchServiceImpl implements WatchService{
	private WatchDao wd;
	public WatchServiceImpl() {
		wd = new WatchDaoImpl();
	}
	@Override
	public boolean insertWatch(Watch w) {
		boolean flag = false;
		ConnDB.startTransaction();
		try {			
			flag = wd.insertWatch(w);
		} catch (Exception e) {
			ConnDB.rollback();
			e.printStackTrace();
		}finally {
			ConnDB.commit();
		}
		return flag;
	}
	
	@Override
	public List<Watch> selectAllWatch() {
		List<Watch> list = null;
		ConnDB.startTransaction();
		try {
			list = wd.selectAllWatch();
		} catch (SQLException e) {
			e.printStackTrace();
			ConnDB.rollback();
		}finally {
			ConnDB.commit();
		}
		return list;
	}
	@Override
	public boolean deleteWatchById(int wid) {
		boolean flag = false;
		ConnDB.startTransaction();
		try {
			flag = wd.deleteUserById(wid);
		} catch (SQLException e) {
			e.printStackTrace();
			ConnDB.rollback();
		}finally {
			ConnDB.commit();
		}
		return flag;
	}
	@Override
	public Watch selectWatch(int wid) {
		Watch w = new Watch();
		ConnDB.startTransaction();
		try {
			w = wd.selectWatch(wid);
		} catch (SQLException e) {
			e.printStackTrace();
			ConnDB.rollback();
		}finally {
			ConnDB.commit();
		}
		return w;
	}
	@Override
	public boolean updateWatch(Watch w) {
		boolean flag = false;
		ConnDB.startTransaction();
		try {
			flag = wd.insertWatch(w);
		} catch (SQLException e) {
			e.printStackTrace();
			ConnDB.rollback();
		}finally {
			ConnDB.commit();
		}
		return flag;
	}

}
