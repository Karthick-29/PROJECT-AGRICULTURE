<?php
include("dbconnect.jsp");
session_start();
extract($_POST);
$uname=$_SESSION['fname'];

?>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
Template Name: School Education
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>FARMING ASSISTANT</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.slidepanel.setup.js"></script>
<style type="text/css">
<!--
.style11 {color: #000000}
.style12 {color: #0099FF}
.style13 {
	color: #0066FF;
	font-size: 24px;
}
.style18 {color: #000000; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="wrapper col0">
  <div id="topbar">
    <div id="slidepanel">
      <div class="topbox">
        <h2>Nullamlacus dui ipsum</h2>
        <p>Nullamlacus dui ipsum conseque loborttis non euisque morbi penas dapibulum orna. Urnaultrices quis curabitur phasellentesque congue magnis vestibulum quismodo nulla et feugiat. Adipisciniapellentum leo ut consequam ris felit elit id nibh sociis malesuada.</p>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
      <div class="topbox">
        <h2>Teachers Login Here</h2>
        <form action="#" method="post">
          <fieldset>
            <legend>Teachers Login Form</legend>
            <label for="teachername">Username:
              <input type="text" name="teachername" id="teachername" value="" />
            </label>
            <label for="teacherpass">Password:
              <input type="password" name="teacherpass" id="teacherpass" value="" />
            </label>
            <label for="teacherremember">
              <input class="checkbox" type="checkbox" name="teacherremember" id="teacherremember" checked="checked" />
              Remember me</label>
            <p>
              <input type="submit" name="teacherlogin" id="teacherlogin" value="Login" />
              &nbsp;
              <input type="reset" name="teacherreset" id="teacherreset" value="Reset" />
            </p>
          </fieldset>
        </form>
      </div>
      <div class="topbox last">
        <h2>Pupils Login Here</h2>
        <form action="#" method="post">
          <fieldset>
            <legend>Pupils Login Form</legend>
            <label for="pupilname">Username:
              <input type="text" name="pupilname" id="pupilname" value="" />
            </label>
            <label for="pupilpass">Password:
              <input type="password" name="pupilpass" id="pupilpass" value="" />
            </label>
            <label for="pupilremember">
              <input class="checkbox" type="checkbox" name="pupilremember" id="pupilremember" checked="checked" />
              Remember me</label>
            <p>
              <input type="submit" name="pupillogin" id="pupillogin" value="Login" />
              &nbsp;
              <input type="reset" name="pupilreset" id="pupilreset" value="Reset" />
            </p>
          </fieldset>
        </form>
      </div>
      <br class="clear" />
    </div>
    
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <h1><a href="index.jsp">AGRICULTURE PORTAL </a></h1>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WEB SERVICE</p>
    </div>
    <div id="topnav">
      <ul>
        <li class="active"><a href="farmerhome.jsp">Home</a></li>
        <li><a href="buyproduct.jsp">Buy Product</a></li>
        <li><a href="addproduct.jsp">Add Product</a></li>
		<li><a href="query.jsp">Post Query</a></li>
        <li class="last"><a href="viewquery1.jsp">View</a></li>
		<li><a href="report.jsp">Report</a></li>
		<li class="last"><a href="farlog.jsp">Logout</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="breadcrumb">
    <ul>
      <li class="first">You Are Here</li>
      <li>&#187;</li>
      <li><a href="#">Home</a></li>
    </ul>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="container">
  <div align="center"><img src="images/humanresource_management_system_djs.jpg" width="693" height="100" /></div><br />
    <h1 class="style12">Welcome To Farmer Home </h1>
    <p align="center"><span class="style13"><a href="accessories.jsp">Crop</a> Details </span></p>
    <p align="center">&nbsp;</p>
    <form id="form1" name="form1" method="post" action="">
      <p align="center">&nbsp;</p>
	 
      <table width="80%" border="1" align="center">
        <tr bgcolor="#3399FF">
          <td width="11%" height="30"><div align="center" class="style18">Sl.No</div></td>
          <td width="4%"><div align="center" class="style18">Type</div></td>
          <td width="8%"><div align="center" class="style18">Name</div></td>
          <td width="16%"><div align="center" class="style18">Soil Type</div></td>
          <td width="11%"><div align="center" class="style18">Process Time </div></td>
        </tr>
        <?php
   $i=1;
			   $ert=mysql_query("select * from scrops");
while($row=mysql_fetch_array($ert))
	 	 {
		 

	 ?>
        <tr>
          <td height="33"><div align="center" class="style11"><?php echo $i;?></div></td>
          <td><div align="center" class="style11"><?php echo $row['SeasonName'];?></div></td>
          <td><div align="center" class="style11"><?php echo $row['CropsName'];?></div></td>
          <td><div align="center" class="style11"><?php echo $row['SoilType'];?></div></td>
          <td><div align="center" class="style11"><?php echo $row['ProcessTime'];?></div></td>
        </tr>
        <?php
		$i++;
	}
	
	?>
        <tr>
          <td height="29">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>
	 
      <p align="center"><span class="style13"><a href="accessories.jsp">Subsidy</a> Details </span></p>
      <p align="center">&nbsp;</p>
      <table width="80%" border="1" align="center">
        <tr bgcolor="#3399FF">
          <td width="11%" height="30"><div align="center" class="style18">Sl.No</div></td>
          <td width="4%"><div align="center" class="style18">Name</div></td>
          <td width="8%"><div align="center" class="style18">Details</div></td>
          <td width="16%"><div align="center" class="style18">Description</div></td>
          <td width="11%"><div align="center" class="style18">Process Amount </div></td>
        </tr>
        <?php
   $i=1;
			   $ert=mysql_query("select * from subsidy");
while($row=mysql_fetch_array($ert))
	 	 {
		 

	 ?>
        <tr>
          <td height="33"><div align="center" class="style11"><?php echo $i;?></div></td>
          <td><div align="center" class="style11"><?php echo $row['name'];?></div></td>
          <td><div align="center" class="style11"><?php echo $row['details'];?></div></td>
          <td><div align="center" class="style11"><?php echo $row['description'];?></div></td>
          <td><div align="center" class="style11"><?php echo $row['amount'];?></div></td>
        </tr>
        <?php
		$i++;
	}
	
	?>
        <tr>
          <td height="29">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <p align="center"></p>
    </form>
  </div>
</div>
<br />
<br />
<!-- ####################################################################################################### -->
<div class="wrapper col4"></div>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2022 - All Rights Reserved - <a href="#">HRMS</a></p>
    <p class="fl_right">Desing by <a target="_blank" href="" title="Free Website Templates"></a><br class="clear" />
  </p>
  </div>
</div>
</body>
</html>