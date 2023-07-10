package com.uniquedeveloper.registration;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.util.*;
import java.util.concurrent.TimeUnit;

@WebServlet("/logout")
public class Logout extends HttpServlet{
	
	  int count=5;

	   public void doGet(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
		   
		   HttpSession session = request.getSession(); 
		      // Set response content type
		     
		      	
      			session.invalidate();
      			response.sendRedirect("login.jsp");
	        
	   }

}
