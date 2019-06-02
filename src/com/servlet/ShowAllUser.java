package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.User;
import com.service.UserService;
import com.service.UserServiceImpl;
import com.util.ConnDB;

@SuppressWarnings("serial")
@WebServlet("/ShowAllUser")
public class ShowAllUser extends HttpServlet {
	UserService us = new UserServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		List<User> listuser = us.selectAllUser();
		String page = request.getParameter("pageNow");
		int pageSize = 7;
  		int lineCount;
  		int pageCount;
  		int pageNow = 1;
  		if(page != null){
  			pageNow = Integer.parseInt(page);
  		}
  		Connection conn = ConnDB.getConn();
    	PreparedStatement psta;
		try {
			psta = conn.prepareStatement("select count(*) from user");
	    	ResultSet rs = psta.executeQuery();
	    	rs.next();
	    	lineCount = rs.getInt(1);
	    	pageCount = lineCount % pageSize == 0 ? lineCount / pageSize : lineCount / pageSize + 1;
	    	List<User> list = new ArrayList<User>();
	    	List<Integer> pagenumber = new ArrayList<Integer>();
	    	for(int i = pageSize*(pageNow-1);i < pageSize*pageNow;i++) {
	    		if(i < lineCount){
	    			list.add(listuser.get(i));
	    		}
	    	}
	    	for(int i = 1;i <= pageCount;i++) {
	    		pagenumber.add(i);
	    	}
	    	request.getSession().setAttribute("pagenumber", pagenumber);
	    	request.getSession().setAttribute("list", list);
		}catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("manager/user.jsp");
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
