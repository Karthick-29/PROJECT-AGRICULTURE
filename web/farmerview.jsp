<?php
include("dbconnect.jsp");
session_start();
extract($_POST);
if(isset($_POST['btn']))
{
  $qry=mysql_query("select * from admin where uname='$uname' && password='$pass'");
$num=mysql_num_rows($qry);
if($num==1)
{
header("location:adminhome.jsp");
//$_SESSION['usname']='$uname';
}
else
{
echo "<script> alert(User Name and Password Wrong)</script>";
}
}

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
.style12 {color: #0099FF}
.style14 {
	font-size: 18px;
	color: #0099FF;
	font-weight: bold;
}
.style18 {color: #000000; font-weight: bold; }
.style19 {color: #000000}
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
        <li class="active"><a href="adminhome.jsp">Home</a></li>
        <li><a href="farmerview.jsp">Farmer Details</a></li>
        <li><a href="Userview.jsp">User Details</a></li>
        <li><a href="accessories.jsp">Accessories</a></li>
		<li><a href="crop.jsp">Add Crops</a></li>
		<li><a href="subsidy.jsp">Subsidy</a></li>
        <li class="last"><a href="viewquery.jsp">View Query</a></li>
		<li class="last"><a href="index.jsp">Logout</a></li>
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
    <h1 class="style12">Welcome To Admin Home </h1>
    <p align="center" class="style14">Farmer Details </p>
    <form id="form1" name="form1" method="post" action="">
      <table width="80%" border="1" align="center">
        <tr bgcolor="#3399FF">
          <td width="11%" height="30"><div align="center" class="style18">Name</div></td>
          <td width="4%"><div align="center" class="style18">Age</div></td>
          <td width="8%"><div align="center" class="style18">Gender</div></td>
          <td width="16%"><div align="center" class="style18">MobileNumber</div></td>
          <td width="11%"><div align="center" class="style18">EmailId</div></td>
          <td width="9%"><div align="center" class="style18">Address</div></td>
          <td width="9%"><div align="center" class="style18">District</div></td>
          <td width="7%"><div align="center" class="style18">State</div></td>
          <td width="12%"><div align="center" class="style18">AadhaarNo</div></td>
          <td width="13%"><div align="center" class="style18">LandDetails</div></td>
        </tr>
        <?php
   
			   $ert=mysql_query("select * from freg ");
while($row=mysql_fetch_array($ert))
	 	 {
		 
	 ?>
        <tr>
          <td height="33"><div align="center" class="style19"><?php echo $row['Name'];?></div></td>
          <td><div align="center" class="style19"><?php echo $row['Age'];?></div></td>
          <td><div align="center" class="style19"><?php echo $row['Gender'];?></div></td>
          <td><div align="center" class="style19"><?php echo $row['MobileNumber'];?></div></td>
          <td><div align="center" class="style19"><?php echo $row['EmailId'];?></div></td>
          <td><div align="center" class="style19"><?php echo $row['Address'];?></div></td>
          <td><div align="center" class="style19"><?php echo $row['District'];?></div></td>
          <td><div align="center" class="style19"><?php echo $row['State'];?></div></td>
          <td><div align="center" class="style19"><?php echo $row['AadhaarNo'];?></div></td>
          <td><div align="center" class="style19"><?php echo $row['LandDetails'];?></div></td>
        </tr>
        <?php
	}
	
	?>
        <tr>
          <td height="29">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>
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