	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<meta http-equiv = "refresh" content = "8.5; url = aestroid_xml.jsp" />
	<title>Starter</title>
	
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
	
	.section h1 {
	text-align: center;
	font-size: 6rem;
	font-family: "Cookie";
	padding: 20px;
	margin: 15px;
	z-index: 1;
	opacity: 1;
	color: white;
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
	
	    <h1>Aestroids</h1>
	
	    <div class="video-container">
	        <div class="color-overlay"></div>
	        <video autoplay loop muted>
	            <source id="vid" src="vid/ast_vid.mp4" type="video/mp4">
	        </video>
	    </div>
	
	</div>
	
	
	
	</body>
	</html>