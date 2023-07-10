<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>

    <!-- Custom Css -->
    <link rel="stylesheet" href="css/profile.css">

    <!-- FontAwesome 5 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
</head>
<body>

<%
	String user = "";
	user = session.getAttribute("name").toString();
%>
    <!-- Navbar top -->
    <div class="navbar-top">
        <div class="title">
            <h1>Profile</h1>
        </div>

        <!-- Navbar -->
        <ul>
        
        <%
        	
	        if(user.equals("Admin"))
	    	{
	        	%>
	        	 <li>
	                <a href="http://localhost/project/database/database.html">
	                    <img id="add" src="images/admin_logo.png" alt="">
	                </a>
	            </li>
	            <%
	    	}
        %>
             <li>
                <a href="http://localhost:8080/signup_page/logout.jsp">
                    <i class="fa fa-sign-out-alt fa-2x"></i>
                </a>
            </li>
            
        </ul>
        <!-- End -->
    </div>
    <!-- End -->


    <!-- End -->

    <!-- Main -->
    <div class="main">
        <h2 style="color:white">IDENTITY</h2>
        <div class="card">
            <div class="card-body">
                <i class="fa fa-pen fa-xs edit"></i>
                <table>
                    <tbody>
                        <tr>
                            <td>Name</td>
                            <td>:</td>
                            <td><%= session.getAttribute("name") %></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>:</td>
                            <td><%= session.getAttribute("email") %></td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td>:</td>
                            <td><%= session.getAttribute("address") %></td>
                        </tr>
                        <tr>
                            <td>Phone</td>
                            <td>:</td>
                            <td><%= session.getAttribute("mobile") %></td>
                        </tr>
                        <tr>
                            <td>City</td>
                            <td>:</td>
                            <td><%= session.getAttribute("city") %></td>
                        </tr>
                        <tr>
                            <td>Country</td>
                            <td>:</td>
                            <td><%= session.getAttribute("country") %></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <h2 style="color:white">SOCIAL MEDIA</h2>
        <div class="card">
            <div class="card-body">
                <i class="fa fa-pen fa-xs edit"></i>
                <div class="social-media">
                    <span class="fa-stack fa-sm">
                        <i class="fas fa-circle fa-stack-2x"></i>
                        <i class="fab fa-facebook fa-stack-1x fa-inverse"></i>
                    </span>
                    <span class="fa-stack fa-sm">
                        <i class="fas fa-circle fa-stack-2x"></i>
                        <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                    </span>
                    <span class="fa-stack fa-sm">
                        <i class="fas fa-circle fa-stack-2x"></i>
                        <i class="fab fa-instagram fa-stack-1x fa-inverse"></i>
                    </span>
                    <span class="fa-stack fa-sm">
                        <i class="fas fa-circle fa-stack-2x"></i>
                        <i class="fab fa-invision fa-stack-1x fa-inverse"></i>
                    </span>
                    <span class="fa-stack fa-sm">
                        <i class="fas fa-circle fa-stack-2x"></i>
                        <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                    </span>
                    <span class="fa-stack fa-sm">
                        <i class="fas fa-circle fa-stack-2x"></i>
                        <i class="fab fa-whatsapp fa-stack-1x fa-inverse"></i>
                    </span>
                    <span class="fa-stack fa-sm">
                        <i class="fas fa-circle fa-stack-2x"></i>
                        <i class="fab fa-snapchat fa-stack-1x fa-inverse"></i>
                    </span>
                </div>
            </div>
        </div>
    </div>
    <!-- End -->
</body>
</html>