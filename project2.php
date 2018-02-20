<!DOCTYPE html>
<html lang="en">
<head>

	<!--
		Create an API
		Project 2
		CTEC 290 - API
		Chris McGuire
		Winter 18
	-->

	<title>Project 2 - Create an API</title>
	<meta charset="utf-8">

	<!-- CSS -->

	<!-- JQUERY -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


</head>
<body>
	<header>
		<h1>Project 2 - Create an API</h1>
	</header>
	<main>
		<div id="formDiv">
		</div>
		<form id="tableSelectForm" method="POST" action="project2.php">
			<h2>Which table would you like to use?</h2>
			<select id="tableSelect" name="tableSelect">
				<option value="table1">Table1</option>
				<option value="table2">Table2</option>
				<option value="table3">Table3</option>
			</select>
			<input type="submit" value="Select Table" name="selectTable" >
		</form>

		<?php	
 		//open connection to mysql db
 		$connection = mysqli_connect("localhost", "root", "", "ctec290_project_2") or die("Error " . mysqli_error($connection));

 		echo "<a href=\"?create\" title=\"Create a Record\">Create a new record</a>";

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
 		
 		if($_SERVER["REQUEST_METHOD"] == "POST") {

 			$table = "table1";
 			$sql = "select * from " . "table1" ." ";
 			$result = mysqli_query($connection, $sql);
 			print_r($result);

 			$dataArray = array();
 			$arrayKeys = array_keys($dataArray);

 			echo "<table>";
 			while ($row = $result->fetch_assoc()){
 				echo "<tr>";
 				echo "<td><a href=\"?edit={$row['last_name']}\">Edit</a><td><a href=\"?delete={$row['last_name']}\">Delete</a></td><td>".$row['customer_number']."</td><td>".$row['date1']."</td><td>".$row['first_name']."</td><td>".$row['last_name']."</td><td>".$row['city_name']."</td><td>".$row['state_name']."</td><td>".$row['country_name']."</td>";
 				echo "</tr>";
 			}
 			echo "</table>";
 		}

 		if(isset($_GET['create'])){
 			createNew($connection);
 		} elseif(isset($_GET['save'])) {

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
	</main>
	<footer>
		<p>Chris McGuire</p>
	</footer>
</body>
</html>