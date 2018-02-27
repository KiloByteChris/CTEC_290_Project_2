<?php
// Database connection
require "database_connection.php";
// Create a php object from json
$newRecordData = json_encode($_POST);
$newRecordData = json_decode($newRecordData);
function saveData($connection, $newRecordData){
	// Assign the data in the php object to variable
	// Save a new record to table1 in the database
	$productNumber = $newRecordData->productNumber;
	$date = $newRecordData->date2;
	$originalPrice = $newRecordData->originalPrice;
	$regularPrice = $newRecordData->regularPrice;
	$salePrice = $newRecordData->salePrice;
	$onHand = $newRecordData->onHand;
	$description = $newRecordData->description;
	// Use the variable to create an sql query and query the database
	$sql = "INSERT INTO table2 (product_number,date2,original_price,regular_price,sale_price,on_hand,description)
	VALUES ($productNumber,'$date','$originalPrice','$regularPrice','$salePrice','$onHand','$description')";
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