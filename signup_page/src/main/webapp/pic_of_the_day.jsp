<%
	if(session.getAttribute("pod")==null)
		response.sendRedirect("login.jsp");

%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1" 
    
    info="explore space"
    
 
    
    autoFlush="true"
    
    isELIgnored="false"
    
    
    import="java.net.URI,
java.net.URL,java.io.BufferedReader,java.io.InputStreamReader"   %>


<%@ page import="java.util.Date" %>
<%Date d = new Date(); %>

<%@ page import="java.net.URI" %>
<%@ page import="java.net.URL" %>

<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.IOException" %>

<%@ page import="java.io.InputStreamReader" %>
<%@ page import="java.net.HttpURLConnection" %>

<%@ page import="java.net.http.HttpClient" %>
<%@ page import="java.net.http.HttpRequest" %>


<%@ page import="java.net.http.HttpResponse" %>
<%@ page import="java.util.ArrayList" %>

<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.http.HttpServlet" %>

<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

    <!-- MDB -->
    <link rel="stylesheet" href="Mdb/css/mdb.min.css">
    </link>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.css" rel="stylesheet" />

    <style>
        body {
            background-color: #030431;
            background-color:  #181f2a;
			background-color: #263146;
            color: #ffffffad;
        }
        
        h3{
        	color:yellow;
        }
        
        @keyframes example {
		    0% {
		    color: #59ff00;
		    font-size: 25px;
		    }
		    50% {
		    color: white;
		    font-size: 35px;
		    }
		    
		     100% {
		    color: #59ff00;
		    font-size: 25px;
		    }
		    
		  }
		
        h3{
            text-align: center;
            animation-name: example;
		    animation-duration: 5s;
		    animation-iteration-count: infinite;
        }

        #Url {
            border: 6px solid #b9cbcc4f;
            border-radius: 10px;
        }

		#section_media{
			border: 1px solid #89f6f6;
			border-radius: 10%;
    box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;
		}
		img{
			border-radius: 10%;
		}
		form{
			margin-bottom: 60px;
		}
		button {
			margin-top: 20px;
    --c:  #227591; /* the color*/
    color:white;
    box-shadow: 0 0 0 .1em inset var(--c); 
    --_g: linear-gradient(var(--c) 0 0) no-repeat;
    background: 
      var(--_g) calc(var(--_p,0%) - 100%) 0%,
      var(--_g) calc(200% - var(--_p,0%)) 0%,
      var(--_g) calc(var(--_p,0%) - 100%) 100%,
      var(--_g) calc(200% - var(--_p,0%)) 100%;
    background-size: 50.5% calc(var(--_p,0%)/2 + .5%);
    outline-offset: .1em;
    transition: background-size .4s, background-position 0s .4s;
  }
  button:hover {
    --_p: 100%;
    transition: background-position .4s, background-size 0s;
  }
  button:active {
    box-shadow: 0 0 9e9q inset #0009; 
    background-color: var(--c);
    color: #fff;
  }
  

  button {
    font-family: system-ui, sans-serif;
    font-size: 1.2rem;
    cursor: pointer;
    padding: .1em .6em;
    font-weight: bold;  
    border: none;
  }
    </style>


</head>

<body>

<%!


String apiurl="";

URL obj;

HttpURLConnection con;

%>



<%

int flag=0;




if(session.getAttribute("pod")!=null)
{
	
	if((Integer)session.getAttribute("pod")==0)
	{
		flag=1;
		response.sendRedirect("our_plans.jsp");
	}	
	else
	{
	try
	{
		apiurl = "https://api.nasa.gov/planetary/apod?date=2023-02-01&api_key=++";

		obj = new URL(apiurl);

		 con = (HttpURLConnection) obj.openConnection();

		int responseCode = con.getResponseCode(); 


		if (responseCode == HttpURLConnection.HTTP_OK) { // success
			
		    BufferedReader in = new BufferedReader(new InputStreamReader(
		            con.getInputStream()));

		    String inputLine;
		    
		    StringBuffer response1 = new StringBuffer();

		    while ((inputLine = in.readLine()) != null) 
		    {
		        response1.append(inputLine);
		        
		    }
		    
		    
		    String fin = response1.toString();

		    String[] body = fin.split(",");
		    String[][] each = new String[body.length][2];

		    int i=0;
		    for(String name: body)
		    {
		        String[] tem = name.split(":");
		        for(int j=0; j<tem.length && j<2; j++)
		        each[i][j] = tem[j];
		        i++;
		    }

		    session.setAttribute(each[0][1], "copyright");
		    
		    in.close();
		}
		
	}
	catch (Exception e)
	{
		if(flag==0)
			response.sendRedirect("errorpage.jsp");
	}
}
}


%>


	
<!-- OR -->

	<p>Login stamp <%=d%></p>
	
    <div class="container mt-5">
        <!-- Content here -->

        	<%@ include file="simple.html" %>

		
        <form action="" method="post" style="text-align: center;">
            <label for="date" style="display: block; color: #ffe900;">SELECT THE ASTRO DATE</label>
            <input type="date" name="date"
                style="width: 1190px; margin-top: 10px; text-align: center; height:auto; font-size: 20px;"
                id="date_picker" name="date">

            <div style="display: flex; justify-content: center;margin-top: 15px;">
                <button type="button" onclick="nasaRequest()">GET ASTRO</button>
            </div>
                        
        </form>
        
        


        <div class="row mb-10">
            <div class="col-md-8 mb-4 mb-md-0">

                <section id="section_media">

                </section>

            </div>

            <div class="col-md-3 mb-4 mb-md-0">
                <h5 id="title"></h5>
                <p class="mb-4 text-muted">Copyright: <span id="copyright"></span></p>
                <p id="explanation"></p>

            </div>

        </div>
        
    </div>
    


    <script type="text/javascript">

        function nasaRequest() {
            let xmlhttp = new XMLHttpRequest();

            xmlhttp.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                    let data = JSON.parse(this.responseText);

                    // Data from NASA API json
                    let copyright = data["copyright"];
                    let date = data["date"];
                    let explanation = data["explanation"];
                    let hdurl = data["hdurl"];
                    let media_type = data["media_type"];
                    let title = data["title"];
                    let url = data["url"];

                    let imageType = `
                            <div class="bg-image hover-overlay ripple shadow-1-strong rounded" data-mdb-ripple-color="light">
                                <img id="section_image" src="" class="w-100" alt="Louvre" />
                                <a id="hurl" href="" target="_blank">
                                    <div class="mask" style="background-color: hsla(0, 0%, 98%, 0.2)"></div>
                                </a>
                            </div>
                            `;

                    let videoType = `
                                    <div class="ratio ratio-16x9">
                                        <iframe
                                        id="section_video"
                                            src=""
                                            title="YouTube video"
                                            allowfullscreen
                                        ></iframe>
                                        </div>
                                    `

                    document.getElementById("title").innerHTML = title;
                    document.getElementById("copyright").innerHTML = copyright;
                    document.getElementById("explanation").innerHTML = explanation;

                    if (media_type == "video") {
                        document.getElementById("section_media").innerHTML = videoType;
                        document.getElementById("section_video").src = url;
                    }
                    else {
                        document.getElementById("section_media").innerHTML = imageType;
                        document.getElementById("section_image").src = url;
                        document.getElementById("hurl").href = hdurl;
                    }
                }
            }
            let datepicker = document.getElementById("date_picker").value;
            let queryUrl = "https://api.nasa.gov/planetary/apod?";
            let queryKey = "api_key=cCrVC3OVLzFNxVKEx0oynj0PV4PngNeR3UP9cbjn";
            let queryDate = "date=" + datepicker + "&";
            let queryFull = queryUrl + queryDate + queryKey;
            xmlhttp.open("GET", queryFull, true);
            xmlhttp.send();

        }

        // https://api.nasa.gov/planetary/apod?date=2023-02-01&api_key=bSqnSu0nO9GJ5aEvUgnVl2wEoMRiuzgm2GCALrEc
        // GET https://api.nasa.gov/neo/rest/v1/feed?start_date=2023-02-01&end_date=2023-02-03&api_key=bSqnSu0nO9GJ5aEvUgnVl2wEoMRiuzgm2GCALrEc

        // const myDatepickcer = document.getElementById("date_picker");
        // myDatepickcer.addEventListener("open.mdb.datepicker", (e) => {
        //     nasaRequest();
        // })

    </script>
    


</body>

</html>