package com.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Indent;
import com.entity.Watch;
import com.service.IndentService;
import com.service.IndentServiceImpl;

@SuppressWarnings("serial")
@WebServlet("/InsertIndent")
public class InsertIndent extends HttpServlet {
	IndentService is = new IndentServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Map<Integer,Watch> map = (Map<Integer, Watch>) request.getSession().getAttribute("ordermap");
		boolean flag = false;
		for (Integer in : map.keySet()) {
			Indent i = new Indent();
			String name = request.getParameter("name");
			String username = (String) request.getSession().getAttribute("username");
			String mobile = request.getParameter("mobile");
			String address1 = request.getParameter("address");
			String address = mobile + "" + address1;
			String phone = request.getParameter("phone");
			i.setWid(in);
			i.setName(name);
			i.setUsername(username);
			i.setAddress(address);
			i.setPhone(phone);
			flag = is.insertindent(i);
		}
		if(flag) {
			request.getSession().setAttribute("ordermap", null);
			response.sendRedirect("chenggong.jsp");
		}else {
			response.sendRedirect("loser.jsp");
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
