<?php
// Delete a record from the database
// Database connection
require "database_connection.php";
// Create a php object from json
//var_dump($_POST);
$deleteRecordData = json_encode($_POST);
$deleteRecordData = json_decode($deleteRecordData);
var_dump($deleteRecordData);
function deleteData($connection, $deleteRecordData){
	$id = $deleteRecordData->id;
	$sql = "DELETE FROM table2 WHERE product_number='$deleteRecordData->id' LIMIT 1";
	$connection->query($sql);
	mysqli_close($connection);
 } 
 deleteData($connection, $deleteRecordData);
?>