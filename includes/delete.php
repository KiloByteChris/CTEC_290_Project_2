<?php
function deleteData($connection) {
	$sql = "DELETE FROM table1 WHERE last_name='{$_GET['delete']}' LIMIT 1";
		
		$connection->query($sql);
}
?>