<!DOCTYPE html>
<!-- WebsiteHowToDeploy.php 
This is a comment. Comments are not displayed in the browser.
To run it as a php file:
http://localhost/CourseId/WebsiteHowToDeploy.php
-->
<html>
<head>
    <title>
        WebsiteHowToDeploy.php
    </title>
</head>
<body>

<h1>
    Instructions to deploy my web application
	<br>
	<!-- input Type="button" value="Go Back to Website Documentations Page" onclick="window.location.href='WebsiteDocs.php'" --> 

</h1>
<hr>
<ol>
	<li> <b>Restore the database</b>
	<p> Run the sql script titled "jrhoades_P2P2_Dump.sql"
	</p></li>
	<li> <b>Run the following migration scripts against the target database</b>
		<ol type="i">
			<li>"jrhoades_P2P2_Dump.sql" contains all information to create all needed views, stored procedures and functions</li>
			</li>
		</ol>
	</li>
	<br/>	
	<li> <b>Install the web code</b>
	<p> Copy the folder "jrhoades" into your htdocs/Binf640/ directory, for linux the final path should be /opt/lampp/htdocs/Binf640/jrhoades/
	</p></li>

</ol>
<br>
<br>
</body>
</html>
