package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.UserService;
import com.service.UserServiceImpl;

@SuppressWarnings("serial")
@WebServlet("/DeleteUser")
public class DeleteUser extends HttpServlet {
	UserService us = new UserServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String uid = request.getParameter("uid");
		boolean flag = us.deleteUserById(Integer.parseInt(uid));
		if(flag) {
			response.sendRedirect("manager/deleteuser1.jsp");
		}else {
			response.sendRedirect("manager/deleteuser2.jsp");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
