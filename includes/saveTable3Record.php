<?php
// Database connection
require "database_connection.php";
// Create a php object from json
var_dump($_POST);
$newRecordData = json_encode($_POST);
$newRecordData = json_decode($newRecordData);
function saveData($connection, $newRecordData){
	// Save a new record to table1 in the database
	// Assign the data in the php object to variable
	$customerId = $newRecordData->customerId;
	$creditCardNum = $newRecordData->creditCardNum;
	$address = $newRecordData->address;
	$numberOrdered = $newRecordData->numberOrdered;
	$referenceNumber = $newRecordData->referenceNumber;
	$productOrdered = $newRecordData->productOrdered;
	$productDescription = $newRecordData->productDescription;
	// Use the variable to create an sql query and query the database
	$sql = "INSERT INTO table3 (customer_id,credit_card_num,address,number_ordered,reference_number,product_ordered,product_description)
	VALUES ($customerId,'$creditCardNum','$address','$numberOrdered','$referenceNumber','$productOrdered','$productDescription')";
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
saveData($connection,$newRecordData);
?>