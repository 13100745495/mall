package com.servlet;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.util.ConnDB;

@SuppressWarnings("serial")
@WebServlet("/UpFile")
public class UpFile extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = request.getSession().getServletContext().getRealPath("/upload");
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload fileup = new ServletFileUpload(factory);
		try {
			List<FileItem> list;
			list = fileup.parseRequest(request);
			FileItem fi0 = list.get(0);
			FileItem fi1 = list.get(1);  
			String fileName = fi1.getName();
			fileName = fi0.getString() + fileName.substring(fileName.lastIndexOf("."));
			int index;
			InputStream is = fi1.getInputStream();
			BufferedInputStream bis = new BufferedInputStream(is);
			BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(path + "/" + fileName));
			while((index = bis.read()) != -1) {
				bos.write(index);
			}
			bos.flush();
			bis.close();
			bos.close();
			fi0.delete();
			Connection conn = ConnDB.getConn();
			PreparedStatement psta = conn.prepareStatement("update watch set photo = ? where wid=?");
		   	psta.setString(1, "/upload/" + fileName);
			psta.setInt(2, Integer.parseInt(fi0.getString()));
		   	psta.executeUpdate();
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("ShowAllProduct");
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
