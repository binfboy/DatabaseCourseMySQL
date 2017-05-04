<?php
/* scFAQs.php
This is a comment. Comments are not displayed in the browser.
To run it as a php file:
http://localhost/CourseId/scFAQs.php
*/
?>
<?php
/*
	$dbhost ="localhost";
	$dbuser = "root";
	$dbpass = "";
	$dbname = "sakila";
	$connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
	// Test if connection occurred.
	if (mysqli_connect_errno()){
		die("Database connection failed: " .
		mysqli_connect_error() .
		" (" . mysqli_connect_errno() . ")"
		);
	}
*/
//var_dump($_POST);
if (isset($_POST["submit1"]) && !empty($_POST["question"])) 
{
	require_once "scDbConnection.php";
	$question = $_POST["question"];
	//echo ($question);
}
?>
<?php
// use a stored procedure to get the data from db
if(!empty($connection))
{
	$query = 'call usp_FAQs(' . '"' . $question . '")';
	//echo $query."<br/>";
	$result = mysqli_query($connection, $query);
	if (!$result)
	{
		die("Database query failed.");
	}

}		
?>
<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset="UTF-8" /> 
    <title>
        scFAQs.php
    </title>
    <link rel="stylesheet" type="text/css" HREF="StyleSheets.css" >
</head>
<body>
<h1>
    Use Sakila Database
</h1>
<br>
<hr>
<form name="form1" method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" >
<p> Select one of the frequently asked questions: </p>
<p> 	
	 <input type="radio" name="question" value="1" style ="margin-left:20px"
	 <?php	
		if(!empty($connection) && $question == 1)
		{
			echo " checked";
		}
	  ?>
	 /> Who owed more than $10? <br>
	<input type="radio" name="question" value="2" style ="margin-left:20px"
	<?php	
		if(!empty($connection) && $question == "2")
		{
			echo " checked";
		}
	 ?>	  
	/> Who are the top 5 most productive actors? &nbsp;<br> 
	<input type="radio" name="question" value="3" style ="margin-left:20px" 
	<?php	
		if(!empty($connection) && $question == "3")
		{
			echo " checked";
		}
	 ?>
	 /> Which films are suitable for kids?  &nbsp;<br> 
	<input type="radio" name="question" value="4" style ="margin-left:20px" 
	<?php	
		if(!empty($connection) && $question == "4")
		{
			echo " checked";
		}
	 ?>
	 /> Show the statistics of the data. 
</p>

<input type="submit" name="submit1" class="submit" value="Get Answer" />
<input Type="button" value="Go Back to Report Search Page" onclick="window.location.href='scindex.php'"> 
</form>
<hr>
<br>
	<?php
	if (!empty($connection))
	{	
			$NumOfRows = mysqli_num_rows($result);
			$Index = 0;
			//echo "Number of rows = $NumOfRows"."<br/>";
			//echo "check row count <br/>";
			//echo (false);
			//echo ($NumOfRows);

			if ($NumOfRows == 0)
			{
				echo "No data was found for the selected question.";
			} else
			{
				echo '<table class="table1">';
				echo '<caption>
					This is the answer for the selected question. ';
		
				echo "</caption>";
				echo "<thead>
						<tr>";
				$row = mysqli_fetch_assoc($result);
				//print_r ($row);
				
				foreach($row as $k => $v ) 
				{       
					echo "<th>".$k."</th>";
				}
			
				echo "	</tr>
					</thead>
					<tbody>";

				$check = mysqli_data_seek($result, 0);
				
				 while ($rownew = mysqli_fetch_assoc($result))
				 {
					echo "<tr>";
					foreach($rownew as $k => $v)
					{
					echo "<td>".$v."</td>";
					}
					echo "</tr>";	
				 }
				 
				echo "	</tbody>
					</table>";
			}
	}
	?>
	
	<?php
		if(!empty($connection))
		{
			mysqli_free_result($result);
		}
	?>

</body>
</html>

<?php
	// close database connection
	if(!empty($connection))
	{
		mysqli_close($connection);
	}
?>