<?php
/* scFilms.php 
This is a comment. Comments are not displayed in the browser.
To run it as a php file:
http://localhost/Binf640/jrhoades/jrhoades2.php
*/
?>
<?php

if (isset($_POST["submit1"]) && !empty($_POST["Targeted_Disease"])) 
{
	require_once "scDbConnection.php";
	$Targeted_Disease = $_POST["Targeted_Disease"];
	
}
?>
<?php
// use a stored procedure to get the data from db
if(!empty($connection))
{
		$query = "call Find_Targeted_Disease(" . '"' . $Targeted_Disease . '")';
	#	$query = "call usp_FindFilmsPerStoreRating(" . '"' . $rating . '", ' . $storeid . ')';
		echo $query."<br/>";
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
        Find_Targeted_Disease.php
    </title>
    <link rel="stylesheet" type="text/css" HREF="StyleSheets.css">
</head>
<body>
<h1>
    Use jrhoades_P2P2 Database
</h1>
<br>
<hr>

<form name="form1" method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" >
<p>The second stored procedure will use a cursor and return a row set given one or more input parameters. 
<select  name="Targeted_Disease">
  <!--option value="" selected disabled>Select a rating</option--> 
  <option 
  	<?php
		if(!empty($connection))
		{
			echo 'value="' . $Targeted_Disease .'"'; 
		} else
		{
			echo 'value="" selected disabled';
		}
	?>
  >
	 <?php
		if(!empty($connection))
		{
			echo ($Targeted_Disease); 
		} else
		{
			echo 'Select a Targeted Disease';
		}
	 ?> 
  </option>
  
  <option value="anemia">anemia</option>
  <option value="muscle disease">muscle disease</option>
  <option value="osteoporosis">osteoporosis</option>
  <option value="polydactyly">polydactyly</option>
  <option value="colon cancer">colon cancer</option>
</select>
</p>


<input type="submit" name="submit1" value="Go" />
<input Type="button" value="Go Back to Report Search Page" onclick="window.location.href='jrhoadesIndex.php'"> 
</form>
<hr>
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
				echo "No diseases with the name <u>$Targeted_Disease</u> are in database.";
			} else
			{
				echo '<table class="table1">';
				echo '<caption>
					Disease ';
				echo '"' . $Targeted_Disease . '"' . ' was found '; 
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