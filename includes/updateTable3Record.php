<?php
// update changes to table1 in the database
// Database connection
require "database_connection.php";
$updateRecordData = json_encode($_POST);
$updateRecordData = json_decode($updateRecordData);
var_dump($updateRecordData);
function updateData($connection, $updateRecordData){
	$sql = "UPDATE table3 SET customer_id='$updateRecordData->customerId', 	credit_card_num='$updateRecordData->creditCardNum', address='$updateRecordData->address', number_ordered='$updateRecordData->numberOrdered', reference_number='$updateRecordData->referenceNumber', product_ordered='$updateRecordData->productOrdered', product_description='$updateRecordData->productDescription' WHERE customer_id='$updateRecordData->id'";
	echo $sql;
	$connection->query($sql);
	mysqli_close($connection);
}
updateData($connection, $updateRecordData);
?>