<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta http-equiv="x-ua-compatible" content="ie=edge" />
  <title>Material Design for Bootstrap</title>
  <!-- MDB icon -->
  <link rel="icon" href="img/mdb-favicon.ico" type="image/x-icon" />
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
  <!-- Google Fonts Roboto -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" />
  <!-- MDB -->
  <link rel="stylesheet" href="css/mdb.min.css" />

  <link rel="stylesheet" href="style.css" />

  <style>

  </style>

</head>

<body>

<div class="container py-5">
    <div clas="row mt-4">

  <?php
    echo "welcome to the state where we are ready to get connected to a database";

    $servername = "localhost";
    $username = "root";
    $password ="";
    $database = "khasim";

    $conn = mysqli_connect($servername,$username,$password, $database);

    // if conditions

    if(!$conn)
    {
        die("sorry we failed to connect: ".mysqli_connect_error());
    }
    else
        // echo "connection was successful";

    $sql = "SELECT *FROM `employees`";
    $result = mysqli_query($conn,$sql);

    $num = mysqli_num_rows($result);
    
    echo "<br>";

    //regular expression
    $str = "satellites";
    $pattern = "/1.png";
    $flag = preg_match($pattern, $str);


    ?>

    <?php

    //while loope
    while($row= mysqli_fetch_assoc($result))
    {
        // echo var_dump($row);
        // echo $row['sno']."hello". $row['name'];
        // echo "<br>";                 
        ?>

            <div class="row-md-3">
              <div class="card element">
                    <img src="1_landsat.png" width="200px" height="200px  alt="">
                <div class="card-body">
                    <h4 class="card-title">
                    <?php  echo $row['name'];?>
                    </h4>
                    <p class="card-text">
                        Dummt date
                    </p>
                </div>
            </div>

        </div>
  <?php

        }   
    ?>

    </div>
</div>    

</body>

</html>