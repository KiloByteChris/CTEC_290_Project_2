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
	<link href="css/reset.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">

	<!-- JQUERY -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
</head>
<body>
	<div id="wrapper">
		<?php require "includes/header.inc.php";?>
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
				// Delete a record in the database
				require "includes/delete.php";
			?>
			
			<!-- Form to refresh the database display -->
			<form id="tableSelectForm" method="POST" action="project2.php">
				<input type="submit" value="Refresh" name="selectTable" >
			</form>
			
			<?php
				echo "<a href=\"?create\" title=\"Create a Record\" id=\"createRecordLink\">Create a new record</a>";
				// Based on the GET request, use the included php files to query the database 
				if(isset($_GET['create'])){
					createNew($connection);
				} elseif(isset($_GET['save'])) { 
					saveData($connection);
				} elseif(isset($_GET['delete'])) {
					deleteData($connection);
				} elseif(isset($_GET['edit'])){
					editData($connection, $_GET['edit']);
				} elseif(isset($_GET['update'])) {
					updateData($connection);
				} else {
					displayData($connection);
				}
			?>
		</main>
		<?php require "includes/footer.inc.php"?>
	</div> <!-- End wrapper -->
</body>

<script>
	$(document).ready( function() {
		$.ajax ({
			url: 'includes/getTable1Data.php',
			method: 'GET',
			datatype:'json'
		}).done( function(data) {
			data = JSON.parse(data);
			console.log(data);
		});
	});
</script>
</html>