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
        echo "connection was successful";
    }
       
        $sql = "SELECT *FROM `satellite`";
        $result = mysqli_query($conn,$sql);
    
        $num = mysqli_num_rows($result);
        $sno = $_GET['sno'];


        // if(isset($_POST["sno"]))
        // {
     
        //     $rows = mysqli_fetch_assoc(mysqli_query($conn,"SELECT *FROM satellite where sno=$sno"));

        //     ?>



        //     <?php
        // }

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="more_info.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Sono:wght@500&display=swap" rel="stylesheet">
    
</head>

<body>
    
   
    <!-- <button id="bt" onclick="bt()" name="btn">helelele</button> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    <div class="image">

    </div>

    <div class="button" >
        <button id="btn1"> NEXT </button>
        <button id="btn2"> PREV </button>
     </div>
    <div class="data">
        <p class="data_sat"></p>
    </div>
    <div class="data">
        <p class="
        
        
        "></p>
    </div>





<script>

var rowNum = <?php echo $sno?>;
var numRows=20;



$(document).ready(function() {
    // Get total number of rows in database
    // $.ajax({
    //   type: 'POST',
    //   url: 'fetchdata.php', // Replace with your PHP file name
    //   success: function(response) {
    //     numRows = parseInt(response);
    //   }
    // });

    var rowNum = <?php echo $sno?>;
    var numRows=20;
    
    loadImg(rowNum);
    loaddata(rowNum);
    

// Next button click event
$('#btn1').click(function() {
    if (rowNum < numRows) {
        rowNum++;
        loadImg(rowNum);
        loaddata(rowNum);

    }
});

$('#btn2').click(function() {
        if (rowNum > 1) {
            rowNum--;
            loadImg(rowNum);
            loaddata(rowNum);
        }
    });
});


function loadImg(rowNum) {
    console.log(rowNum)
    $.ajax({
      type: 'POST',
      url: 'fetchimg.php', // Replace with your PHP file name
      data: {num: rowNum},
      success: function(response) {
        $('.image').html(response);
      }
    });
}

function loaddata(rowNum) {
    console.log(rowNum)
    $.ajax({
      type: 'POST',
      url: 'fetchdata.php', // Replace with your PHP file name
      data: {num: rowNum},

      success: function(response) {
        $('.data_sat').html(response);
      }
    });
}



</script>
</body>
</html>