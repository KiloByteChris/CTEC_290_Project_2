<?php
// Edit a record from table1 in the ctec_290 database
// Database connection
require "database_connection.php";
$editRecordData = json_encode($_POST);
$editRecordData = json_decode($editRecordData);
// Database query
$table = "table2";
$sql = "select * from " . $table ." WHERE product_number='$editRecordData->id' LIMIT 1";
$result = mysqli_query($connection, $sql);

// Create an array that contains the data from the php object
$dataArray = array();
while($row = mysqli_fetch_assoc($result)){
	$dataArray[] = $row;
}
// Encode the php array into json.
$jsonData = json_encode($dataArray);

echo $jsonData;

mysqli_close($connection);
?>