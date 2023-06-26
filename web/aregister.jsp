
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@ include file="include/dbconnect.jsp" %>
 <%
 try
{
 String a=request.getParameter("btn");
if(a.equals("SignUp"))
{
 String name=request.getParameter("name");
String age=request.getParameter("age");
String gender=request.getParameter("gender");
String mobilenumber=request.getParameter("mobilenumber");
String emailid=request.getParameter("emailid");
String education=request.getParameter("education");
String experience=request.getParameter("experience");
String district=request.getParameter("district");
String state=request.getParameter("state");
String uname=request.getParameter("uname");
String pwd=request.getParameter("pwd");
String cpwd=request.getParameter("cpwd");

 
   
            
            String ins = "insert into areg values('"+name+"','"+age+"','"+gender+"','"+mobilenumber+"','"+emailid+"','"+education+"','"+experience+"','"+district+"','"+state+"','"+uname+"','"+pwd+"','"+cpwd+"')";                     
            int n = stmt1.executeUpdate(ins);
            if(n==1)
{

    %>
<script language="javascript" >
		alert("register Success\n");
                window.location.href = "adviso.jsp";
		</script>
						
<%
}
else
{
       %>
<script language="javascript" >
		alert("added Unsuccessfull\n");
		window.location.href = "aregister.jsp";
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
.style12 {color: #FFCC00; }
.style13 {color: #660066; }
.style14 {color: #FF0000; }
.style15 {color: #666666; }
.style16 {color: #00FF00; }
.style20 {color: #000066; }
.style3 {font-size: 18px}
.style22 {color:#660033;
	font-size: 18px;
}
.style24 {color: #000000; font-size: 16px; }
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
        <li class="active"><a href="index.jsp">Home</a></li>
        <li><a href="admin.jsp">Admin</a></li>
        <li><a href="adviso.jsp">Advisor</a></li>
        <li><a href="farlog.jsp">Farmer</a></li>
        <li class="last"><a href="about.jsp">About Us</a></li>
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
    <img src="images/im-human-resources-management-1000x500.jpg" width="970" height="300" />
	<br />
    <h1>Welcome To Admin Login </h1>
    <p align="justify">&nbsp; </p>
    <form id="form1" name="form1" method="post" action="">
      <table width="50%" border="0" align="center" class="style22">
        <tr>
          <td height="32"><div align="right" class="style24">Name :</div></td>
          <td><input name="name" type="text" id="name" required="required"/>          </td>
        </tr>
        <tr>
          <td height="35"><div align="right" class="style24">Age : </div></td>
          <td><input name="age" type="text" id="age" required="required"/></td>
        </tr>
        <tr>
          <td height="31"><div align="right" class="style24">Gender : </div></td>
          <td><input name="gender" type="radio" value="Male" required="required"/>
            Male
            <input name="gender" type="radio" value="Female" required="required"/>
            Female </td>
        </tr>
        <tr>
          <td height="41"><div align="right" class="style24"> MobileNumber: </div></td>
          <td><input name="mobilenumber" type="text" id="mobilenumber" required="required"/></td>
        </tr>
        <tr>
          <td height="35"><div align="right" class="style24"> EmailId : </div></td>
          <td><input name="emailid" type="text" id="emailid" required="required"/></td>
        </tr>
        <tr>
          <td height="38"><div align="right" class="style24"> Education : </div></td>
          <td><input name="education" type="text" id="education" required="required"/></td>
        </tr>
        <tr>
          <td height="33"><div align="right" class="style24">Experience: </div></td>
          <td><input name="experience" type="text" id="experience"required="required" /></td>
        </tr>
        <tr>
          <td height="41"><div align="right" class="style24"> District : </div></td>
          <td><input name="district" type="text" id="district" required="required"/></td>
        </tr>
        <tr>
          <td height="35"><div align="right" class="style24"> State : </div></td>
          <td><input name="state" type="text" id="state" required="required"/></td>
        </tr>
        <tr>
          <td height="35"><div align="right" class="style24"> UserName : </div></td>
          <td><input name="uname" type="text" id="uname" required="required"/></td>
        </tr>
        <tr>
          <td height="35"><div align="right" class="style24">Password : </div></td>
          <td><input name="pwd" type="password" id="pwd" required="required"/></td>
        </tr>
        <tr>
          <td height="33"><div align="right" class="style24"> ConfirmPassword: </div></td>
          <td><input name="cpwd" type="password" id="cpwd" required="required"/></td>
        </tr>
        <tr>
          <td><div align="right" class="style12"><span class="style13"><span class="style14"><span class="style15"><span class="style16"></span></span></span></span></div></td>
          <td><span class="style20"></span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><p class="style20">
              <input name="btn" type="submit" class="style3" id="btn" value="SignUp" />
              <input name="Submit2" type="reset" class="style3" value="Reset" />
            </p>
              <p class="style20">&nbsp;</p></td>
        </tr>
      </table>
    </form>
    <p align="justify"><br />
      <strong> </strong></p>
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