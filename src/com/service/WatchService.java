package com.service;

import java.util.List;

import com.entity.Watch;

public interface WatchService {
	public boolean insertWatch(Watch w);
	public boolean deleteWatchById(int wid);
	public Watch selectWatch(int wid);
	public boolean updateWatch(Watch u);
	public List<Watch> selectAllWatch();
}
