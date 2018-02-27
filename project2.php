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
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- CSS -->
	<link href="css/reset.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">

	<!-- JQUERY -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<!-- JQUERY UI -->
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
	
	<!-- project2.js -->
	<script src="js/project2.js"></script>
	
	<script>
$( function() {
    $( "#tabs" ).tabs();
  } );
</script>
	
</head>
<body>
	<div id="wrapper">
		<?php require "includes/header.inc.php";?>
		<main>
		
		<div id="tabs">
		<nav>
			<ul>
			<li><a href="#tabs-1" id="table1Button">Table 1</a></li>
			<li><a href="#tabs-2" id="table2Button">Table 2</a></li>
			<li><a href="#tabs-3" id="table3Button">Table 3</a></li>
			</ul>
		</nav>
			<button name="refresh" value="table1" id="refreshButton">Show Table</button>
			<button name="newRecord" value="newRecord" id="newRecordButton">Create New Record</button>
			<!-- Div for Displaying errors errors -->
			<div id="statusDiv"></div>
			
			<!-- New Record Forms -->
			<div id="newRecordDiv">
				<!-- TABLE 1 FORM -->
				<div id="tabs-1">
					<form id="newTable1RecordForm">
					<label for="customerNumber">Customer Number</label><input type="text" id="customerNumberInput" name="customerNumber">
					<label for="date1">Date</label><input type="text" id="date1Input" name="date1">
					<label for="firstName">First Name</label><input type="text" id="firstNameInput"name="firstName">
					<label for="lastName">Last Name</label><input type="text" id="lastNameInput" name="lastName">
					<label for="cityName">City</label><input type="text" id="cityNameInput"name="cityName">
					<label for="regionName">Region</label><input type="text" id="regionNameInput"name="regionName">
					<label for="countryName">Country</label><input type="text" id="countryNameInput"name="countryName">
					<input type="submit" value="Cancel" name="cancelNewRecord">
					</form>
					<button id="submitNewRecord1" value="table1">Submit Record</button>
				</div>
				
				<!-- TABLE 2 FORM -->
				<div id="tabs-2">
					<form id="newTable2RecordForm">
					<label for="productNumber">Product Number</label><input type="text" id="productNumberInput" name="productNumber">
					<label for="date2">Date</label><input type="text" id="date2Input" name="date2">
					<label for="originalPrice">Original Price</label><input type="text" id="originalPriceInput" name="originalPrice">
					<label for="regularPrice">Regular Price</label><input type="text" id="regularPriceInput" name="regularPrice">
					<label for="salePrice">Sale Price</label><input type="text" id="salePriceInput" name="salePrice">
					<label for="onHand">On Hand</label><input type="text" id="onHandInput" name="onHand">
					<label for="description">Description</label><input type="text" id="descriptionInput" name="description">
					<input type="submit" value="Cancel" name="cancelNewRecord">
					</form>
					<button id="submitNewRecord2" value="table2">Submit Record</button>
				</div>
				
				<!-- TABLE 3 FORM -->
				<div id="tabs-3">
				<form id="newTable3RecordForm">
				<label for="customerId">Customer ID</label><input type="text" id="customerIdInput" name="customerId">
				<label for="creditCardNum">Credit Card Number</label><input type="text" id="creditCardNumInput" name="creditCardNum">
				<label for="address">Address</label><input type="text" id="addressInput" name="address">
				<label for="numberOrdered">Number Ordered</label><input type="text" id="numberOrderedInput" name="numberOrdered">
				<label for="referenceNumber">Reference Number</label><input type="text" id="referenceNumberInput" name="referenceNumber">
				<label for="productOrdered">Product Ordered</label><input type="text" id="productOrderedInput" name="productOrdered">
				<label for="productDescription">Description</label><input type="text" id="productDescriptionInput" name="productDescription">
				<input type="submit" value="Cancel" name="cancelNewRecord">
				</form>
				<button id="submitNewRecord3" value="table3">Submit Record</button>	
				</div>
			</div>
			<!-- Display the Database -->
			<div id="dataDisplayDiv"></div>
		</div> <!-- End tabs -->
		</main>
		<?php require "includes/footer.inc.php"?>
	</div> <!-- End wrapper -->
</body>
</html>