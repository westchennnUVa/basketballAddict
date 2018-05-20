<?php
/**
 * Created by PhpStorm.
 * User: Westchennn
 * Date: 3/13/18
 * Time: 4:15 PM
 */
header('Access-Control-Allow-Origin: *');
 $conn = mysqli_connect("127.0.0.1","root","2222") or die("Connection to database fails".mysqli_connect_error());
 mysqli_select_db("webProject",$conn) or die("Failure".mysqli_connect_error());


?>
