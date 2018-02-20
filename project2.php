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
		<?php	
			// Database connection
			require "includes/database_connection.php";
			// Read and display the data from the database
			require "includes/read.php";
			// Create new records in the database
			require "includes/create.php";
			// Edit a record in the database
			require "includes/edit.php";
			// Edit a record in the database
			require "includes/update.php";
			// Save changes to the database
			require "includes/save.php";
		?>
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
 		
 		echo "<a href=\"?create\" title=\"Create a Record\">Create a new record</a>";
 		
 		if(isset($_GET['create'])){
 			createNew($connection);
			
 		} elseif(isset($_GET['save'])) {

	 		saveData($connection);
			
 		} elseif(isset($_GET['delete'])) {
			$sql = "DELETE FROM table1 WHERE last_name='{$_GET['delete']}' LIMIT 1";
			
			$connection->query($sql);
		} elseif(isset($_GET['edit'])){
			
			editData($connection, $_GET['edit']);
			
		} elseif(isset($_GET['update'])) {
			
			updateData($connection);
			
		} else {
			displayData($connection);
		}
	?>
	</main>
	<footer>
		<p>Chris McGuire</p>
	</footer>
</body>
</html>