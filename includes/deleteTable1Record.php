<?php
// Delete a record from the database
// Database connection
require "database_connection.php";
// Create a php object from json
$deleteRecordData = json_encode($_POST);
$deleteRecordData = json_decode($deleteRecordData);
function deleteData($connection, $deleteRecordData){
	$id = $deleteRecordData->id;
	$sql = "DELETE FROM table1 WHERE customer_number='$deleteRecordData->id' LIMIT 1";
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
 deleteData($connection, $deleteRecordData);
?>