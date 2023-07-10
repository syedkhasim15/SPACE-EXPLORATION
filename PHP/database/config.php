<?php

    $servername = "localhost";
    $username = "root";
    $password ="";
    $database = "wt_project";

    $conn = new mysqli("localhost","root","","wt_project");
    if($conn->connect_error)
    {
        die("Connection Failed".$conn->connect_error); 
    }


?>