<?php


$sat_num = $_GET['sat_num'];
$sat_name = $_GET['sat'];
$matter = $_GET['matter'];
$category = $_GET['category'];
$img = $_GET['img'];
$data = $_GET['data'];


//data bae connection


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
       
        $sql = "INSERT INTO satellite(sno,s_name, matter, category,image,data) 
        VALUES ('$sat_num','$sat_name', '$matter', '$category','$img','$data')";
    
        if ($conn->query($sql) === TRUE) {
            echo "New record created successfully";
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
        <meta http-equiv="refresh" content="3;url=insert_form.html" />
        <title>Document</title>
    </head>
    <body>
        <h1><?php echo $sat_name ?></h1>
    </body>
    </html>
    

   <?php }

?>

