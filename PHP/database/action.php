<?php

    include 'config.php';
    $output=''; 

   
     $pre_stmt = "SELECT * FROM ptudbtab_nominalroll WHERE sno LIKE CONCAT('%',?,'%') OR s_name LIKE CONCAT('%',?,'%')";
    
    
    if(isset($_POST['query'])){
        $search=$_POST['query'];
        $stmt = $conn->prepare($pre_stmt);
        $stmt->bind_param("ss",$search,$search);
    }
    
    if(empty($_POST['query'])){
        
        $pre_stmt = "SELECT * FROM satellite";
        $stmt = $conn->prepare($pre_stmt);
    }
    

    $stmt->execute();
    $result= $stmt->get_result();

    if($result->num_rows>0)
    {
        $output = "<thead>
        <tr>
            <th>Sno</th>
            <th>Satellite</th>
            <th>Category</th>
        </tr>
        </thead>
        <tbody>";
// <td><a href="student_details.php?reg=.$row['StudentId']."><?= $row['StudentId'];</a></td>

        while($row = $result->fetch_assoc())
        {
            $output.= 
            "<tr>
                <td><a>".$row['sno']."</a></td>
                <td><a>".$row['s_name']."</a></td>
                <td><a>".$row['category']."</a></td>
               
            </tr>";
        }
        $output.= "</tbody>";
        echo $output;
    }
    else
    {   
        echo "<h3>No Records Found</h3>";
    }


?>