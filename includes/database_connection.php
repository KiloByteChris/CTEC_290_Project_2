<?php
	// Create a database connection
	$connection = mysqli_connect("localhost", "root", "", "ctec290_project_2") or die("Error " . mysqli_error($connection));
	$connection->set_charset("utf-8");
?>