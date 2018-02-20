<?php
// Read and display the data from the database
function displayData($connection){
	// Database query
	$table = "table1";
	$sql = "select * from " . $table ." ";
	$result = mysqli_query($connection, $sql);

	// Display the results of the database query
	echo "<table id=\"dataTable\">";
	while ($row = $result->fetch_assoc()) {
		echo "<tr>";
		echo "<td><a href=\"?edit={$row['last_name']}\">Edit</a><td><a href=\"?delete={$row['last_name']}\">Delete</a></td><td>".$row['customer_number']."</td><td>".$row['date1']."</td><td>".$row['first_name']."</td><td>".$row['last_name']."</td><td>".$row['city_name']."</td><td>".$row['state_name']."</td><td>".$row['country_name']."</td>";
		echo "</tr>";
	}
	echo "</table>";
 } 
?>