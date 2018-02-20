<?php
function createNew() {
	echo "<p>create a new record</p>";
	?>
	<form method="POST" action="?save">
		<label for="customer_number">Customer Number:</label>
		<input type="text" id="customer_number" value="" name="customer_number">

		<label for="date">Date:</label>
		<input type="text" id="date" value="" name="date">

		<label for="last_name">Last Name:</label>
		<input type="text" id="last_name" value="" name="last_name">
		
		<label for="first_name">First Name:</label>
		<input type="text" id="first_name" value="" name="first_name">
		
		<label for="city_name">City:</label>
		<input type="text" id="city_name" value="" name="city_name">
		
		<label for="state_name">State:</label>
		<input type="text" id="state_name" value="" name="state_name">
		
		<label for="country_name">Country:</label>
		<input type="text" name="country_name" value="" id="country_name">
		
		<a href="project2.php">Cancel</a>;
		<input type="submit" value="Create New Record">
	</form>
	<?php
}
?>