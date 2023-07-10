<?php

    // require_once 'connection.php';
    $servername = "localhost";
    $username = "root";
    $password ="";
    $database = "wt_project";

    $conn = mysqli_connect($servername,$username,$password, $database);

    if(!$conn)
    {
        die("sorry we failed to connect: ".mysqli_connect_error());
    }
    else
    {
        // echo "connection was successful";
    }
       
        $sql = "SELECT *FROM `satellite`";
        $result = mysqli_query($conn,$sql);
    
        $num = mysqli_num_rows($result);

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Eccomerce</title>
  <link rel="stylesheet" href="">
  <link rel="stylesheet" href="style.css">
  <link rel="icon" href="img/mdb-favicon.ico" type="image/x-icon" />
 
  <!-- <link rel="stylesheet" href="css/mdb.min.css" /> -->
</head>

<body>

    <h1 id="page_head" >SATELLITE GARAGE</h1>

  <main class="container py-5">
    <?php
        while($row= mysqli_fetch_assoc($result)){
    ?>
    <div id="con">
      <img id="image" src="img/<?php echo $row["image"];?>.png" class="card-img-top" alt="jal;dsf;">
        <div class="card-body">
            <h3 id="heading" >
            <?php  echo $row['s_name'];?>
            </h3>
            <p style="color:black" class="card-text">Click here to get the information about the satellite. Understand the Basic concepts about satellites</p>
            <div class="btn">
              <a href="more_info.php?sno=<?php  echo $row['sno'];?>" class="btn btn-primary" id="btn"><button>Go somewhere</button></a> 
            </div>
        </div>
    </div>

    <?php
        }
    ?>

  </main>

</body>

</html>