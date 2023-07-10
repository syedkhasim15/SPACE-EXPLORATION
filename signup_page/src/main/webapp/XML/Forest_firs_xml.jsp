<!DOCTYPE html>
<html>
<head>
  <title>XML to HTML Table Example</title>
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
      width: 150px;
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
    
     a{
      text-decoration: none;
      color: white;
    }
  
  </style>
</head>
<body>

  <h1><a href="http://localhost:8080/signup_page/maps/volcanos.html">DESTRUCTION OF FOREST IN HECTARES</a></h1>

  <div class="con">
    <table id="myTable">
      <thead>
        <tr>
          <th>Year</th>
          <th>Africa</th>
          <th>Asia</th>
          <th>Europe</th>
          <th>North America</th>
          <th>South America</th>
          <th>Australia</th>
        </tr>
      </thead>
      <tbody>
      </tbody>
    </table>
    

  </div>
  
  <script>
    // Define the XML datae

    fetch('f.xml')
      .then(response => response.text())
      .then(xmlData => {
    // Parse the XML data
    var parser = new DOMParser();
    var xmlDoc = parser.parseFromString(xmlData, "text/xml");

    // Create the table rows and cells
    var table = document.getElementById("myTable");
    var rows = xmlDoc.getElementsByTagName("tr");
    for (var i = 0; i < rows.length; i++) {
      var row = table.insertRow(i + 1);
      var cells = rows[i].getElementsByTagName("td");
      for (var j = 0; j < cells.length; j++) {
        var cell = row.insertCell(j);
        cell.innerHTML = cells[j].childNodes[0].nodeValue;
      }
    }
  });
  </script>

	</body>
</html>