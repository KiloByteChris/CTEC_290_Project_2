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
			<div id="newRecordDiv">
				<!-- TABLE 1 FORM -->
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
				
				<!-- TABLE 2 FORM -->
				<form id="newTable2RecordForm">
				<label for="productNumber">Product Number</label><input type="text" id="productNumberInput" name="productNumber">
				<label for="date2">Date</label><input type="text\" id="date2Input\" name="date2">
				<label for="originalPrice">Original Price</label><input type="text" id="originalPriceInput" name="originalPrice">
				<label for="regularPrice">Regular Price</label><input type="text" id="regularPriceInput" name="regularPrice">
				<label for="salePrice">Sale Price</label><input type="text" id="salePriceInput" name="salePriceName">
				<label for="onHand">On Hand</label><input type="text" id="onHandInput"name="onHandName">
				<label for="description">Description</label><input type="text" id="descriptionInput"name="descriptionName">
				<input type="submit" value="Cancel" name="cancelNewRecord">
				</form>
				<button id="submitNewRecord2" value="table2">Submit Record</button>
				
				<!-- TABLE 3 FORM -->
				<form id="newTable3RecordForm">
				<label for="CustomerId">Customer ID</label><input type="text" id="CustomerIdInput" name="CustomerId">
				<label for="creditCardNum">Credit Card Number</label><input type="text" id="creditCardNumInput" name="creditCardNum">
				<label for="address">Address</label><input type="text" id="addressInput"name="addressPrice">
				<label for="numberOrdered">Number Ordered</label><input type="text" id="numberOrderedInput" name="numberOrdered">
				<label for="referenceNumber">Reference Number</label><input type="text" id="referenceNumberInput"name="referenceNumber">
				<label for="productOrdered">Product Ordered</label><input type="text" id="productOrderedInput" name="productOrdered">
				<label for="productDescription">Description</label><input type="text" id="productDescriptionInput"name="productDescription">
				<input type="submit" value="Cancel" name="cancelNewRecord">
				</form>
				<button id="submitNewRecord3" value="table3">Submit Record</button>
				
			</div>
			<div id="dataDisplayDiv"></div>
		</main>
		<?php require "includes/footer.inc.php"?>
	</div> <!-- End wrapper -->
</body>
</html>