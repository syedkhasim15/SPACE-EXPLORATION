<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="select.css">



</head>

<body>

    <?php

        include 'config.php';

        $servername = "localhost";
        $username = "root";
        $password ="";
        $database = "wt_project";

        $conn = new mysqli("localhost","root","","wt_project");
        if($conn->connect_error)
        {
            die("Connection Failed".$conn->connect_error); 
        }
        else
        {

            $pre_stmt = "SELECT * FROM satellite";
            $stmt = $conn->prepare($pre_stmt);

            $stmt->execute();
            $result = $stmt->get_result();

        ?>

    <div class="con">


        <table class="table table-hover table-light table-stripe
        d" id="table-data">
            <thead>
                <th>Sno</th>
                <th>Satellite</th>
                <th>Category</th>

            </thead>

            <tbody>
                <?php while($row = $result->fetch_assoc()){?>
                <tr>     
                    <td><a><?= $row['sno'];?></a></td>
                    <td><a><?= $row['s_name'];?></a></td>
                    <td><a><?= $row['category'];?></a></td>
                </tr>
                <?php }?>
            </tbody>

        </table>
    </div>

    <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>


    <script type="text/javascript">
    $(document).ready(function() {
        $('#search_text').keyup(function() {
            var search = $(this).val();

            $.ajax({
                url: 'action.php',
                method: 'post',
                data: {
                    query: search,

                },
                success: function(response) {
                    $('#table-data').html(response);
                }
            });
        });
    });
    </script>

</body>

</html>

<?php
        }

  
?>