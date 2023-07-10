package com.uniquedeveloper.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String uemail = request.getParameter("username");
		String upwd = request.getParameter("password");
		
		HttpSession session = request.getSession(); 
		Connection con;
		RequestDispatcher dispatcher = null;
		try
		{
//			 session.setAttribute("uname",uemail);
		      
		      
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wt_project?useSSL=false","root","root123");
			PreparedStatement pst = con.prepareStatement("select *from users where uemail=? and upwd=?");
			pst.setString(1,uemail);
			pst.setString(2, upwd);
			
			pst.executeQuery();
			
			ResultSet rs = pst.executeQuery();
						

			if(rs.next())
			{
				//sessioin id
		
			    session.setAttribute("creation",session.getCreationTime());
				session.setAttribute("name", rs.getString("uname"));
				session.setAttribute("email", rs.getString("uemail"));
				session.setAttribute("mobile", rs.getString("umobile"));
				session.setAttribute("address", rs.getString("uaddress"));
				session.setAttribute("city", rs.getString("city"));
				session.setAttribute("country", rs.getString("country"));
				session.setAttribute("pod", Integer.parseInt(rs.getString("pod")));	
				session.setAttribute("news", Integer.parseInt(rs.getString("news")));
				
				String accname = rs.getString("uname");
				PreparedStatement pst1 = con.prepareStatement("select *from acc_holder where acc_name=?");
				pst1.setString(1,accname);
				
				pst1.executeQuery();
				ResultSet rs1 = pst1.executeQuery();
				
				if(rs1.next())
				{
					String accnum = rs1.getString("acc_num").toString();
					String month = rs1.getString("month").toString();
					String year = rs1.getString("year").toString();					
					
					Cookie cookie = new Cookie("accnum",accnum);
					cookie.setMaxAge(100*100);
					response.addCookie(cookie);
					
					Cookie cookie1 = new Cookie("month",month);
					cookie1.setMaxAge(100*100);
					response.addCookie(cookie1);
					
					Cookie cookie2 = new Cookie("year",year);
					cookie2.setMaxAge(100*100);
					response.addCookie(cookie2);
				
//					Cookie cookie3 = new Cookie("acc_name",accname1);
//					cookie3.setMaxAge(100*100);
//					response.addCookie(cookie3);
				}
						
//				dispatcher = request.getRequestDispatcher("transaction.jsp");
				dispatcher = request.getRequestDispatcher("index.jsp");
			
			}
			else
			{
				request.setAttribute("status","failed");
				dispatcher= request.getRequestDispatcher("login.jsp");  
			}
			
			dispatcher.forward(request, response);
			
			
		}
		catch(Exception e)
		{
			response.sendRedirect("errorpage.jsp");
		}
		
	}

}
