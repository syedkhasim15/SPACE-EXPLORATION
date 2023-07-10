package com.uniquedeveloper.transaction;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.concurrent.TimeUnit;

/**
 * Servlet implementation class Transaction
 */
@WebServlet("/payment")

public class Payment extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	PrintWriter output = null;
	Connection con;
	PreparedStatement pst;
	PreparedStatement pst1;
	PreparedStatement pst2;
	ResultSet rs;
	int rs1;
	boolean row;
	String cardNumber;
	String cardName;
	int cardMonth;
	int cardYear;
    int cardCvv;
    String plan;
    int amount=0;
    String pod = "POD";
	String news = "NEWS";
	String combo = "COMBO";
	int result = 0;
	RequestDispatcher dispatcher = null;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession(); 
		output = response.getWriter();
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		Date lastAccessTime = new Date(session.getLastAccessedTime());
		String time = lastAccessTime.toString();
		int flag=0;
		
		cardNumber = request.getParameter("cardNumber");
		cardName = request.getParameter("cardName");
		cardMonth  =  Integer.parseInt(request.getParameter("cardMonth"));
		cardYear  =  Integer.parseInt(request.getParameter("cardYear"));
		cardCvv  =  Integer.parseInt(request.getParameter("cardCvv"));
		plan  =  request.getParameter("plan");
		
		amount=79;
		
//		if(plan.equals(pod))
//		{
//			if((Integer)session.getAttribute("pod")==0)
//				amount=79;
//			else
//			{
//				response.sendRedirect("our_plans.jsp");
//				flag=1;
//			}
//			
//		}
//		else if(plan.equals(news))
//		{
//			if((Integer)session.getAttribute("news")==0)
//				amount=79;
//			else
//			{
//				response.sendRedirect("our_plans.jsp");
//				flag=1;
//			}
//		}
//		else
//		{	
//			if((Integer)session.getAttribute("news")==1 || (Integer)session.getAttribute("pod")==1)
//			{
//				response.sendRedirect("our_plans.jsp");
//				flag=1;
//			}
//			else 
//				amount = 129;
//		}
		
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wt_project?useSSL=false","root","root123");
			
			ServletContext context = getServletContext();
			pst = con.prepareStatement("select * from acc_holder where acc_num=? and pin=?");
			pst.setString(1,cardNumber);
			pst.setInt(2,cardCvv);
			rs = pst.executeQuery();
			row = false;
			row= rs.next();
			
			if(row == true)
			{
				out.println("<h2>"+cardCvv+"</h2>");
				out.println("<h2>"+cardNumber+"</h2>");
				result = rs.getInt(4);
				result = result - amount;
				out.println("<h2>"+result+"</h2>");
				pst = con.prepareStatement("insert into  transaction(acc_num,time_stamp,Amount,Type) values (?,?,?,?)");
				pst.setString(1, cardNumber);
				pst.setString(2, time);
				pst.setInt(3, amount);
				pst.setString(4, plan);
				 int i = pst.executeUpdate();  
	               if(i<=0)  
	               {
	            	   session.setAttribute("status","failed");
	               } 
	               else
	               {
	            	   
				
						pst1 = con.prepareStatement("update acc_holder set amount=? where acc_num=?");
						pst1.setInt(1,result);
						pst1.setString(2,cardNumber);
						i=pst1.executeUpdate();
		
			               if(i<=0)  
			               {
			            	   session.setAttribute("status","failed");

			               }
			               else
			               {
			            	   
			               
			               session.setAttribute("status","success");
			               
			               if(plan.equals(pod))
			               {
			            	   pst2 = con.prepareStatement("update users set pod=? where uemail=?");
			            	   pst2.setInt(1,1);
			            	   pst2.setString(2,(String) session.getAttribute("email"));
			            	   session.setAttribute("pod",1);
			               }
			               else if(plan.equals(news))
			               {
			            	   pst2 = con.prepareStatement("update users set news=? where uemail=?");
			            	   pst2.setInt(1,1);
			            	   pst2.setString(2,(String) session.getAttribute("email"));
			            	   session.setAttribute("news",1);
			               }
			               else
			               {
			            	   pst2 = con.prepareStatement("update users set pod=? , news=? where uemail=?");
			            	   pst2.setInt(1,1);
			            	   pst2.setInt(2,1);
			            	   pst2.setString(3,(String) session.getAttribute("email"));
			            	   session.setAttribute("news",1);
			            	   session.setAttribute("pod",1);
			               }
			               
			               pst2.executeUpdate();
			             
			               }
			               
			               
			              
	               }
				
			}
			else
			{
				//write somthing on screen such as credentiles are wrong
			}
			con.close();
			if(flag==0)
				response.sendRedirect("loading.jsp");
			
		}
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
//			out.println("<b> failed</b>");
//			out.println("<b>Error:</b>" +e);
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
//			out.println("<b> failed</b>");
//			out.println("<b>Error:</b>" +e);
			e.printStackTrace();
		}
		
		
			
		
		
	}


}
