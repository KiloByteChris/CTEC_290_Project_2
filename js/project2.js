$(document).ready( function() {
	/*------------------------------------------------------------------
	---------------------- READ DATA FUNCTIONS--------------------------
	------------------------------------------------------------------*/
	function refresh(table) {
		// Refresh the current database display
		var refreshURL = "";
		switch(table) {
			case "table1":
				refreshURL = 'includes/getTable1Data.php';
				break
			case "table2":
				refreshURL = 'includes/getTable2Data.php';
				break
			case "table3":
				refreshURL = 'includes/getTable3Data.php';
				break
		} 
		$.ajax ({
			url: refreshURL,
			method: 'GET',
			datatype:'json'
		}).done( function(data) {
			// create a JSON object from the string returned from the php script
			data = JSON.parse(data);
			displayData(data, table);
		});
	}
	
	function getTableData(table){
		// Read data from the selected table in the database 
		switch(table) {
			case "table1":
				URL = 'includes/getTable1Data.php';
				break
			case "table2":
				URL = 'includes/getTable2Data.php';
				break
			case "table3":
				URL = 'includes/getTable3Data.php';
				break
		} 
		$.ajax ({
			url: URL,
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
	
	function displayData(data, table) {
		// Display the data from the database
		var displayString = "";
		displayString += "<table>";
		switch(table) {
			case "table1":
				displayString += "<tr><th></th><th></th><th>Customer Number</th><th>Date</th><th>First Name</th><th>Last Name</th><th>City</th><th>Region</th><th>country</th></tr>";
				$.each(data, function(key, value){
					displayString += "<tr>";
					displayString += "<td><button class=\"editButton\">Edit</button></td><td><button class=\"deleteButton\" id="+value.customer_number+" value="+value.customer_number+">Delete</button></td><td>"+value.customer_number+"</td><td>"+value.date1+"</td><td>"+value.first_name+"</td><td>"+value.last_name+"</td><td>"+value.city_name+"</td><td>"+value.state_name+"</td><td>"+value.country_name+"</td>";
					displayString += "</tr>";
				});
				break
			case "table2":
				displayString += "<tr><th></th><th></th><th>Product Number</th><th>Date</th><th>Original Price</th><th>Regular Price</th><th>Sale Price</th><th>On Hand</th><th>Description</th></tr>";
				$.each(data, function(key, value){
					displayString += "<tr>";
					displayString += "<td><a href=\"\">Edit</a></td><td><button class=\"deleteButton\" id="+value.product_number+" value="+value.product_number+">Delete</button></td><td>"+value.product_number+"</td><td>"+value.date2+"</td><td>"+value.original_price+"</td><td>"+value.regular_price+"</td><td>"+value.sale_price+"</td><td>"+value.on_hand+"</td><td>"+value.description+"</td>";
					displayString += "</tr>";
				});
				break
			case "table3":
				displayString += "<tr><th></th><th></th><th>Customer ID</th><th>Credit Card Number</th><th>Address</th><th>Number Ordered</th><th>Reference Number</th><th>Product</th><th>Description</th></tr>";
				$.each(data, function(key, value){
					displayString += "<tr>";
					displayString += "<td><a href=\"\">Edit</a></td><td><button class=\"deleteButton\" id="+value.customer_id+" value="+value.customer_id+">Delete</button></td><td>"+value.customer_id+"</td><td>"+value.credit_card_num+"</td><td>"+value.address+"</td><td>"+value.number_ordered+"</td><td>"+value.reference_number+"</td><td>"+value.product_ordered+"</td><td>"+value.product_description+"</td>";
					displayString += "</tr>";
				});
				break
			}
		displayString += "</table>";
		// Display the table
		$("#dataDisplayDiv").append(displayString);
	}
	
	/* function newRecordForm(table) {
		var newRecordFormString = '';
		switch(table){
			case "table1":
				$("#newRecordDiv").html('');
				newRecordFormString += "<form id=\"newTable1RecordForm\">";
				newRecordFormString += "<label for=\"customerNumber\">Customer Number</label><input type=\"text\" id=\"customerNumberInput\" name=\"customerNumber\">";
				newRecordFormString += "<label for=\"date1Name\">Date</label><input type=\"text\" id=\"date1Input\" for=\"date1Name\">";
				newRecordFormString += "<label for=\"firstName\">First Name</label><input type=\"text\" id=\"firstNameInput\"name=\"firstName\">";
				newRecordFormString += "<label for=\"lastName\">Last Name</label><input type=\"text\" id=\"lastNameInput\" name=\"lastName\">";
				newRecordFormString += "<label for=\"cityName\">City</label><input type=\"text\" id=\"cityNameInput\"name=\"cityName\">";
				newRecordFormString += "<label for=\"regionName\">Region</label><input type=\"text\" id=\"regionNameInput\"name=\"regionName\">";
				newRecordFormString += "<label for=\"countryName\">Country</label><input type=\"text\" id=\"countryNameInput\"name=\"countryName\">";
				
				newRecordFormString += "<input type=\"submit\" value=\"Cancel\" name=\"cancelNewRecord\">";
				newRecordFormString += "</form>";
				newRecordFormString += "<button id=\"submitNewRecord\">Submit Record</button>";
				$("#newRecordDiv").append(newRecordFormString);
				break
			
			case "table2":
				$("#newRecordDiv").html('');
				newRecordFormString += "<form id=\"newTable2RecordForm\">";
				newRecordFormString += "<label for=\"productNumber\">Product Number</label><input type=\"text\" id=\"productNumberInput\" name=\"productNumber\">";
				newRecordFormString += "<label for=\"date2Name\">Date</label><input type=\"text\" id=\"date2Input\" for=\"date2Name\">";
				newRecordFormString += "<label for=\"originalPrice\">Original Price</label><input type=\"text\" id=\"originalPriceInput\"name=\"originalPrice\">";
				newRecordFormString += "<label for=\"regularPrice\">Regular Price</label><input type=\"text\" id=\"regularPriceInput\" name=\"regularPrice\">";
				newRecordFormString += "<label for=\"salePrice\">Sale Price</label><input type=\"text\" id=\"salePriceInput\"name=\"salePriceName\">";
				newRecordFormString += "<label for=\"onHand\">On Hand</label><input type=\"text\" id=\"onHandInput\"name=\"onHandName\">";
				newRecordFormString += "<label for=\"description\">Description</label><input type=\"text\" id=\"descriptionInput\"name=\"descriptionName\">";
				
				newRecordFormString += "<input type=\"submit\" value=\"Cancel\" name=\"cancelNewRecord\">";
				newRecordFormString += "</form>";
				newRecordFormString += "<button id=\"submitNewRecord\">Submit Record</button>";
				$("#newRecordDiv").append(newRecordFormString);
				break
			
			case "table3":
				$("#newRecordDiv").html('');
				newRecordFormString += "<form id=\"newTable3RecordForm\">";
				newRecordFormString += "<label for=\"CustomerId\">Customer ID</label><input type=\"text\" id=\"CustomerIdInput\" name=\"CustomerId\">";
				newRecordFormString += "<label for=\"creditCardNum\">Credit Card Number</label><input type=\"text\" id=\"creditCardNumInput\" for=\"creditCardNum\">";
				newRecordFormString += "<label for=\"address\">Address</label><input type=\"text\" id=\"addressInput\"name=\"addressPrice\">";
				newRecordFormString += "<label for=\"numberOrdered\">Number Ordered</label><input type=\"text\" id=\"numberOrderedInput\" name=\"numberOrdered\">";
				newRecordFormString += "<label for=\"referenceNumber\">Reference Number</label><input type=\"text\" id=\"referenceNumberInput\"name=\"referenceNumber\">";
				newRecordFormString += "<label for=\"productOrdered\">Product Ordered</label><input type=\"text\" id=\"productOrderedInput\"name=\"productOrdered\">";
				newRecordFormString += "<label for=\"productDescription\">Description</label><input type=\"text\" id=\"productDescriptionInput\"name=\"productDescription\">";
				
				newRecordFormString += "<input type=\"submit\" value=\"Cancel\" name=\"cancelNewRecord\">";
				newRecordFormString += "</form>";
				newRecordFormString += '<button id="submitNewRecord">Submit Record</button>';
				newRecordFormString += "<button id=\"newButton\">New Button</button>";
				
				$("#newRecordDiv").append(newRecordFormString);
				break
			
		}
	} */
	
	/*------------------------------------------------------------------
	---------------------- CREATE NEW RECORD----------------------------
	------------------------------------------------------------------*/
	function saveNewRecord(table){
		switch(table){
			case "table1":
				var newRecordData = $("#newTable1RecordForm").serializeArray();
				newRecordData = JSON.stringify(newRecordData);
				newRecordData = JSON.parse(newRecordData);
				$.ajax ({
					url: "includes/saveTable1Record.php",
					method: "POST",
					data: newRecordData,
					datatype: "json"
				}).done( function(data){
					console.log(data);
				}); 
				break
				
			case "table2":
				var newRecordData = $("#newTable2RecordForm").serializeArray();
				newRecordData = JSON.stringify(newRecordData);
				newRecordData = JSON.parse(newRecordData);
				$.ajax ({
					url: "includes/saveTable2Record.php",
					method: "POST",
					data: newRecordData,
					datatype: "json"
				}).done( function(data){
					console.log(data);
				}); 
				break
				
			case "table3":
				var newRecordData = $("#newTable3RecordForm").serializeArray();
				newRecordData = JSON.stringify(newRecordData);
				newRecordData = JSON.parse(newRecordData);
				$.ajax ({
					url: "includes/saveTable3Record.php",
					method: "POST",
					data: newRecordData,
					datatype: "json"
				}).done( function(data){
					console.log(data);
				}); 
				break
				
		}
	}
	/*------------------------------------------------------------------
	---------------------- DELETE  RECORD ------------------------------
	------------------------------------------------------------------*/
	function deleteRecord(deleteID, table) {
		switch(table){
			case "table1":
				var deleteRecordData = {"id": deleteID};
				deleteRecordData = JSON.stringify(deleteRecordData);
				deleteRecordData = JSON.parse(deleteRecordData);
				$.ajax ({
					url: "includes/deleteTable1Record.php",
					method: "POST",
					data: deleteRecordData,
					datatype: "json"
				}).done( function(data){
					console.log(data);
				}); 
				break
				
			case "table2":
				var deleteRecordData = {"id": deleteID};
				deleteRecordData = JSON.stringify(deleteRecordData);
				deleteRecordData = JSON.parse(deleteRecordData);
				$.ajax ({
					url: "includes/deleteTable2Record.php",
					method: "POST",
					data: deleteRecordData,
					datatype: "json"
				}).done( function(data){
					console.log(data);
				}); 
				break
				
			case "table3":
				var deleteRecordData = {"id": deleteID};
				deleteRecordData = JSON.stringify(deleteRecordData);
				deleteRecordData = JSON.parse(deleteRecordData);
				$.ajax ({
					url: "includes/deleteTable3Record.php",
					method: "POST",
					data: deleteRecordData,
					datatype: "json"
				}).done( function(data){
					console.log(data);
				}); 
				break
				
		}
	}
	
	/*------------------------------------------------------------------
	---------------------- BUTTON CLICKS -------------------------------
	------------------------------------------------------------------*/
	// TABLE SELECT
	$("#table1Button").click( function(){
		var table = $("#table1Button").val();
		$("#refreshButton").val(table);
		getTableData(table);
	});
	$("#table2Button").click( function(){
		var table = $("#table2Button").val();
		$("#refreshButton").val(table);
		getTableData(table);
	});
	$("#table3Button").click( function(){
		var table = $("#table3Button").val();
		$("#refreshButton").val(table);
		getTableData(table);
	});
	// REFRESH CURRENT TABLE
	$("#refreshButton").click( function(){
		var table = $("#refreshButton").val();
		refresh(table);
		console.log("hello");
	});
	// CREATE A NEW RECORD
	$("#newRecordButton").click( function(){
		var table = $("#refreshButton").val();
	});
	// SUBMIT NEW RECORD
	$("#submitNewRecord1").click( function(){
		var table = "table1";
		saveNewRecord(table);
	});
	$("#submitNewRecord2").click( function(){	
		var table = "table2";
		saveNewRecord(table);
	});
	$("#submitNewRecord3").click( function(){
		var table = "table3";
		saveNewRecord(table);
	});
	// DELETE RECORD
	$("#dataDisplayDiv").on("click", ".deleteButton", function(){
		var deleteID = this.value;
		var table = $("#refreshButton").val();
		deleteRecord(deleteID, table);
	});
});