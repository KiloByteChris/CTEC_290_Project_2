<?php
// update changes to table1 in the database
// Database connection
require "database_connection.php";
$updateRecordData = json_encode($_POST);
$updateRecordData = json_decode($updateRecordData);
var_dump($updateRecordData);
function updateData($connection, $updateRecordData){
	$sql = "UPDATE table2 SET product_number='$updateRecordData->productNumber', date2='$updateRecordData->date2', original_price='$updateRecordData->OriginalPrice', regular_price='$updateRecordData->regularPrice', sale_price='$updateRecordData->SalePrice', on_hand='$updateRecordData->onHand', description='$updateRecordData->description' WHERE product_number='$updateRecordData->id'";
	echo $sql;
	$connection->query($sql);
	mysqli_close($connection);
}
updateData($connection, $updateRecordData);
?>