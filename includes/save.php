<?php
function saveData($connection){
	$customerNumber = $_POST['customer_number'];
	$date = $_POST['date'];
	$last = $_POST['last_name'];
	$first = $_POST['first_name'];
	$cityName = $_POST['city_name'];
	$stateName = $_POST['state_name'];
	$countryName = $_POST['country_name'];

	$sql = "INSERT INTO table1 (customer_number,date1,last_name,first_name,city_name,state_name,country_name)
	VALUES ($customerNumber,'$date','$last','$first','$cityName','$stateName','$countryName')";
	echo $sql;

	$connection->query($sql);
}
?>