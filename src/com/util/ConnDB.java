package com.util;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSourceFactory;

public class ConnDB {
	private static DataSource ds;
	private static ThreadLocal<Connection> local = new ThreadLocal<Connection>();
	
	static{
		InputStream is = ConnDB.class.getClassLoader().getResourceAsStream("dbcpconfig.properties");
		//初始化ds，da就可以提供连接，   使用dbpc连接池将ds初始化
		Properties p = new Properties();//这个工具类能读取properties文件里面的数据
		try {
			p.load(is);
			ds = BasicDataSourceFactory.createDataSource(p);	
		} catch ( Exception e) {
			e.printStackTrace();
		}		
	}
	
	public static Connection getConn(){
		Connection conn = local.get();
		if(conn == null){
			local.set(getConn1());
			
		}
		return local.get();
	}

	public static Connection getConn1(){
		Connection conn = null;
		try {
			conn = ds.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public static  void  startTransaction(){
		Connection conn = getConn();
		try {
			conn.setAutoCommit(false);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void rollback(){
		Connection conn = local.get();
		try {
			conn.rollback();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void commit(){
		Connection conn = local.get();
		try {
			conn.commit();
			conn.close();
			local.remove();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
