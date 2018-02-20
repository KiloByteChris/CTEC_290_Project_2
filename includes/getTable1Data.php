<?php
// Read and display the data from the database
function displayData(){
	// Create a database connection
	$connection = mysqli_connect("localhost", "root", "", "ctec290_project_2") or die("Error " . mysqli_error($connection));
	$connection->set_charset("utf-8");
	
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
	
	echo $jsonData;
	
	mysqli_close($connection);

 } 
 
 displayData();
?>