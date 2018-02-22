<?php
// Save a new record to the database
require "database_connection.php";
print_r($_POST);
$newRecordData = json_encode($_POST);
print_r($newRecordData);
$newRecordData = json_decode($newRecordData);
print_r($newRecordData);
//echo gettype($newRecordData);
echo $newRecordData->customerNumber;

for($i=0;$i<count($newRecordData);$i++){
	
}
function saveData($connection, $newRecordData){
	$customerNumber = $newRecordData->customerNumber;
	$date = $newRecordData->date1;
	$last = $newRecordData->firstName;
	$first = $newRecordData->lastName;
	$cityName = $newRecordData->cityName;
	$stateName = $newRecordData->regionName;
	$countryName = $newRecordData->countryName;

	$sql = "INSERT INTO table1 (customer_number,date1,last_name,first_name,city_name,state_name,country_name)
	VALUES ($customerNumber,'$date','$last','$first','$cityName','$stateName','$countryName')";
	echo $sql;

	$connection->query($sql);
}

saveData($connection,$newRecordData);