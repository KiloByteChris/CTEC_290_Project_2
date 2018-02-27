<?php
// update changes to table1 in the database
// Database connection
require "database_connection.php";
$updateRecordData = json_encode($_POST);
$updateRecordData = json_decode($updateRecordData);
function updateData($connection, $updateRecordData){
	$sql = "UPDATE table1 SET customer_number='$updateRecordData->customerNumber', date1='$updateRecordData->date1', last_name='$updateRecordData->lastName', first_name='$updateRecordData->firstName', city_name='$updateRecordData->cityName', state_name='$updateRecordData->regionName', country_name='$updateRecordData->countryName' WHERE customer_number='$updateRecordData->id'";
	$connection->query($sql);
	if($connection->affected_rows == 1){
		$status = ["status" => 1];
	}else{
		$status = ["status" => 2];
	}
	//Encode the status into json and return it to the ajax request
	$status = JSON_encode($status);
	echo $status;
	mysqli_close($connection);
}
updateData($connection, $updateRecordData);
?>