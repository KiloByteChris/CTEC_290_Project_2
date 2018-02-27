<?php
// update changes to table2 in the database
// Database connection
require "database_connection.php";
$updateRecordData = json_encode($_POST);
$updateRecordData = json_decode($updateRecordData);
function updateData($connection, $updateRecordData){
	$sql = "UPDATE table2 SET product_number='$updateRecordData->productNumber', date2='$updateRecordData->date2', original_price='$updateRecordData->originalPrice', regular_price='$updateRecordData->regularPrice', sale_price='$updateRecordData->salePrice', on_hand='$updateRecordData->onHand', description='$updateRecordData->description' WHERE product_number='$updateRecordData->id'";
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