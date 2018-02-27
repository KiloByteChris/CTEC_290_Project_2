<?php
// Read and display the table1 data from the database
function readData(){
	// Create a database connection
	require "database_connection.php";
	// Database query
	$table = "table1";
	$sql = "select * from " . $table ." ";
	$result = mysqli_query($connection, $sql);
	// Create an array that contains the data from the php object
	$dataArray = array();
	while($row = mysqli_fetch_assoc($result)){
		$dataArray[] = $row;
	}
	// Encode the php array into json.
	$jsonData = json_encode($dataArray);
	// Echo the json data to the browser
	echo $jsonData;
	mysqli_close($connection);
 } 
 readData();
?>