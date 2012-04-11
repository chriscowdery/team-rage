<?php

 	// Connect to database
 	include('config.php');
	
	mysql_connect($db_hostname, $db_user, $db_pass) or die(mysql_error());
	mysql_select_db($db_name) or die(mysql_error());
	
	$memberId = mysql_real_escape_string($_POST['name']);
	$rageId = mysql_real_escape_string($_POST['rage']);
	$description = mysql_real_escape_string($_POST['description']);
	$manualImage = mysql_real_escape_string($_POST['manualImage']);
	
	if ($rageId == NULL || $rageId == "")
	{
		// Smiley / no status
		$rageId = "54";
	}
	
	$date = date("n/j/Y - g:i A");
	
	// Clear out any existing manualImage
	if ($manualImage == NULL || $manualImage == "")
	{
		$result = mysql_query("UPDATE members SET rage_id='$rageId', lastUpdated='$date', description='$description', manualImage='' WHERE id='$memberId'") or die(mysql_error());  
	}
	else
	{
		$result = mysql_query("UPDATE members SET rage_id='$rageId', lastUpdated='$date', description='$description', manualImage='$manualImage' WHERE id='$memberId'") or die(mysql_error());  
	}
	
	header("Location: index.php");

?>