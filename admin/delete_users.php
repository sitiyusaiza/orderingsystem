<?php
include("../connection/connect.php");
error_reporting(0);
session_start();


// sending query
mysqli_query($db,"DELETE FROM users WHERE u_id = '".$_GET['user_del']."'");//it will delete the user base on user id
header("location:allusers.php");  

?>
