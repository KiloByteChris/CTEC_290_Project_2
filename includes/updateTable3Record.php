<?php
// update changes to table3 in the database
// Database connection
require "database_connection.php";
// Process json into php
$updateRecordData = json_encode($_POST);
$updateRecordData = json_decode($updateRecordData);
function updateData($connection, $updateRecordData){
	$sql = "UPDATE table3 SET customer_id='$updateRecordData->customerId', 	credit_card_num='$updateRecordData->creditCardNum', address='$updateRecordData->address', number_ordered='$updateRecordData->numberOrdered', reference_number='$updateRecordData->referenceNumber', product_ordered='$updateRecordData->productOrdered', product_description='$updateRecordData->productDescription' WHERE customer_id='$updateRecordData->id'";
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