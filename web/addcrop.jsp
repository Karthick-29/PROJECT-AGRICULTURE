
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@ include file="include/dbconnect.jsp" %>
 <%
 try
{
 String a=request.getParameter("btn");
if(a.equals("Submit"))
{
 String sname=request.getParameter("Sname");
String cname=request.getParameter("cname");
String soiltype=request.getParameter("soiltype");
String processtime=request.getParameter("processtime");
 
   
            
            String ins = "insert into scrops values('" + sname + "','"+cname+"','" + soiltype + "','" + processtime + "')";                     
            int n = stmt1.executeUpdate(ins);
            if(n==1)
{

    %>
<script language="javascript" >
		alert("Added Success\n");
                window.location.href = "addcrop.jsp";
		</script>
						
<%
}
else
{
       %>
<script language="javascript" >
		alert("added Unsuccessfull\n");
		window.location.href = "addcrop.jsp";
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
         
      </div>
      <div class="topbox last">
        <h2>Pupils Login Here</h2>
         
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
        <li ><a href="adminhome.jsp">Home</a></li>
        <li class="active"><a href="addcrop.jsp">AddCrop</a></li>
        <li><a href="addfertilizer.jsp">AddFertilizer</a></li>
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
    <form action="" method="post"   name="form1" id="form1">
      <table width="50%" border="0" align="center">
        <tr>
          <td width="19%" height="35"><div align="center" class="style11">
              <div align="justify">SeasonName</div>
          </div></td>
          <td width="81%"><select name="Sname" id="Sname">
              <option>Select</option>
              <option value="SummerSeason">SummerSeason</option>
              <option value="RainySeason">RainySeason</option>
              <option value="WinterSeason">WinterSeason</option>
            </select>
            &nbsp;</td>
        </tr>
        <tr>
          <td height="37"><div align="center" class="style11">
              <div align="justify">CropsName</div>
          </div></td>
          <td><input name="cname" type="text" id="cname" />
          </td>
        </tr>
        <tr>
          <td height="36"><div align="center" class="style11">
              <div align="justify">SoilType</div>
          </div></td>
          <td><input name="soiltype" type="text" id="soiltype" /></td>
        </tr>
        <tr>
          <td height="38"><div align="center" class="style11">
              <div align="justify">ProcessTime</div>
          </div></td>
          <td><input name="processtime" type="text" id="processtime" /></td>
        </tr>
        <tr>
          <td><span class="style24"></span></td>
          <td><p>&nbsp;</p>
              <input name="btn" type="submit" id="btn" value="Submit" />
              <input type="reset" name="Submit2" value="Reset" />
              <p>&nbsp;</p></td>
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