<?php

 	include('config.php');
	
	mysql_connect($db_hostname, $db_user, $db_pass) or die(mysql_error());
	mysql_select_db($db_name) or die(mysql_error());
	
	$id = mysql_real_escape_string($_GET['id']);

	// $result = mysql_query("UPDATE members SET rage_id='$rageId', lastUpdated='$date', description='$description', manualImage='' WHERE id='$memberId'") or die(mysql_error());
	
	$query = "DELETE FROM quotes WHERE id = '$id'";
	//echo($query);
	$result = mysql_query($query) or die(mysql_error());  
	
	header("Location: teamsays.php");

?>