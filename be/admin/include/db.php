<?php
$servername = "localhost";
$username = "root";
$password = '';

date_default_timezone_set('Asia/Kolkata');
session_start(); 
$conDB = mysqli_connect("localhost","$username","$password","marrion") or die("Connection Failed");


?>