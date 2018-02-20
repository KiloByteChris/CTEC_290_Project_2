function displayData(data) {
	var displayString = "";
	displayString += "<table>";
	$.each(data, function(key, value){
		displayString += "<tr>";
		//"<td>"++"</td>
		var lastName = value.last_name;
		displayString += "<td><a href=\"\">Edit</a></td><td><a href=\"\">Delete</a></td><td>"+value.customer_number+"</td><td>"+value.date1+"</td><td>"+value.first_name+"</td><td>"+value.last_name+"</td><td>"+value.city_name+"</td><td>"+value.state_name+"</td><td>"+value.country_name+"</td>";
		displayString += "</tr>";
	});
	displayString += "</table>";
	$("#dataDisplayDiv").append(displayString);
}