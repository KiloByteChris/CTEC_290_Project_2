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
			<button name="refresh" class="navButtons" value="table1" id="refreshButton">Show Table</button>
			<button name="newRecord" class="navButtons" value="newRecord" id="newRecordButton">Create New Record</button>
			<!-- Div for Displaying errors errors -->
			<div id="statusDiv"></div>
			
			<!-- New Record Forms -->
			<div id="newRecordDiv">
				<!-- TABLE 1 FORM -->
				<div id="tabs-1">
					<form id="newTable1RecordForm">
					<label for="customerNumberInput">Customer Number</label><input type="text" id="customerNumberInput" name="customerNumber">
					<label for="date1Input">Date</label><input type="text" id="date1Input" name="date1">
					<label for="firstNameInput">First Name</label><input type="text" id="firstNameInput" name="firstName">
					<label for="lastNameInput">Last Name</label><input type="text" id="lastNameInput" name="lastName">
					<label for="cityNameInput">City</label><input type="text" id="cityNameInput" name="cityName">
					<label for="regionNameInput">Region</label><input type="text" id="regionNameInput" name="regionName">
					<label for="countryNameInput">Country</label><input type="text" id="countryNameInput" name="countryName">
					<input type="submit" class="cancelButton" value="Cancel" name="cancelNewRecord">
					</form>
					<button id="submitNewRecord1" class="submitButton" value="table1">Submit Record</button>
				</div>
				
				<!-- TABLE 2 FORM -->
				<div id="tabs-2">
					<form id="newTable2RecordForm">
					<label for="productNumberInput">Product Number</label><input type="text" id="productNumberInput" name="productNumber">
					<label for="date2Input">Date</label><input type="text" id="date2Input" name="date2">
					<label for="originalPriceInput">Original Price</label><input type="text" id="originalPriceInput" name="originalPrice">
					<label for="regularPriceInput">Regular Price</label><input type="text" id="regularPriceInput" name="regularPrice">
					<label for="salePriceInput">Sale Price</label><input type="text" id="salePriceInput" name="salePrice">
					<label for="onHandInput">On Hand</label><input type="text" id="onHandInput" name="onHand">
					<label for="descriptionInput">Description</label><input type="text" id="descriptionInput" name="description">
					<input type="submit" class="cancelButton" value="Cancel" name="cancelNewRecord">
					</form>
					<button id="submitNewRecord2" class="submitButton" value="table2">Submit Record</button>
				</div>
				
				<!-- TABLE 3 FORM -->
				<div id="tabs-3">
				<form id="newTable3RecordForm">
				<label for="customerIdInput">Customer ID</label><input type="text" id="customerIdInput" name="customerId">
				<label for="creditCardNumInput">Credit Card Number</label><input type="text" id="creditCardNumInput" name="creditCardNum">
				<label for="addressInput">Address</label><input type="text" id="addressInput" name="address">
				<label for="numberOrderedInput">Number Ordered</label><input type="text" id="numberOrderedInput" name="numberOrdered">
				<label for="referenceNumberInput">Reference Number</label><input type="text" id="referenceNumberInput" name="referenceNumber">
				<label for="productOrderedInput">Product Ordered</label><input type="text" id="productOrderedInput" name="productOrdered">
				<label for="productDescriptionInput">Description</label><input type="text" id="productDescriptionInput" name="productDescription">
				<input type="submit" class="cancelButton" value="Cancel" name="cancelNewRecord">
				</form>
				<button id="submitNewRecord3" class="submitButton" value="table3">Submit Record</button>	
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