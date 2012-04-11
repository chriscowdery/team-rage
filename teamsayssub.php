<?php

 	include('config.php');
	
	mysql_connect($db_hostname, $db_user, $db_pass) or die(mysql_error());
	mysql_select_db($db_name) or die(mysql_error());
	
	$memberId = mysql_real_escape_string($_POST['name']);	
	$context = mysql_real_escape_string($_POST['context']);
	$quote = mysql_real_escape_string($_POST['quote']);

	$date = date("n/j/Y");

	if ($memberId == "(Pick One)")
	{
		die('Set a member ya goof! <br /><a href="teamsays.php">Sorry, my bad.</a>');
	}
	
	if ($context == "")
	{
		$context = "No context";
	}
	
	// $result = mysql_query("UPDATE members SET rage_id='$rageId', lastUpdated='$date', description='$description', manualImage='' WHERE id='$memberId'") or die(mysql_error());
	
	$query = "INSERT INTO quotes(member_id,context,quote,date) VALUES('$memberId','$context','$quote','$date')";
	//echo($query);
	$result = mysql_query($query) or die(mysql_error());  
	
	header("Location: teamsays.php");

?>