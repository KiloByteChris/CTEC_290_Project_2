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

	<!-- JQUERY -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<?php	
 		//open connection to mysql db
 		$connection = mysqli_connect("localhost", "root", "", "ctec290_project_2") or die("Error " . mysqli_error($connection));
 		
 		if($_SERVER["REQUEST_METHOD"] == "POST") {

 			$table = $_POST['tableSelect'];
 			$sql = "select * from " . $_POST['tableSelect'] ." ";
 			$result = mysqli_query($connection, $sql);
 			print_r($result);

 			$dataArray = array();
 			while($row = mysqli_fetch_assoc($result)){
 				echo $row['customer_number'];
 				dataArray[] = $row;
 			}

 		}


	?>

	<script>
	function updateTableSelect() {
		var table = $('#tableSelect').val();
		
		switch(table){
			case "table1":
				console.log("1");
				break
			case "table2":
				console.log("2");
				break
			case "table2":
				console.log("2");
				break
		}
	}
	</script>
</head>
<body>
	<header>
		<h1>Project 2 - Create an API</h1>
	</header>
	<main>
		<!-- select box to select the table -->
		<!-- <h2>Which table would you like to use?</h2>
		<select id="tableSelect">
			<option value="table1">Table1</option>
			<option value="table2">Table2</option>
			<option value="table3">Table3</option>
		</select> -->
		<!-- <button id="tableSelectButton" onclick="updateTableSelect()" value="tableSelect">Select Table</button> -->

		<div id="formDiv">
		</div>
		<form id="tableSelectForm" method="POST" action="project2.php">
			<h2>Which table would you like to use?</h2>
			<select id="tableSelect" name="tableSelect">
				<option value="table1">Table1</option>
				<option value="table2">Table2</option>
				<option value="table3">Table3</option>
			</select>
			<input type="submit" value="Select Table" name="selectTable" >
		</form>
	</main>
	<footer>
		<p>Chris McGuire</p>
	</footer>
</body>
</html>