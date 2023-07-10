package com.uniquedeveloper.registration;

import java.io.*;  
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;  

@WebServlet("/servlet2")
public class SecondServlet extends HttpServlet {  
  
public void doGet(HttpServletRequest request, HttpServletResponse response) {  
        try{  
  
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
          
        HttpSession session=request.getSession(false);  
        String n=(String)session.getAttribute("uname");  
        out.print("Hello "+n);  
  
        out.close();  
  
       }catch(Exception e){System.out.println(e);}  
    }  


public void doPost(HttpServletRequest request, HttpServletResponse response) {  
    try{  

    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
    
    
    
      
    HttpSession session=request.getSession(false);  
    String n=(String)session.getAttribute("uname");  
    
    Cookie arr[] = request.getCookies();
    
    out.print("Hello ghjklm"+arr[0].getValue());  

    out.close();  

   }catch(Exception e){System.out.println(e);}  
}  



      
  
}  

