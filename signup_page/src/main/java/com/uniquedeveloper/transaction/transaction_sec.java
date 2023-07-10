package com.uniquedeveloper.transaction;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class transaction_sec
 */
@WebServlet("/transaction_sec")
public class transaction_sec extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();//imp s1
		response.setContentType("text/html");
		
		ServletContext context = getServletContext();
		Object obj = context.getAttribute("accno");
		String value = obj.toString();
		
		out.println("<html>");
		out.println("<body bgcolor=pink>");
		out.println("<center>");
		out.println("<h2>Ebank<h2>");
		out.println("<center>");
		out.println("<Form method=post action=transaction_3>");
		out.println("<b>click deposit button<b>");
		out.println("<table>");
		
		out.println("<tr>");
		out.println("<td>");
		out.println("<p>Account number:</p>"+value);
		out.println("</tr>");
		out.println("</td>");
		
		out.println("<tr>");
		out.println("<td>");
		out.println("<p>Deposit Amount: </p></td> <td> <input type=next name=amount value=0>");
		out.println("</tr>");
		out.println("</td>");
		out.println("</table>");
		
		out.println("<input type=submit value=deposit>");
		out.println("</br>");
		out.println("</Form>");
		
		
		
		out.println("</body>");
		out.println("</html>");
		

		
	
		
	}

}
