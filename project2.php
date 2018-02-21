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
			<button name="refresh" value="" id="refreshButton">Refresh</button>
			<button name="table1" value="table1" id="table1Button">Table 1</button>
			<button name="table2" value="table2" id="table2Button">Table 2</button>
			<button name="table3" value="table3" id="table3Button">Table 3</button>
			<div id="dataDisplayDiv"></div>
		</main>
		<?php require "includes/footer.inc.php"?>
	</div> <!-- End wrapper -->
</body>
<script src="js/displayData.js"></script>
<script>
	$(document).ready( function() {
		//---------------------------------------------------
		//----------------- Read table data functions--------
		//---------------------------------------------------
		function refresh(table) {
			var refreshURL = "";
			var table = table;
			switch(table) {
				case "table1":
					refreshURL = 'includes/getTable1Data.php';
					break;
				case "table2":
					refreshURL = 'includes/getTable2Data.php';
					break;
				case "table3":
					refreshURL = 'includes/getTable3Data.php';
					break;
			} 
			$.ajax ({
				url: refreshURL,
				method: 'GET',
				datatype:'json'
			}).done( function(data) {
				// create a JSON object from the string returned from the php script
				data = JSON.parse(data);
				//console.log(data);
				displayData(data, table);
			});
		}
		
		function getTable1Data(table){
			$.ajax ({
				url: 'includes/getTable1Data.php',
				method: 'GET',
				datatype:'json'
			}).done( function(data) {
				// create a JSON object from the string returned from the php script
				data = JSON.parse(data);
				//console.log(data);
				$("#dataDisplayDiv").html('');
				displayData(data, table);
			});
		}
		
		function getTable2Data(table){
			$.ajax ({
				url: 'includes/getTable2Data.php',
				method: 'GET',
				datatype:'json'
			}).done( function(data) {
				// create a JSON object from the string returned from the php script
				data = JSON.parse(data);
				//console.log(data);
				$("#dataDisplayDiv").html('');
				displayData(data, table);
			});
		}
		
		function getTable3Data(table){
			$.ajax ({
				url: 'includes/getTable3Data.php',
				method: 'GET',
				datatype:'json'
			}).done( function(data) {
				// create a JSON object from the string returned from the php script
				data = JSON.parse(data);
				//console.log(data);
				$("#dataDisplayDiv").html('');
				displayData(data, table);
			});
		}
		
		
		$("#table1Button").click( function(){
			var table = $("#table1Button").val();
			$("#refreshButton").val(table);
			getTable1Data(table);
		});
		$("#table2Button").click( function(){
			var table = $("#table2Button").val();
			$("#refreshButton").val(table);
			getTable2Data(table);
		});
		$("#table3Button").click( function(){
			var table = $("#table3Button").val();
			$("#refreshButton").val(table)
			;getTable3Data(table);
		});
		
		$("#refreshButton").click( function(){
			var table = $("#refreshButton").val();
			refresh(table);
		});
	});
</script>
</html>