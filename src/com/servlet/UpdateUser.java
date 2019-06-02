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
@WebServlet("/UpdateUser")
public class UpdateUser extends HttpServlet {
	UserService us = new UserServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		User u = (User)request.getSession().getAttribute("user");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		u.setUsername(username);
		u.setPassword(password);
		u.setEmail(email);
		u.setPhone(phone);
		boolean flag = us.updateUser(u);
		if(flag) {
			response.sendRedirect("ShowAllUser");
		}else {
			request.getSession().setAttribute("updateuser", "修改失败");
			response.sendRedirect("manager/updateuser.jsp");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
