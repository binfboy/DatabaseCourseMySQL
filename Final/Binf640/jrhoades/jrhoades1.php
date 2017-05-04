<?php
/* scCustomers.php 
This is a comment. Comments are not displayed in the browser.
To run it as a php file:
http://localhost/Binf640/jrhoades/jrhoades1.php
*/
?>
<?php
if (isset($_POST['submit1']) && !empty($_POST['UniProtKB_Entry'])) 
{
	require_once "scDbConnection.php";
	$UniProtKB_Entry = mysqli_real_escape_string($connection, htmlentities($_POST["UniProtKB_Entry"]));
}
//echo "$UniProtKB_Entry".'<br/>';
?>

<?php
// use a stored procedure to get the data from db
if(!empty($connection))
{
		$query = "call proteinIDsearch(" . '"' . $UniProtKB_Entry . '")';
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
        jrhoades1.php
    </title>
    <link rel="stylesheet" type="text/css" HREF="StyleSheets.css" -->

</head>
<body>
<h1>
    Use jrhoades_P2P2 Database
</h1>
<br>
<hr>

<form name="form1" method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" >

<p>The first stored procedure will build a dynamic SQL and return a row set given one and only one input parameter.
<br>
<input type="text"  name="UniProtKB_Entry" placeholder="O00459"
	<?php
		if(!empty($connection))
		{
			echo 'value="' . $UniProtKB_Entry .'"'; 
		} 
	?>
/>
</p>
<input type="submit" name="submit1" class="submit" value="Submit" />
<input Type="button" value="Go Back to Report Search Page" onclick="window.location.href='jrhoadesIndex.php'"/> 
</form>
<!--  preformatted tag 
<pre> 
<?php

if ($_GET){
	echo 'Contents of the $_GET array: <br>';
	print_r($_GET);
} elseif ($_POST) {
	echo 'Contents of the $_POST array: <br>';
	print_r($_POST);
}

?>
</pre>
-->
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
				echo "No proetins with that ID found... <u>$UniProtKB_Entry</u>.";
			} else
			{
				echo '<table class="table1">';
				echo '<caption>
					Protein Information: ';
				echo '"' . $UniProtKB_Entry . '"'; 
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