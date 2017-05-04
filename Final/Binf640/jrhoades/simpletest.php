<?php
/*
http://localhost/CourseId/simpletest.php
*/
$lastname ='Smith';
//$lastname ="Smith";  # double quotes yield the same result as single quotes
$query = 'call usp_GetCustomers(' . '"' . $lastname . '")';
echo "$query"."<br>";
echo $query.'<br>';
echo $_SERVER['PHP_SELF'];
//echo "$_SERVER['PHP_SELF']";  // incorrect
?>
