<?php

$servername = "localhost";
    $username = "root";
    $password ="";
    $database = "wt_project";

    $conn = mysqli_connect($servername,$username,$password, $database);

    $num = $_POST['num'];

    if(!$conn)
    {
        die("sorry we failed to connect: ".mysqli_connect_error());
    }
    else
    {
    
        $sql = "SELECT *FROM `satellite` where sno=$num";
        $result = mysqli_query($conn,$sql);

        $rows = mysqli_fetch_assoc($result);

        // <!-- echo "<img src='img/$rows[`image`].png' class='card-img-top' alt='jal;dsf;'>"; -->

        echo $rows['data'];

    }
?>