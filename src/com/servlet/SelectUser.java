package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.User;
import com.service.UserService;
import com.service.UserServiceImpl;

@SuppressWarnings("serial")
@WebServlet("/SelectUser")
public class SelectUser extends HttpServlet {
	UserService us = new UserServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String uid = request.getParameter("uid");
		User u = us.selectUser(Integer.parseInt(uid));
		request.getSession().setAttribute("user", u);
		response.sendRedirect("manager/updateuser.jsp");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
