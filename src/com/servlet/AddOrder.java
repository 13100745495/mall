package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Watch;
import com.service.WatchService;
import com.service.WatchServiceImpl;

@SuppressWarnings("serial")
@WebServlet("/AddOrder")
public class AddOrder extends HttpServlet {
	Map<Integer,Watch> map = new HashMap<Integer,Watch>();
	WatchService ws = new WatchServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String wid = request.getParameter("wid");
		String deleteorder = request.getParameter("deleteorder");
		Map<Integer,Watch> ordermap = (Map<Integer, Watch>) request.getSession().getAttribute("ordermap");
		Watch w = ws.selectWatch(Integer.parseInt(wid));
		if(deleteorder == null) {
			if(ordermap == null) {
				map.clear();
			}
			map.put(Integer.parseInt(wid),w);
		}else {
			map.remove(Integer.parseInt(wid));
			
		}
		request.getSession().setAttribute("ordermap", map);
		response.sendRedirect("car.jsp");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
