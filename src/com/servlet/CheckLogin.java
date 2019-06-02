package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.ManagerService;
import com.service.ManagerServiceImpl;
import com.service.UserService;
import com.service.UserServiceImpl;

@SuppressWarnings("serial")
@WebServlet("/CheckLogin")
public class CheckLogin extends HttpServlet {
	UserService us = new UserServiceImpl();
	ManagerService ms = new ManagerServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String xuan = request.getParameter("xuan");
		if (xuan.equals("user")) {
			int u = us.login(username, password);
			if(u == 1) {
				request.getSession().setAttribute("str","用户名错误");
				response.sendRedirect("login.jsp");
			}else if(u == 2) {
				request.getSession().setAttribute("str","密码错误");
				response.sendRedirect("login.jsp");
			}else {
				request.getSession().setAttribute("str","");
				request.getSession().setAttribute("username",username);
				response.sendRedirect("index.jsp");
			}
		}else {
			int m = ms.login(username, password);
			if(m == 1) {
				request.getSession().setAttribute("str","用户名错误");
				response.sendRedirect("login.jsp");
			}else if(m == 2) {
				request.getSession().setAttribute("str","密码错误");
				response.sendRedirect("login.jsp");
			}else {
				request.getSession().setAttribute("str","");
				request.getSession().setAttribute("username",username);
				response.sendRedirect("manager/home.jsp");
			}
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
