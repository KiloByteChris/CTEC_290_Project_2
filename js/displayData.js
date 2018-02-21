function displayData(data, table) {
	// Clear the current display and display the new json data
	var displayString = "";
	displayString += "<table>";
	// Switch statement is used to create the correct display for the table data
	switch(table) {
		case "table1":
			displayString += "<tr><th></th><th></th><th>Customer Number</th><th>Date</th><th>First Name</th><th>Last Name</th><th>City</th><th>Region</th><th>country</th></tr>";
			$.each(data, function(key, value){
				displayString += "<tr>";
				displayString += "<td><a href=\"\">Edit</a></td><td><a href=\"\">Delete</a></td><td>"+value.customer_number+"</td><td>"+value.date1+"</td><td>"+value.first_name+"</td><td>"+value.last_name+"</td><td>"+value.city_name+"</td><td>"+value.state_name+"</td><td>"+value.country_name+"</td>";
				displayString += "</tr>";
			});
			break
		case "table2":
			displayString += "<tr><th></th><th></th><th>Product Number</th><th>Date</th><th>Original Price</th><th>Regular Price</th><th>Sale Price</th><th>On Hand</th><th>Description</th></tr>";
			$.each(data, function(key, value){
				displayString += "<tr>";
				displayString += "<td><a href=\"\">Edit</a></td><td><a href=\"\">Delete</a></td><td>"+value.product_number+"</td><td>"+value.date2+"</td><td>"+value.original_price+"</td><td>"+value.regular_price+"</td><td>"+value.sale_price+"</td><td>"+value.on_hand+"</td><td>"+value.description+"</td>";
				displayString += "</tr>";
			});
			break
		case "table3":
			displayString += "<tr><th></th><th></th><th>Customer ID</th><th>Credit Card Number</th><th>Address</th><th>Number Ordered</th><th>Reference Number</th><th>Product</th><th>Description</th></tr>";
			$.each(data, function(key, value){
				displayString += "<tr>";
				displayString += "<td><a href=\"\">Edit</a></td><td><a href=\"\">Delete</a></td><td>"+value.customer_id+"</td><td>"+value.credit_card_num+"</td><td>"+value.address+"</td><td>"+value.number_ordered+"</td><td>"+value.reference_number+"</td><td>"+value.product_ordered+"</td><td>"+value.product_description+"</td>";
				displayString += "</tr>";
			});
			break
		}
	displayString += "</table>";
	// Display the table
	$("#dataDisplayDiv").append(displayString);
}