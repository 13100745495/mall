package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.dsna.util.images.ValidateCode;

@SuppressWarnings("serial")
@WebServlet("/CodeServlet")
public class CodeServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//使用jar生产验证码
        ValidateCode vCode = new ValidateCode(100, 25, 4, 9);
        //获取生产的验证码字符串
         String code =vCode.getCode();
         //使用session 来储存验证码
         request.getSession().setAttribute("wcode", code);
       //写到网页上 (通过  响应中的字符流  写回网页)
         vCode.write(response.getOutputStream());
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
