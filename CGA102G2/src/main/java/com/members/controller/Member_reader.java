package com.members.controller;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.UnavailableException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;


@WebServlet("/Member_reader")

public class Member_reader extends HttpServlet{

public static final long serialVersionUID = 1L;
private Member_reader member_reader;	
Connection con;
public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
	doPost(req, res);
}

public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
	
	


		res.setContentType("image/gif");
		ServletOutputStream out = res.getOutputStream();

		try {
			String member_id = req.getParameter("member_id");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(
				"SELECT member_pic FROM members WHERE member_id = " + member_id);

			if (rs.next()) {
				BufferedInputStream in = new BufferedInputStream(rs.getBinaryStream("member_pic"));
				byte[] buf = new byte[4 * 1024]; // 4K buffer
				int len;
				while ((len = in.read(buf)) != -1) {
					out.write(buf, 0, len);
				}
				in.close();
			} else {
				res.sendError(HttpServletResponse.SC_NOT_FOUND);
			}
			rs.close();
			stmt.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	 public void init() throws ServletException {
		  try {
		   Class.forName("com.mysql.cj.jdbc.Driver");
		   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CGA102_2?serverTimezone=Asia/Taipei", "root", "password");
		  } catch (ClassNotFoundException e) {
		   throw new UnavailableException("Couldn't load JdbcOdbcDriver");
		  } catch (SQLException e) {
		   throw new UnavailableException("Couldn't get db connection");
		  }
		 }

	public void destroy() {
		try {
			if (con != null) con.close();
		} catch (SQLException e) {
			System.out.println(e);
		}
	
	}
	}