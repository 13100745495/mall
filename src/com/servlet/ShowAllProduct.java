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
import com.entity.Watch;
import com.service.WatchService;
import com.service.WatchServiceImpl;
import com.util.ConnDB;

@SuppressWarnings("serial")
@WebServlet("/ShowAllProduct")
public class ShowAllProduct extends HttpServlet {
	WatchService ws = new WatchServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String sap = request.getParameter("sap");
		List<Watch> listwatch = ws.selectAllWatch();
		request.getSession().setAttribute("listwatch", listwatch);
		String page = request.getParameter("pageNow");
		int pageSize = 3;
  		int lineCount;
  		int pageCount;
  		int pageNow = 1;
  		if(page != null){
  			pageNow = Integer.parseInt(page);
  		}
  		Connection conn = ConnDB.getConn();
    	PreparedStatement psta;
		try {
			psta = conn.prepareStatement("select count(*) from watch");
	    	ResultSet rs = psta.executeQuery();
	    	rs.next();
	    	lineCount = rs.getInt(1);
	    	pageCount = lineCount % pageSize == 0 ? lineCount / pageSize : lineCount / pageSize + 1;
	    	List<Watch> watch = new ArrayList<Watch>();
	    	List<Integer> pagenumber = new ArrayList<Integer>();
	    	for(int i = pageSize*(pageNow-1);i < pageSize*pageNow;i++) {
	    		if(i < lineCount){
	    			watch.add(listwatch.get(i));
	    		}
	    	}
	    	for(int i = 1;i <= pageCount;i++) {
	    		pagenumber.add(i);
	    	}
	    	request.getSession().setAttribute("pagenumber", pagenumber);
	    	request.getSession().setAttribute("watch", watch);
		}catch (SQLException e) {
			e.printStackTrace();
		}
		if("1".equals(sap)) {
			response.sendRedirect("tejia.jsp");
		}else if("2".equals(sap)) {
			response.sendRedirect("time.jsp");
		}else {
			response.sendRedirect("manager/product.jsp");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
