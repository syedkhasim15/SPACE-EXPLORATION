
package com.uniquedeveloper.transaction;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Transaction
 */
@WebServlet("/Transaction1")
public class Transaction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	PrintWriter output = null;
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	boolean row;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		output = response.getWriter();
		String result="";
		String  accno = request.getParameter("accno");
		int pinno;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wt_project?useSSL=false","root","root123");
			
			ServletContext context = getServletContext();
			context.setAttribute("accno", accno);
			
			
			pinno = Integer.parseInt(request.getParameter("pinno"));
			int tem=1215;
			pst = con.prepareStatement("select * from acc_holder where acc_num=? and pin=?");
			pst.setString(1,accno);
			pst.setLong(2,pinno);
			rs = pst.executeQuery();
			
			row = false;
			
			row= rs.next();
			
			if(row == true)
			{
				result = rs.getString(1);
				context.setAttribute("accno", result);
				
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/transaction_sec");
				
				if(dispatcher==null)
				{
					
				}
				dispatcher.forward(request,response);
				con.close();
			}
			else
			{
				
				response.setContentType("text/html");
				output.print(row);
				output.println(accno);
				output.println(pinno);
				output.println("result is"+result+" yeah");
//				output.println("<html>");
//				output.println("<body bgcolor=pink>");
//				output.println("<p>please check the acc no and balance</P>");
//				output.println("</body>");
//				output.println("</html>");
//				output.close();
				
				
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
