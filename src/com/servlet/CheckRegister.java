package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.User;
import com.service.UserService;
import com.service.UserServiceImpl;

@SuppressWarnings("serial")
@WebServlet("/CheckRegister")
public class CheckRegister extends HttpServlet {
	UserService us = new UserServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String code = request.getParameter("code");
		String wcode = (String)request.getSession().getAttribute("wcode");
		if(code.equalsIgnoreCase(wcode)) {
			if(username != null||password != null||email != null||phone != null) {
				User u = us.selectUser(username);
				if(u == null) {
					User user = new User();
					user.setUsername(username);
					user.setPassword(password);
					user.setEmail(email);
					user.setPhone(phone);
					boolean flag = us.insertUser(user);
					if(flag) {
						request.getSession().setAttribute("zhuce", "");
						response.sendRedirect("login.jsp");
					}else {
						request.getSession().setAttribute("zhuce", "注册失败");
						response.sendRedirect("register.jsp");
					}
				}else {
					request.getSession().setAttribute("zhuce", "用户名被注册");
					response.sendRedirect("register.jsp");
				}
			}
		}else {
			PrintWriter out = response.getWriter();
			out.print("1");
			out.flush();
			out.close();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
