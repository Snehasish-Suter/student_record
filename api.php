<?php
header("Content-Type:application/json");
if (isset($_GET['std_id']) && $_GET['std_id']!="") 
{
	include('db.php');
	$std_id = $_GET['std_id'];
	$SqlJoin = ("SELECT a.*,b.* FROM std_inf as a , cr_inf as b WHERE  a.std_cr = b.cr_id AND a.std_id = $std_id ");
	$result = mysqli_query($con,$SqlJoin);
	if(mysqli_num_rows($result)>0){
	$row = mysqli_fetch_array($result);
	$Student_ID      = $row['std_id'];
	$Student_Name    = $row['std_name'];
	$Student_Roll    = $row['std_roll'];
	$Student_Gender  = $row['std_gender'];
	$Student_City    = $row['std_city'];
	$Student_Course  = $row['cr_name'];
	$Response_Code  = $row['response_code'];
	$Response_Desc  = $row['response_desc'];
	response($Student_ID,$Student_Name,$Student_Roll,$Student_Gender,$Student_City,$Student_Course,$Response_Code,$Response_Desc);
	mysqli_close($con);
	}else{
		response(NULL, NULL, NULL, NULL, NULL , NULL , 200,"No Record Found");
		}
}else{
		response(NULL, NULL, NULL , NULL , NULL , NULL , 400,"Invalid Request");
		}

function response($Student_ID,$Student_Name,$Student_Roll,$Student_Gender,$Student_City,$Student_Course,$Response_Code,$Response_Desc)
{
	$response['std_id'] = $Student_ID;
	$response['std_name'] = $Student_Name;
	$response['std_roll'] = $Student_Roll;
	$response['std_gender'] = $Student_Gender;
	$response['std_city'] = $Student_City;
	$response['cr_name'] = $Student_Course;
	$response['response_code'] = $Response_Code;
	$response['response_desc'] = $Response_Desc;
	
	$json_response = json_encode($response);
	echo $json_response;
}
?>