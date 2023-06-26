
<%@page import="java.sql.ResultSet"%>
<%@include file="include/dbconnect.jsp" %>
<%
String fname=(String)session.getAttribute("fname");
System.out.print(fname);
%>
<%
try
{
String a=request.getParameter("btn");
if(a.equals("SEND"))
{
    String Nname=request.getParameter("Nname");
    String description=request.getParameter("description");
     String location=request.getParameter("location");
    
    out.print("test");
	
        String ins = "insert into query values('"+fname+"','"+Nname+"','"+description+"','"+location+"','','','0')";                     
            int n = stmt1.executeUpdate(ins);
            if(n==1)
{

    %>
<script language="javascript" >
		alert("Query Sent  Success\n");
                window.location.href = "query.jsp";
		</script>
						
<%
}
else
{
       %>
<script language="javascript" >
		alert("added Unsuccessfull\n");
		window.location.href = "query.jsp";
		</script>
						
<%
  
   }
     
}
}
catch (Exception e)
{
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
.style11 {color: #000000}
.style12 {color: #0099FF}
.style13 {
	color: #0066FF;
	font-size: 24px;
}
.style18 {color: #000000; font-weight: bold; }
.style30 {color: #0066FF; font-weight: bold; font-size: 18px; }
.style36 {font-size: 12px; font-weight: bold; }
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
         
        <li><a href="query.jsp">Ask Query</a></li>
		<li><a href="index.jsp">LogOut </a></li>
       
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
    <p align="center" class="style30">Advisor Details <br />
</p>
    <form id="form1" name="form1" method="post" action=""><p align="center"> </p>
      <p>&nbsp;</p>
      <table width="100%" border="0">
        <tr>
          <td width="46%"><div align="center" class="style40">AdvisorName</div></td>
          <td width="54%">
		  <select name="Nname" id="Nname">
             
              <%
  ResultSet rs0=stmt3.executeQuery("select * from areg");
		 	
                   while(rs0.next())
			{
                            %>
              <option value="<% out.print(rs0.getString("Name"));%>"><% out.print(rs0.getString("Name"));%></option>
              <%
                        }
              %>
            </select>
          </td>
        </tr>
        <tr>
          <td><div align="center" class="style40">Location</div></td>
		  
          <td> <input name="location" type="text" id="location" /></td>
        </tr>
        <tr>
          <td><div align="center" class="style35">Query</div></td>
          <td><input name="description" type="text" id="description" /></td>
        </tr>
        
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><div align="center"></td>
          <td><input name="btn" type="submit" id="btn" value="SEND" />
          </td>
        </tr>
        <tr>
          <td><p>&nbsp;</p>
              <p>&nbsp;</p>
              <p align="center">&nbsp;</p></td>
          <td>&nbsp;</td>
        </tr>
      </table>
      <table width="100%" border="1" align="center">
       <%
  ResultSet rs01=stmt1.executeQuery("select * from query where username='"+fname+"'");
		 	
                   while(rs01.next())
			{
                            %>
          <tr>
          <td width="13%"><div align="center" class="style40">UserName</div></td>
          <td width="20%"><div align="center" class="style40">Location</div></td>
          <td width="23%"><div align="center" class="style40">Problem</div></td>
         
          <td width="20%"><div align="center" class="style40">Answer</div></td>
        </tr>
       
        <tr>
          <td><div align="center" class="style41"><% out.print(rs01.getString("username"));%> </div></td>
          <td><div align="center" class="style41"><% out.print(rs01.getString("location"));%> </div></td>
          <td><div align="center" class="style41"><% out.print(rs01.getString("description"));%> </div></td>
          <td><div align="center" class="style41">
            <% out.print(rs01.getString("answer"));%>
          </div></td>
              
         
        </tr>
        <%
	}
	
	%>
        
      </table>
      </td>
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