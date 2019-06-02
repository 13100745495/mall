package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Watch;
import com.service.WatchService;
import com.service.WatchServiceImpl;

@SuppressWarnings("serial")
@WebServlet("/SelectProduct")
public class SelectProduct extends HttpServlet {
	WatchService ws = new WatchServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String wid = request.getParameter("wid");
		Watch w = ws.selectWatch(Integer.parseInt(wid));
		request.getSession().setAttribute("watch", w);
		response.sendRedirect("manager/updateproduct.jsp");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
