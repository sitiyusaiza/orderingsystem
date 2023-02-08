<?php
include("../connection/connect.php");
error_reporting(0);
session_start();


// sending query
mysqli_query($db,"DELETE FROM branch WHERE rs_id = '".$_GET['res_del']."'");//it will delete the branch base on branch id
header("location:allbranch.php");  

?>
