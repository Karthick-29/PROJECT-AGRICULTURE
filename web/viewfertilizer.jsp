<%@page import="java.util.Random"%>
<%@ include file="include/dbconnect.jsp" %>
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
.style25 {
	color: #0066FF;
	font-weight: bold;
	font-size: 16px;
}
.style23 {	color: #0066FF;
	font-weight: bold;
}
.style30 {color: #0066FF; font-weight: bold; font-size: 18px; }
.style34 {font-size: 18px}
.style35 {font-size: 14px; font-weight: bold; }
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
        <li><a href="adminhome.jsp">Home</a></li>
        <li><a href="addcrop.jsp">AddCrop</a></li>
        <li ><a href="addfertilizer.jsp">AddFertilizer</a></li>
        <li ><a href="viewfarmer.jsp">ViewFarmer</a></li>
		<li class="active"><a href="viewfertilizer.jsp">ViewFertilizer</a></li>
		<li><a href="view.jsp"><strong>View</strong></a></li>
        <li class="last"><a href="index.jsp"><strong>Logout</strong></a></li>
		
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
    <p align="center">&nbsp;</p>
    <form action="" method="post" enctype="multipart/form-data" name="form1" id="form1">
      <p align="center" class="style30">Crop Details </p>
      <table width="100%" border="1">
	  <%
  ResultSet rs0=stmt3.executeQuery("select * from scrops ");
		int s=0;	
                   while(rs0.next())
			{
                         if(s==0)
                         {
                            %>
        <tr>
          <td width="11%" height="32"><div align="center" class="style35">Sl.No</div></td>
          <td width="4%"><div align="center" class="style35">Season Name</div></td>
          <td width="8%"><div align="center" class="style35">Crops Name</div></td>
          <td width="16%"><div align="center" class="style35">Soil Type</div></td>
          <td width="11%"><div align="center" class="style35">Process Time</div></td>
        </tr>
        <% 
                         }
			  s++;

%>
        <tr>
          <td height="33"><div align="center"><% out.print(s);%></div></td>
          <td><div align="center"><% out.print(rs0.getString("SeasonName"));%> </div></td>
          <td><div align="center"><% out.print(rs0.getString("CropsName"));%> </div></td>
          <td><div align="center"><% out.print(rs0.getString("SoilType"));%> </div></td>
          <td><div align="center"><% out.print(rs0.getString("ProcessTime"));%> </div></td>
        </tr>
        <%
		
		
		}
		%>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>
      <p align="center" class="style23"><span class="style34"><strong>Fertilizer</strong> Details</span> </p>
      <table width="100%" border="1">
         <%
  ResultSet rs01=stmt2.executeQuery("select * from fertilizer ");
		int s1=0;	
                   while(rs01.next())
			{
                         if(s1==0)
                         {
                            %><tr>
          <td width="11%" height="32"><div align="center" class="style35">Sl.No</div></td>
          <td width="8%"><div align="center" class="style35">Crops Name</div></td>
          <td width="16%"><div align="center" class="style35">Disease Name</div></td>
          <td width="11%"><div align="center" class="style35">Fertilizer Name</div></td>
        </tr>
       <% 
                         }
			  s1++;

%>
        <tr>
          <td height="33"><div align="center"><% out.print(s1);%> </div></td>
          <td><div align="center"><% out.print(rs01.getString("CropsName"));%> </div></td>
          <td><div align="center"><% out.print(rs01.getString("DiseaseName"));%> </div></td>
          <td><div align="center"><% out.print(rs01.getString("FertilizerName"));%> </div></td>
        </tr>
        <%
		
		
		}
		%>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>
      <p align="center" class="style25">&nbsp;</p>
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
    <p class="fl_left">Copyright &copy; 2017 - All Rights Reserved - <a href="#">HRMS</a></p>
    <p class="fl_right">Desing by <a target="_blank" href="" title="Free Website Templates"></a><br class="clear" />
  </p>
  </div>
</div>
</body>
</html>