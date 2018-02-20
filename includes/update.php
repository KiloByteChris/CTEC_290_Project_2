<?php
// update changes to a record in the database
function updateData($connection){
	$sql = "UPDATE table1 SET customer_number={$_POST['customer_number']}, date1='{$_POST['date']}', last_name='{$_POST['last_name']}', first_name='{$_POST['first_name']}', city_name='{$_POST['city_name']}', state_name='{$_POST['state_name']}', country_name='{$_POST['country_name']}' WHERE last_name='{$_POST['last_name']}'";

	echo $sql;
	$connection->query($sql);
}
?>