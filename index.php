
<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<title>Student Record</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="">
<style>
</style>
<script src=""></script>
<body>
<form action="" method="POST">
<label>Enter Student ID:</label><br />
<input type="text" name="std_id" placeholder="Enter Order ID" required/>
<br /><br />
<button type="submit" name="submit">Submit</button>
</form>
</body></html>

<?php
if (isset($_POST['std_id']) && $_POST['std_id']!="") 
{
	$std_id = $_POST['std_id'];
	$url = "http://localhost/student_record/api.php?std_id=".$std_id;
	
	$client = curl_init($url);
	curl_setopt($client,CURLOPT_RETURNTRANSFER,true);
	$response = curl_exec($client);
	
	$result = json_decode($response);
	
	echo "<table>";
	echo "<tr><td>Student_ID    :</td><td>$result->std_id</td></tr>";
	echo "<tr><td>Student_Name  :</td><td>$result->std_name</td></tr>";
	echo "<tr><td>Student_Roll  :</td><td>$result->std_roll</td></tr>";
	echo "<tr><td>Student_Gender:</td><td>$result->std_gender</td></tr>";
	echo "<tr><td>Student_City  :</td><td>$result->std_city</td></tr>";
	echo "<tr><td>Student_Course:</td><td>$result->cr_name</td></tr>";
	echo "<tr><td>Response_Code :</td><td>$result->response_code</td></tr>";
	echo "<tr><td>Response_Desc:</td><td>$result->response_desc</td></tr>";
	echo "</table>";
}
    ?>
