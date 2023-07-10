<!DOCTYPE html>
<html>
<style>

  body{

    background: #2e3a4d;
    color: white;

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


  table{
    margin-top: 50px;
    background-color: #39465f99;
    margin-bottom: 200px;
  }

  table,
  th,
  td {
    /* border: 1px solid rgb(136, 212, 235); */
    border-collapse: collapse;

  }

  td {
    width: 200px;
    padding: 17px;
    text-align: center;
	background-color: #eeeeeed7;;
    color: rgba(6, 1, 1, 0.684);
	border: 4px solid  #2e3a4d;
	
	       -webkit-animation:flipinx 4s ease 2s 1 normal;
-moz-animation:flipinx 4s ease 2s 1 normal;
-ms-animation:flipinx 4s ease 2s 1 normal;
animation:flipinx 4s ease 2s 1 normal;

	
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
    margin-top: 40px;
    text-align: center;
  }

  th{
	
	background-color: #000;
	padding: 35px;
	border: 4px solid  #2e3a4d;
  }
  
  .con{
    display: flex;
    justify-content: center;
  }
  

  th a{
    text-decoration: none;
    color: #fff;
  }
  
   a{
      text-decoration: none;
      color: white;
    }

</style>
</head>
<body>
	<h1><a href="http://localhost:8080/signup_page/Weather/weather.html">Temperatures Table</a></h1>
    <div class="con">
        <table id="temperaturesTable">
            <thead>
                <tr>
                      <th>Year</th>
                    <th><a href="http://localhost:8080/signup_page/Weather/weather.html?param1=mumbai">Mumabi</a></th>
                    <th><a href="http://localhost:8080/signup_page/Weather/weather.html">Delhi</a></th>
                    <th><a href="http://localhost:8080/signup_page/Weather/weather.html">Kolkata</a></th>
                    <th><a href="http://localhost:8080/signup_page/Weather/weather.html">Chennai</a></th>
                    <th><a href="http://localhost:8080/signup_page/Weather/weather.html">Puducherry</a></th>
                </tr>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>

    </div>
	
	<script>
		// Load the XML file
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				// Parse the XML document
				var xmlDoc = this.responseXML;
				// Find all the year nodes
				var yearNodes = xmlDoc.getElementsByTagName("year");
				// Loop through each year node
				for (var i = 0; i < yearNodes.length; i++) {
					var yearNode = yearNodes[i];
					// Get the year value
					var yearValue = yearNode.getAttribute("value");
					// Find all the city nodes within the year node
					var cityNodes = yearNode.getElementsByTagName("city");
                    var newRow = document.createElement("tr");
                    // Add the year, city, and average temperature to the row
                    var yearCell = document.createElement("td");
                    yearCell.textContent = yearValue;
                    newRow.appendChild(yearCell);

 
					for (var j = 0; j < cityNodes.length; j++) {

						var cityNode = cityNodes[j];
						var cityName = cityNode.getAttribute("name");
						var avgTemp = cityNode.getAttribute("avgTemp");

						var tempCell = document.createElement("td");
						tempCell.textContent = avgTemp + " °C";
						newRow.appendChild(tempCell);
						
					}

                    var tableBody = document.querySelector("#temperaturesTable tbody");
                    tableBody.appendChild(newRow);
				}
			}
		};
		xmlhttp.open("GET", "w.xml", true);
		xmlhttp.send();
	</script>
</body>
</html>