<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="Map.css" />
    <title>Document</title>
  </head>
  <body>
    <head>
      <link
        rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
      />
    </head>
      <div class="container">
        <div class="card">
          <div class="content">
            <!-- <div class="img"><img src="https://unsplash.it/200/200" /></div> -->
            <div class="img" onclick="map('v_stat.jsp')"><img src="volcano.jpg" /></div>
            <div class="cardContent">
              <h3>Volcanos</h3>
            </div>
          </div>
          <ul class="sci">
            <li style="--i: 1">
              <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
            </li> 
            <li style="--i: 2">
              <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </li>
            <li style="--i: 3">
              <a href="#"><i class="fa fa-github" aria-hidden="true"></i></a>
            </li>
          </ul>
        </div>
        <div class="card">
          <div class="content">
            <div class="img" onclick="map('ice_stat.jsp')"><img src="icebergs.jpg" /></div>
            <div class="cardContent">
              <h3>Ice Bergs</h3>
            </div>
          </div>
          <ul class="sci">
            <li style="--i: 1">
              <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
            </li>
            <li style="--i: 2">
              <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </li>
            <li style="--i: 3">
              <a href="#"><i class="fa fa-github" aria-hidden="true"></i></a>
            </li>
          </ul>
        </div>
        <div class="card">
          <div class="content">
            <div class="img" onclick="map('ff_stat.jsp')"><img src="forest_fires.jpg" /></div>
            <div class="cardContent">
              <h3>Forst fires</h3>
            </div>
          </div>
          <ul class="sci">
            <li style="--i: 1">
				<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
            </li>
            <li style="--i: 2">
              <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </li>
            <li style="--i: 3">
              <a href="#"><i class="fa fa-github" aria-hidden="true"></i></a>
            </li>
          </ul>
        </div>
      </div>
      
      <script>
      	function map(event)
      	{

      		location.href = event;
      	}
      </script>
      
    </body>
</html>
