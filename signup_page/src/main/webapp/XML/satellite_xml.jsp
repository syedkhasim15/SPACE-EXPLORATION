<!DOCTYPE html>
<html>
<style>

  body{

    background: #2e3a4d;
    color: white;

  }

  table{
    background-color: #39465f99;
  }

  table,
  th,
  td {
    /* border: 1px solid rgb(136, 212, 235); */
    border-collapse: collapse;

  }
  
      
    @-webkit-keyframes flipinx {
0%{ opacity: 0; -webkit-transform: perspective(400px) rotateX(0deg); transform: perspective(400px) rotateX(90deg); }
40%{ -webkit-transform: perspective(400px) rotateX(0deg); transform: perspective(400px) rotateX(-10deg); }
70%{ -webkit-transform: perspective(400px) rotateX(0deg); transform: perspective(400px) rotateX(10deg); }
100%{ opacity: 1; -webkit-transform: perspective(400px) rotateX(0deg); transform: perspective(400px) rotateX(0deg); }
}

@keyframes flipinx {
0%{ opacity: 0; transform: perspective(400px) rotateX(90deg); }
40%{ transform: perspective(400px) rotateX(-10deg); }
70%{ transform: perspective(400px) rotateX(10deg); }
100%{ opacity: 1; transform: perspective(400px) rotateX(0deg); }
}

  td {
    padding: 20px;
	background-color: #eeeeeed7;;
    color: rgba(6, 1, 1, 0.684);
	border: 4px solid  #2e3a4d;
	       -webkit-animation:flipinx 4s ease 2s 1 normal;
-moz-animation:flipinx 4s ease 2s 1 normal;
-ms-animation:flipinx 4s ease 2s 1 normal;
animation:flipinx 4s ease 2s 1 normal;

	
  }

  tr:nth-of-type(odd) {
  background: #eeeeee;
         -webkit-animation:flipinx 4s ease 2s 1 normal;
-moz-animation:flipinx 4s ease 2s 1 normal;
-ms-animation:flipinx 4s ease 2s 1 normal;
animation:flipinx 4s ease 2s 1 normal;
}

  .con{
   
    display: flex;
    justify-content: center;
  }
   h1{
    margin-top: 20px;
    text-align: center;
    
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
  
    h1 a{
   animation-name: example;
    animation-duration: 5s;
    animation-iteration-count: infinite;
  }

  th{
	
	background-color: #000;
	padding: 35px;
	border: 4px solid  #2e3a4d;
  }
  
   a{
      text-decoration: none;
      color: white;
    }
  

</style>

<body>

  

  <h1><a href="http://localhost/PROJECT/satellite.php">SATELLITE INFO</a></h1>
  
  <br><br>
  <div class="con">
    <table id="demo"></table>
  </div>


  <script>

      window.onload = function () {
            loadDoc();
        };

    function loadDoc() {
      var xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
          myFunction(this);
        }
      };
      xhttp.open("GET", "s.xml", true);
      xhttp.send();
    }
    function myFunction(xml) {
      var i;
      var xmlDoc = xml.responseXML;
      var table = "<tr><th>SATELLITE</th><th>TYPE</th><th>COUNTRY</th><th>USAGE</th><th>ORBIT</th><th>YEAR</th></tr>";
      var x = xmlDoc.getElementsByTagName("CD");
      for (i = 0; i < x.length; i++) {
        table += "<tr><td>" +
          x[i].getElementsByTagName("NAME")[0].childNodes[0].nodeValue +
          "</td><td>" +
          x[i].getElementsByTagName("TITLE")[0].childNodes[0].nodeValue +
          "</td><td>" +
          x[i].getElementsByTagName("COUNTRY")[0].childNodes[0].nodeValue +
          "</td><td>" +
          x[i].getElementsByTagName("USAGE")[0].childNodes[0].nodeValue +
          "</td><td>" +
          x[i].getElementsByTagName("ORBIT")[0].childNodes[0].nodeValue +
          "</td><td>" +
          x[i].getElementsByTagName("YEAR")[0].childNodes[0].nodeValue +
          "</td></tr>";
          
      }
      document.getElementById("demo").innerHTML = table;
    }

  </script>

</body>

</html>