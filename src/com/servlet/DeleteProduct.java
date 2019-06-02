package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.WatchService;
import com.service.WatchServiceImpl;

@SuppressWarnings("serial")
@WebServlet("/DeleteProduct")
public class DeleteProduct extends HttpServlet {
	WatchService ws = new WatchServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String wid = request.getParameter("wid");
		boolean flag = ws.deleteWatchById(Integer.parseInt(wid));
		if(flag) {
			response.sendRedirect("manager/deleteproduct1.jsp");
		}else {
			response.sendRedirect("manager/deleteproduct2.jsp");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
