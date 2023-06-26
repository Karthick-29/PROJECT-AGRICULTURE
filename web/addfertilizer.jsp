
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@ include file="include/dbconnect.jsp" %>
 <%
 try
{
 String a=request.getParameter("btn");
if(a.equals("Submit"))
{
 String cname=request.getParameter("cname");
String dname=request.getParameter("dname");
String fname=request.getParameter("fname");

 
   
            
            String ins = "insert into fertilizer values('" + cname + "','"+dname+"','" + fname + "')";                     
            int n = stmt1.executeUpdate(ins);
            if(n==1)
{

    %>
<script language="javascript" >
		alert("Added Success\n");
                window.location.href = "addfertilizer.jsp";
		</script>
						
<%
}
else
{
       %>
<script language="javascript" >
		alert("added Unsuccessfull\n");
		window.location.href = "addfertilizer.jsp";
		</script>
						
<%
  
   }
		
 
    
}


}catch (Exception e)
{
 //out.println(e);
}




%>
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
.style13 {
	color: #0066FF;
	font-size: 24px;
}
.style23 {color: #000000; font-size: 18px; font-family: "Times New Roman", Times, serif; }
.style11 {color: #000000; font-size: 16px; font-weight: bold; }
.style24 {font-size: 16px}
.style22 {color: #000000; font-size: 14px; font-weight: bold; }
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
        <li  class="active"><a href="addfertilizer.jsp">AddFertilizer</a></li>
        <li><a href="viewfarmer.jsp">ViewFarmer</a></li>
		<li><a href="viewfertilizer.jsp">ViewFertilizer</a></li>
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
    <form action="" method="post"  name="form1" id="form1">
      <table width="50%" border="0" align="center">
        <tr>
          <td width="31%" height="34"><div align="center" class="style22">
              <div align="justify">CropsName</div>
          </div></td>
          <td width="69%"><input name="cname" type="text" id="cname" />
          </td>
        </tr>
        <tr>
          <td height="37"><div align="center" class="style22">
              <div align="justify">DiseaseName</div>
          </div></td>
          <td><input name="dname" type="text" id="dname" /></td>
        </tr>
        <tr>
          <td height="34"><div align="center" class="style22">
              <div align="justify">FertilizerName</div>
          </div></td>
          <td><input name="fname" type="text" id="fname" /></td>
        </tr>
        <tr>
          <td><div align="justify"></div></td>
          <td><input name="btn" type="submit" id="btn" value="Submit" />
              <input type="reset" name="Submit2" value="Reset" /></td>
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