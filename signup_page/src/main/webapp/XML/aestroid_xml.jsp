<!DOCTYPE html>
<html>
<head>
  <title>Asteroid Data</title>
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
  
    th a{
      text-decoration: none;
      color: #fff;
    }
    
    .con{
      display: flex;
      justify-content: center;
    }
  
  </style> 
</head>
<body>

  <h1>AESTROID INFORMATION</h1>
  <div class="con">

    <table id="asteroid-table">
      <thead>
        <tr>
          <th>Name</th>
          <th>Size</th>
          <th>Speed</th>
          <th>Nearest Distance</th>
          <th>Probability to Hit Earth</th>
          <th>Year</th>
        </tr>
      </thead>
      <tbody>
      </tbody>
    </table>

  </div>


  <script>
    // Parse XML dataj
    var xml = `<!-- PASTE THE XML DATA HERE -->`;
    fetch('a.xml')
      .then(response => response.text())
      .then(xml=> {
    var parser = new DOMParser();
    var xmlDoc = parser.parseFromString(xml, "text/xml");
    var asteroids = xmlDoc.getElementsByTagName("asteroid");

    // Generate HTML table
    var table = document.getElementById("asteroid-table");
    var tbody = table.getElementsByTagName("tbody")[0];
    for (var i = 0; i < asteroids.length; i++) {
      var asteroid = asteroids[i];
      var name = asteroid.getElementsByTagName("name")[0].textContent;
      var size = asteroid.getElementsByTagName("size")[0].textContent;
      var speed = asteroid.getElementsByTagName("speed")[0].textContent;
      var distance = asteroid.getElementsByTagName("nearest_distance")[0].textContent;
      var probability = asteroid.getElementsByTagName("probability")[0].textContent;
      var year = asteroid.getElementsByTagName("year")[0].textContent;

      var row = document.createElement("tr");
      row.innerHTML = "<td>" + name + "</td>" +
                      "<td>" + size + "</td>" +
                      "<td>" + speed + "</td>" +
                      "<td>" + distance + "</td>" +
                      "<td>" + probability+ "</td>" +
                      "<td>" + year + "</td>";
      tbody.appendChild(row);
    }
  });
  </script>
</body>
</html>