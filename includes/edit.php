<?php
// Display a form that allows the user to change the data in the database
function editData($connection, $name) {
	$sql = "SELECT * FROM table1 WHERE last_name='$name' LIMIT 1";
	
	$result = $connection->query($sql);
	$row = $result->fetch_assoc();
	?>
	
	<form method="POST" action="?update">
		<label for="customer_number">Customer Number:</label>
		<input type="text" id="customer_number" value="<?php echo $row['customer_number']; ?>" name="customer_number">

		<label for="date">Date:</label>
		<input type="text" id="date" value="<?php echo $row['date1']; ?>" name="date">

		<label for="last_name">Last Name:</label>
		<input type="text" id="last_name" value="<?php echo $row['last_name']; ?>" name="last_name">
		
		<label for="first_name">First Name:</label>
		<input type="text" id="first_name" value="<?php echo $row['first_name']; ?>" name="first_name">
		
		<label for="city_name">City:</label>
		<input type="text" id="city_name" value="<?php echo $row['city_name']; ?>" name="city_name">
		
		<label for="state_name">State:</label>
		<input type="text" id="state_name" value="<?php echo $row['state_name']; ?>" name="state_name">
		
		<label for="country_name">Country:</label>
		<input type="text" name="country_name" value="<?php echo $row['country_name']; ?>" id="country_name">
		
		<a href="project2.php">Cancel</a>;
		<input type="submit" value="Edit Record">
	</form>
	<?php
}
?>