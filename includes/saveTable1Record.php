<?php
// Save a new record to table1 in the database
function saveData($connection, $newRecordData){
	// Database connection
	require "database_connection.php";

	// Create a php object from json
	$newRecordData = json_encode($_POST);
	$newRecordData = json_decode($newRecordData);

	// Assign the data in the php object to variable
	$customerNumber = $newRecordData->customerNumber;
	$date = $newRecordData->date1;
	$last = $newRecordData->firstName;
	$first = $newRecordData->lastName;
	$cityName = $newRecordData->cityName;
	$stateName = $newRecordData->regionName;
	$countryName = $newRecordData->countryName;

	// Use the variable to create an sql query and query the database
	$sql = "INSERT INTO table1 (customer_number,date1,last_name,first_name,city_name,state_name,country_name)
	VALUES ($customerNumber,'$date','$last','$first','$cityName','$stateName','$countryName')";
	$connection->query($sql);
}
saveData($connection,$newRecordData);
?>