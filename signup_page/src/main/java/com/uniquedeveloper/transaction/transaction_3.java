package com.uniquedeveloper.transaction;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class transaction_3
 */
@WebServlet("/transaction_3")
public class transaction_3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		
		response.setContentType("text/html");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wt_project?useSSL=false","root","root123");
			
			ServletContext context = getServletContext();
			Object obj = context.getAttribute("accno");
			String accno = obj.toString();
				
			DateTimeFormatter df = DateTimeFormatter.ofPattern("dd/MM/yyyy");
			LocalDateTime now = LocalDateTime.now();
			
			String date = df.format(now);
			String amount = request.getParameter("amount");
			 
			pst = con.prepareStatement("insert into  transaction(acc_num,date,deposit) values (?,?,?)");
			pst.setString(1, accno);
			pst.setString(2, date);
			pst.setString(3, amount);
			
			int rows = pst.executeUpdate();
			
			if(rows==1)
			{
				out.println("your transaction has been done");
			}
			else
			{
				out.println("your transaction has been failed");
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}

}
