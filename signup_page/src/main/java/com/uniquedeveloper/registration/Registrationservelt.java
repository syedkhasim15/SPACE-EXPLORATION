package com.uniquedeveloper.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Registrationservelt
 */
@WebServlet("/register")
public class Registrationservelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
   

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String uname = request.getParameter("uname");
		String uemail = request.getParameter("email");
		String upwd = request.getParameter("pass");
		String umobile = request.getParameter("phone");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String address = request.getParameter("address");
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		ResultSet rs;
		boolean row;
		
		PrintWriter  out = response.getWriter();
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wt_project?useSSL=false","root","root123");
			
			PreparedStatement pst1 = con.prepareStatement("select * from users where uemail=?");
			pst1.setString(1,uemail);
			
			rs = pst1.executeQuery();
			
			row = false;
			
			row= rs.next();
			
			if(row == true)
			{
				response.sendRedirect("username.jsp");
			}
			else
			{
			
				PreparedStatement pst = con.prepareStatement("insert into users (uname,upwd,uemail,umobile,uaddress,city,country,pod,news) values(?,?,?,?,?,?,?,?,?)");
				pst.setString(1,uname);
				pst.setString(2,upwd);
				pst.setString(3,uemail);
				pst.setString(4, umobile);
				pst.setString(5, address);
				pst.setString(6, city);
				pst.setString(7, country);
				pst.setInt(8,0);
				pst.setInt(9,0);
				
				int rowCount= pst.executeUpdate();
				response.sendRedirect("login.jsp");
				if(rowCount>0)
				{
					request.setAttribute("status", "success");
					
					
				}
				else
				{
					request.setAttribute("status","failur");
				}
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally {
					
				dispatcher = request.getRequestDispatcher("login.jsp");
			}
		}
	}

}
