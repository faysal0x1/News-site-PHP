<?php 
 
include "config.php";

$userid=$_GET['id'];

$sql = "delete from user where user_id ={$userid}";

if(mysqli_query($conn,$sql))
{
    header("Location: {$hostname}/admin/users.php");
}else{
    echo "<p>Cant Delete User Record</p>";
}

mysqli_close($conn);