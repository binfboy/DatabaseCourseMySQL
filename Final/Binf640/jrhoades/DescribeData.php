<!DOCTYPE html>
<!-- DescribeData.php 
This is a comment. Comments are not displayed in the browser.
To run it as a php file:
http://localhost/CourseId/DescribeData.php
-->

<html lang='en'>
<head>
    <meta charset="UTF-8" /> 
    <title>
        DescribeData.php
    </title>
    <!--link rel="stylesheet" type="text/css" HREF="StyleSheetBCHB697.css" -->
</head>
<body>
<h1>
    My bioinformatics data set
	<br>
	<input Type="button" value="Go Back to Website Documentations Page" onclick="window.location.href='WebsiteDocs.php'"> 
</h1>
<br>
<hr>

<ul>
	<li> <b>What is my data set?</b>
	<p> My dataset contains data about anemia and muscle disease.
	</p></li>
	
	<li> <b>Why did I select this data set?</b>
	<p> I selected this data set because it contains information about proteins and their corresponding genes that are related to anemia and muscle disease.
	</p></li>

	
	<li> <b>Where and how did I collect this data set?</b>
	<p> The data was collected from several sources. Protein data was collected from the UniProtKB database.  Gene information was collected from HGNC Database. Disease information was collected from Disease Ontology and OMIN databases. 
	</p></li>

	<li> <b>What are the buisness rules or specifications of my data set?</b>
	<p> Each protein has a unique UniProtKB ID.  Each Protein comes from a gene.  Proteins and genes may have short or alternative names.
		A disease can be associated with more than one protein/gene.  A protein may be associated with multiple diseases. 
		Each Gene has a unique HGNC identifier.
	</p></li>
</ul>
	
</body>
</html>