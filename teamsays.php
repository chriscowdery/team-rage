<?php
     	include('config.php');
		
		mysql_connect($db_hostname, $db_user, $db_pass) or die(mysql_error());
		mysql_select_db($db_name) or die(mysql_error());
		
		$members = mysql_query("SELECT * FROM members ORDER BY name") or die(mysql_error()); 
		$rages = mysql_query("SELECT * FROM rages ORDER BY name") or die(mysql_error()); 
      ?>
      
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Team Rage</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le styles -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <link href="css/bootstrap-responsive.css" rel="stylesheet">

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
  </head>

  <body>

    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">Team Rage</a>
          <div class="nav-collapse">
            <ul class="nav">
              <li><a href="index.php">Team Status</a></li>
              <li><a href="changestatus.php">Change Status</a></li>
			  <li class="active"><a href="teamsays.php">%$#@ My Team Says</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    
    <div class="container">
          
		  <legend>Stupid stuff my teammates have said:</legend>
	
    <div class="row">
		<span class="span6">
		
		<?php
     	include('config.php');
		
		mysql_connect($db_hostname, $db_user, $db_pass) or die(mysql_error());
		mysql_select_db($db_name) or die(mysql_error());
		
		$result = mysql_query("SELECT * FROM quotes ORDER BY id DESC") or die(mysql_error()); 
		
		$i = 0;
	
		while($row = mysql_fetch_array( $result ))
		{
			$id = $row['id'];
			$memberId = $row['member_id'];
			$context = $row['context'];
			$quote = $row['quote'];
			$date = $row['date'];
			
			$nameResult = mysql_query("SELECT * FROM members WHERE id = '$memberId'");
			
			while($nameRow = mysql_fetch_array( $nameResult ))
			{
				$name = $nameRow['name'];
				
				?>
				
				
				
				<blockquote>
					<a style="float:right" class="btn btn-danger" href="deletequote.php?id=<?php echo($id) ?>"><i class="icon-trash icon-white"></i> Delete</a>
					<p><strong>"<?php echo($quote) ?>"</strong></p>
					<small>
					<?php echo($name) ?> (<?php echo($context) ?> - <?php echo($date) ?>)
					</small>
				</blockquote>
				
				<?php
			}
			
		}
		
		?>
		
		</span>
    </div>
	
	<br />
	<br />
	
	<div class="row">
    <div class="span8">
      <form class="form-horizontal" action="teamsayssub.php" method="post">
        <fieldset>
          <legend>Did someone say something dumb?</legend>
          <div class="control-group">
            <label class="control-label" for="name">Who said it?</label>
            <div class="controls">
              <select id="name" name="name">
              
              <option>(Pick One)</option>
             
             <?php
             	while($row = mysql_fetch_array( $members ))
				{
			 ?>
			 
			 	<option value="<?php echo($row['id']); ?>"><?php echo($row['name']); ?></option>
				
				<?php
				}
           
             ?>
              </select>
            </div>
          </div>
		<div class="control-group">
            <label class="control-label" for="context">What's the context?</label>
            <div class="controls">
              <input type="text" class="input-xlarge" id="context" name="context">
			  <p class="help-block">'No context' will be added automatically if you don't set anything.</p>
            </div>
          </div>
		  
		   <div class="control-group">
            <label class="control-label" for="quote">What'd he say?</label>
            <div class="controls">
              <textarea class="input-xlarge" id="quote" name="quote" rows="3"></textarea>
            </div>
          </div>
		  
          <div class="form-actions">
            <button type="submit" class="btn btn-primary"><i class="icon-fire icon-white"></i> RAGE</button>
            <button type="reset" class="btn">Just Kidding</button>
          </div>
        </fieldset>
      </form>
    </div>
	
	
  </div>


    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap-transition.js"></script>
    <script src="js/bootstrap-alert.js"></script>
    <script src="js/bootstrap-modal.js"></script>
    <script src="js/bootstrap-dropdown.js"></script>
    <script src="js/bootstrap-scrollspy.js"></script>
    <script src="js/bootstrap-tab.js"></script>
    <script src="js/bootstrap-tooltip.js"></script>
    <script src="js/bootstrap-popover.js"></script>
    <script src="js/bootstrap-button.js"></script>
    <script src="js/bootstrap-collapse.js"></script>
    <script src="js/bootstrap-carousel.js"></script>
    <script src="js/bootstrap-typeahead.js"></script>

  </body>
</html>