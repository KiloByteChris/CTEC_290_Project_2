$(document).ready( function() {
	//Hide forms 
	$("#newRecordDiv").hide();
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
					displayString += "<td><button class=\"editButton\" id="+value.customer_number+" value="+value.customer_number+">Edit</button></td><td><button class=\"deleteButton\" id="+value.customer_number+" value="+value.customer_number+">Delete</button></td><td>"+value.customer_number+"</td><td>"+value.date1+"</td><td>"+value.first_name+"</td><td>"+value.last_name+"</td><td>"+value.city_name+"</td><td>"+value.state_name+"</td><td>"+value.country_name+"</td>";
					displayString += "</tr>";
				});
				break
			case "table2":
				displayString += "<tr><th></th><th></th><th>Product Number</th><th>Date</th><th>Original Price</th><th>Regular Price</th><th>Sale Price</th><th>On Hand</th><th>Description</th></tr>";
				$.each(data, function(key, value){
					displayString += "<tr>";
					displayString += "<td><button class=\"editButton\" id="+value.product_number+" value="+value.product_number+">Edit</button></td><td><button class=\"deleteButton\" id="+value.product_number+" value="+value.product_number+">Delete</button></td><td>"+value.product_number+"</td><td>"+value.date2+"</td><td>"+value.original_price+"</td><td>"+value.regular_price+"</td><td>"+value.sale_price+"</td><td>"+value.on_hand+"</td><td>"+value.description+"</td>";
					displayString += "</tr>";
				});
				break
			case "table3":
				displayString += "<tr><th></th><th></th><th>Customer ID</th><th>Credit Card Number</th><th>Address</th><th>Number Ordered</th><th>Reference Number</th><th>Product</th><th>Description</th></tr>";
				$.each(data, function(key, value){
					displayString += "<tr>";
					displayString += "<td><button class=\"editButton\" id="+value.customer_id+" value="+value.customer_id+">Edit</button></td><td><button class=\"deleteButton\" id="+value.customer_id+" value="+value.customer_id+">Delete</button></td><td>"+value.customer_id+"</td><td>"+value.credit_card_num+"</td><td>"+value.address+"</td><td>"+value.number_ordered+"</td><td>"+value.reference_number+"</td><td>"+value.product_ordered+"</td><td>"+value.product_description+"</td>";
					displayString += "</tr>";
				});
				break
			}
		displayString += "</table>";
		// Display the table
		$("#dataDisplayDiv").html("");
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
					data = JSON.parse(data);
					if(data.status == 1){
						$("#statusDiv").html("<p>Create record was successful.</p>");
					}else if (data.status == 2){
						$("#statusDiv").html("<p>There was a problem with creating the record.</p>");
					} 	
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
					data = JSON.parse(data);
					if(data.status == 1){
						$("#statusDiv").html("<p>Create record was successful.</p>");
					}else if (data.status == 2){
						$("#statusDiv").html("<p>There was a problem with creating the record.</p>");
					} 
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
					data = JSON.parse(data);
					if(data.status == 1){
						$("#statusDiv").html("<p>Create record was successful.</p>");
					}else if (data.status == 2){
						$("#statusDiv").html("<p>There was a problem with creating the record.</p>");
					} 
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
				// Create an object with an ID, then create json so it can be sent to the php api
				var deleteRecordData = {"id": deleteID};
				deleteRecordData = JSON.stringify(deleteRecordData);
				deleteRecordData = JSON.parse(deleteRecordData);
				$.ajax ({
					url: "includes/deleteTable1Record.php",
					method: "POST",
					data: deleteRecordData,
					datatype: "json"
				}).done( function(data){
					// Show the status of the delete request
					data = JSON.parse(data);
					if(data.status == 1){
						$("#statusDiv").html("<p>Delete record was successful.</p>");
					}else if (data.status == 2){
						$("#statusDiv").html("<p>There was a problem with deleting the record.</p>");
					}
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
					data = JSON.parse(data);
					if(data.status == 1){
						$("#statusDiv").html("<p>Delete record was successful.</p>");
					}else if (data.status == 2){
						$("#statusDiv").html("<p>There was a problem with deleting the record.</p>");
					}
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
					data = JSON.parse(data);
					if(data.status == 1){
						$("#statusDiv").html("<p>Delete record was successful.</p>");
					}else if (data.status == 2){
						$("#statusDiv").html("<p>There was a problem with deleting the record.</p>");
					}
				}); 
				break		
		}
	}
	/*------------------------------------------------------------------
	---------------------- EDIT  RECORD ------------------------------
	------------------------------------------------------------------*/
	function editRecord(editID, table) {
		switch(table){
			case "table1":
				var editRecordData = {"id": editID};
				editRecordData = JSON.stringify(editRecordData);
				editRecordData = JSON.parse(editRecordData);
				$.ajax ({
					url: "includes/editTable1Record.php",
					method: "POST",
					data: editRecordData,
					datatype: "json"
				}).done( function(data){
					console.log(data);
					data = JSON.parse(data);
					displayEditData(data, table);
					
				}); 
				break
				
			case "table2":
				var editRecordData = {"id": editID};
				editRecordData = JSON.stringify(editRecordData);
				editRecordData = JSON.parse(editRecordData);
				$.ajax ({
					url: "includes/editTable2Record.php",
					method: "POST",
					data: editRecordData,
					datatype: "json"
				}).done( function(data){
					console.log(data);
					data = JSON.parse(data);
					displayEditData(data, table);
					
				});
				break
				
			case "table3":
				var editRecordData = {"id": editID};
				editRecordData = JSON.stringify(editRecordData);
				editRecordData = JSON.parse(editRecordData);
				$.ajax ({
					url: "includes/editTable3Record.php",
					method: "POST",
					data: editRecordData,
					datatype: "json"
				}).done( function(data){
					console.log(data);
					data = JSON.parse(data);
					displayEditData(data, table);
				});
				break
				
		}	
	}
	
	function displayEditData (data, table) {
		// Function takes the json data and changes the value of the text input so the record can be edited
		switch(table){
			case "table1":
				$("#customerNumberInput").val(data[0].customer_number);
				$("#date1Input").val(data[0].date1);
				$("#firstNameInput").val(data[0].first_name);
				$("#lastNameInput").val(data[0].last_name);
				$("#cityNameInput").val(data[0].city_name);
				$("#regionNameInput").val(data[0].state_name);
				$("#countryNameInput").val(data[0].country_name);
				$("#submitNewRecord1").attr("id", "updateTable1").val(data[0].customer_number).text("Update Record");
				break
					
			case "table2":		
				$("#productNumberInput").val(data[0].product_number);
				$("#date2Input").val(data[0].date2);
				$("#originalPriceInput").val(data[0].original_price);
				$("#regularPriceInput").val(data[0].regular_price);
				$("#salePriceInput").val(data[0].sale_price);
				$("#onHandInput").val(data[0].on_hand);
				$("#descriptionInput").val(data[0].description);
				$("#submitNewRecord2").attr("id", "updateTable2").val(data[0].product_number).text("Update Record");
				break
					
			case "table3":		
				$("#customerIdInput").val(data[0].customer_id);
				$("#creditCardNumInput").val(data[0].credit_card_num);
				$("#addressInput").val(data[0].address);
				$("#numberOrderedInput").val(data[0].number_ordered);
				$("#referenceNumberInput").val(data[0].reference_number);
				$("#productOrderedInput").val(data[0].product_ordered);
				$("#productDescriptionInput").val(data[0].product_description);
				$("#submitNewRecord3").attr("id", "updateTable3").val(data[0].customer_id).text("Update Record");
				break	
		}
	}
	/*------------------------------------------------------------------
	---------------------- UPDATE RECORD -------------------------------
	------------------------------------------------------------------*/
	function updateRecord(updateID, table) {
		switch(table){
			case "table1":
				var updateRecordData = $("#newTable1RecordForm").serializeArray();
				// Add the original id to the array
				var updateRecordDataID = {"name": "id", "value": updateID};
				updateRecordData.push(updateRecordDataID);
				// Turn the array into json
				updateRecordData = JSON.stringify(updateRecordData);
				updateRecordData = JSON.parse(updateRecordData);
				$.ajax ({
					url: "includes/updateTable1Record.php",
					method: "POST",
					data: updateRecordData,
					datatype: "json"
				}).done( function(data){
					data = JSON.parse(data);
					if(data.status == 1){
						$("#statusDiv").html("<p>The update was successful.</p>");
					}else if (data.status == 2){
						$("#statusDiv").html("<p>There was a problem with the update.</p>");
					}
				}); 
				break
				
			case "table2":
				var updateRecordData = $("#newTable2RecordForm").serializeArray();
				// Add the original id to the array
				var updateRecordDataID = {"name": "id", "value": updateID};
				updateRecordData.push(updateRecordDataID);
				// Turn the array into json
				updateRecordData = JSON.stringify(updateRecordData);
				updateRecordData = JSON.parse(updateRecordData);
				$.ajax ({
					url: "includes/updateTable2Record.php",
					method: "POST",
					data: updateRecordData,
					datatype: "json"
				}).done( function(data){
					console.log(data);
					data = JSON.parse(data);
					if(data.status == 1){
						$("#statusDiv").html("<p>The update was successful.</p>");
					}else if (data.status == 2){
						$("#statusDiv").html("<p>There was a problem with the update.</p>");
					}
				}); 
				break
				
			case "table3":
				var updateRecordData = $("#newTable3RecordForm").serializeArray();
				// Add the original id to the array
				var updateRecordDataID = {"name": "id", "value": updateID};
				updateRecordData.push(updateRecordDataID);
				// Turn the array into json
				updateRecordData = JSON.stringify(updateRecordData);
				updateRecordData = JSON.parse(updateRecordData);
				$.ajax ({
					url: "includes/updateTable3Record.php",
					method: "POST",
					data: updateRecordData,
					datatype: "json"
				}).done( function(data){
					data = JSON.parse(data);
					if(data.status == 1){
						$("#statusDiv").html("<p>The update was successful.</p>");
					}else if (data.status == 2){
						$("#statusDiv").html("<p>There was a problem with the update.</p>");
					}
				}); 
				break
				
		}
	}	
	/*------------------------------------------------------------------
	---------------------- BUTTON CLICKS -------------------------------
	------------------------------------------------------------------*/
	// TABLE SELECT
	$("#table1Button").click( function(){
		$("#statusDiv").html('');
		var table = "table1";
		$("#refreshButton").val(table);
		getTableData(table);
	});
	$("#table2Button").click( function(){
		$("#statusDiv").html('');
		var table = "table2";
		$("#refreshButton").val(table);
		getTableData(table);
	});
	$("#table3Button").click( function(){
		$("#statusDiv").html('');
		var table = "table3";
		$("#refreshButton").val(table);
		getTableData(table);
	});
	// SHOW CURRENT TABLE
	$("#refreshButton").click( function(){
		$("#statusDiv").html('');
		var table = $("#refreshButton").val();
		$('#dataDisplayDiv').show();
		$("#newRecordDiv").hide();
		refresh(table);
	});
	// CREATE A NEW RECORD
	$("#newRecordButton").click( function(){
		$("#statusDiv").html('');
		var table = $("#refreshButton").val();
		$('#dataDisplayDiv').hide();
		$("#newRecordDiv").show();
	});
	// SUBMIT NEW RECORD
	$("#newRecordDiv").on("click", "#submitNewRecord1", function(){
		$("#statusDiv").html('');
		var table = "table1";
		saveNewRecord(table);
	});
	$("#newRecordDiv").on("click", "#submitNewRecord2", function(){
		$("#statusDiv").html('');
		var table = "table2";
		saveNewRecord(table);
	});
	$("#newRecordDiv").on("click", "#submitNewRecord2", function(){
		$("#statusDiv").html('');
		var table = "table2";
		saveNewRecord(table);
	});
	// DELETE RECORD
	$("#dataDisplayDiv").on("click", ".deleteButton", function(){
		$("#statusDiv").html('');
		var deleteID = this.value;
		var table = $("#refreshButton").val();
		deleteRecord(deleteID, table);
	});
	// EDIT RECORD
	$("#dataDisplayDiv").on("click", ".editButton", function(){
		$("#statusDiv").html('');
		var editID = this.value;
		var table = $("#refreshButton").val();
		$('#dataDisplayDiv').hide();
		$("#newRecordDiv").show();
		editRecord(editID, table);
	});
	// UPDATE RECORD
	$("#newRecordDiv").on("click", "#updateTable1", function(){
		$("#statusDiv").html('');
		event.preventDefault();
		var updateID = this.value;
		var table = $("#refreshButton").val();
		updateRecord(updateID, table);
	});
	$("#newRecordDiv").on("click", "#updateTable2", function(){
		$("#statusDiv").html('');
		event.preventDefault();
		var updateID = this.value;
		var table = $("#refreshButton").val();
		updateRecord(updateID, table);
	});
	$("#newRecordDiv").on("click", "#updateTable3", function(){
		$("#statusDiv").html('');
		event.preventDefault();
		var updateID = this.value;
		var table = $("#refreshButton").val();
		updateRecord(updateID, table);
	});
});