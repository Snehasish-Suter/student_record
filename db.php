<?php
// Enter your Host, username, password, database below.
$con = mysqli_connect("localhost","root","","student_rc");
    if (mysqli_connect_errno())
    {
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
	die();
	}

?>