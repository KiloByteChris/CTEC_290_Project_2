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
	
	<!-- project2.js -->
	<script src="js/project2.js"></script>
	
</head>
<body>
	<div id="wrapper">
		<?php require "includes/header.inc.php";?>
		<main>
			<button name="refresh" value="table1" id="refreshButton">Refresh</button>
			<button name="table1" value="table1" id="table1Button">Table 1</button>
			<button name="table2" value="table2" id="table2Button">Table 2</button>
			<button name="table3" value="table3" id="table3Button">Table 3</button>
			<button name="newRecord" value="newRecord" id="newRecordButton">Create New Record</button>
			<div id="newRecordDiv"></div>
			<div id="dataDisplayDiv"></div>
		</main>
		<?php require "includes/footer.inc.php"?>
	</div> <!-- End wrapper -->
</body>
</html>