<?php

$sno= $_GET['sno'];


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
        
        $sql = "delete from satellite. where sno='$sno'";

        if ($conn->query($sql) === TRUE) {
            // echo "query executed successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }

        $conn->close();

        ?>

        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="refresh" content="3;url=update_form.html" />
            <title>Document</title>
        </head>
        <body>
            <h1><?php echo $sql." is executed successfully" ?></h1>
        </body>
        </html>
        
    
     <?php }
    
?>
    
    