<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv = "refresh" content = "8; url = Mars_rover/rover.html" />
<title>Aestroid started</title>

<style>

    *{
        padding: 0px;
        margin: 0px;
    }
.section {
position: relative;
width: 100vw;
height: 100vh;
display: flex;
align-items: center;
justify-content: center;
overflow: hidden;
}

#vid{
    width: 100vw;
}

	@-webkit-keyframes bounce-in {
0%{ opacity: 0; -webkit-transform: scale(.3); transform: scale(.3); }
50%{ opacity: 1; -webkit-transform: scale(1.0); transform: scale(1.0); }
70%{ -webkit-transform: scale(0.9); transform: scale(0.9); }
100%{ -webkit-transform: scale(1); transform: scale(1); }
}

@keyframes bounce-in {
0%{ opacity: 0; transform: scale(.3); }
50%{ opacity: 1; transform: scale(1.0); }
70%{ transform: scale(0.9); }
100%{ transform: scale(1); }
}
	
	
	
	.section h1 {
	text-align: center;
	font-size: 6rem;
	font-family: "Cookie";
	padding: 20px;
	margin: 15px;
	z-index: 1;
	opacity: 1;
	color: white;
	-webkit-animation:bounce-in 2.5s ease-in-out 0s 1 normal;
-moz-animation:bounce-in 2.5s ease-in-out 0s 1 normal;
-ms-animation:bounce-in 2.5s ease-in-out 0s 1 normal;
animation:bounce-in 2.5s ease-in-out 0s 1 normal;
	}

.video-container {
position: absolute;
top: 0;
left: 0;
width: 100vw;
}

.color-overlay {
position: absolute;
top: 0;
left: 0;
background-color: lightblue;
width: 100vw;
height: 100vh;
opacity: 0;
}
</style>
</head>
<body>

<div class="section">

    <h1>Welcome To Mars</h1>

    <div class="video-container">
        <div class="color-overlay"></div>
        <video autoplay loop muted>
            <source id="vid" src="images/asteroid.mp4" type="video/mp4">
        </video>
    </div>

</div>



</body>
</html>