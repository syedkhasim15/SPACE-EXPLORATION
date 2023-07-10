<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@page import = "java.util.*" session="true"%>
<html> 
    <head>
        <title>Using Sessions to Track Users</title>
         <style>
        *{
            padding: 0px;
            margin: 0px;

        }
        @keyframes fadeInOut {
        0% {
          opacity: 0.3;
        }
        50% {
          opacity: 1;
        }
        100% {
          opacity: 0.3;
        }
      }

      /* Apply the animation to the text */
      .text {
        animation: fadeInOut 5s ease-in-out infinite;
      }
        body{
            background-color:  #181f2a;
        }
        .con{
            display: flex;
            justify-content: center;
        }

        .container{

            border-radius: 10px;
            margin-top: 100px;
            width: 60vw;;
            border: 1px solid red;
            background-color: rgba(39, 20, 59, 0.2);
            padding-top: 50px;
            box-shadow: rgba(46, 79, 135, 0.173) 0px 54px 55px, rgba(64, 77, 91, 0.392) 0px -12px 30px, rgba(77, 91, 97, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;        }

        .inncon{
          
            margin-bottom: 50px;
            display: flex;
            justify-content: center;
            
        }
        label{
            color: white;
        }
        .left{
          /* padding-left: 10%; */
          width: 25%;
          padding-left: 25%
        }
        .right{
            width: 50%;
        }
        .mid{
            padding-left: 10px;
            padding-right: 20px;
            /* width: 3%; */
        }

        h1{
            color: white;
            text-align: center;
            margin-top: 30px;
        }

        
button {
    --c:  #227591; /* the color*/
    
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
    font-size: 1.5rem;
    cursor: pointer;
    padding: .1em .6em;
    font-weight: bold;  
    border: none;
    color: white;
    border-radius: 10px;
  }
  

    </style>
    </head> 

    <body>
        <% 
        Integer counter = (Integer)session.getAttribute("counter");
        if (counter == null) {
            counter = new Integer(1);
        } else {
            counter = new Integer(counter.intValue() + 1);
        }
        
        

        session.setAttribute("counter", counter);
        %>
          <h1>Using Sessions to Track Users</h1>
    <div class="con">
        <div class="container text">
            <div class="inncon">
                <label class="left">SESSION ID</label>
                <label class="mid"">:</label>
                <label class="right"><%=session.getId()%></label>
            </div>
            <div class="inncon">
                <label class="left">CREATION TIME</label>
                <label class="mid"">:</label>
                <label class="right"><%=new Date(session.getCreationTime())%></label>
            </div>
            <div class="inncon">
                <label class="left">LAST ACCESSED TIME</label>
                <label class="mid"">:</label>
                <label class="right"><%=new Date(session.getLastAccessedTime())%></label>
            </div>
            <div class="inncon">
                <label class="left">COUNT</label>
                <label class="mid"">:</label>
                <label class="right"><%=counter%></label>
            </div>
            <div class="inncon">

                <form action="logout" method="get">
                    <button
                      type="submit"
                      name="signout"
                      id="signout"
                      class="form-submit"
                      >signout</button>
                  </form>
               
            </div>
        
        </div>
    </div>
  </body>
</html>
