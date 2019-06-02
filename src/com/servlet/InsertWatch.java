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
@WebServlet("/InsertWatch")
public class InsertWatch extends HttpServlet {
	WatchService ws = new WatchServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String money = request.getParameter("money");
		String photo = request.getParameter("photo");
		Watch w = new Watch();
		w.setName(name);
		w.setPrice(Integer.parseInt(price));
		w.setMoney(Integer.parseInt(money));
		w.setPhoto(photo);
		boolean flag = ws.insertWatch(w);
		if(flag) {
			response.sendRedirect("ShowAllProduct");
		}else {
			request.getSession().setAttribute("insertwatch", "添加失败");
			response.sendRedirect("manager/insertwatch.jsp");
		}
		
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
