
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
String address=request.getParameter("address");
String aadhaarno=request.getParameter("aadhaarno");
String district=request.getParameter("district");
String state=request.getParameter("state");
String uname=request.getParameter("uname");
String pwd=request.getParameter("pwd");
String cpwd=request.getParameter("cpwd");
String landdetails=request.getParameter("landdetails");

 
   
            
            String ins = "insert into freg values('"+name+"','"+age+"','"+gender+"','"+mobilenumber+"','"+emailid+"','"+address+"','"+district+"','"+state+"','"+aadhaarno+"','"+landdetails+"','"+uname+"','"+pwd+"','"+cpwd+"')";                     
            int n = stmt1.executeUpdate(ins);
            if(n==1)
{

    %>
<script language="javascript" >
		alert("register Success\n");
                window.location.href = "farmerregister.jsp";
		</script>
						
<%
}
else
{
       %>
<script language="javascript" >
		alert("added Unsuccessfull\n");
		window.location.href = "farmerregister.jsp";
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
.style14 {color: #000000; font-size: 14px; }
.style20 {font-size: 14; color: #000000; font-weight: bold; }
.style21 {
	color: #0066FF;
	font-size: 16px;
	font-weight: bold;
}
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
        <li><a href="index.jsp">Home</a></li>
        <li><a href="admin.jsp">Admin</a></li>
        <li class="active"><a href="farlog.jsp">Farmer</a></li>
        <li><a href="UserLog.jsp">User</a></li>
        <li class="last"><a href="#">About Us</a></li>
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
    <h1>Welcome To Farmer Register </h1>
    <p align="center" class="style21">Farmer Register </p>
    <form id="form1" name="form1" method="post" action="">
      <table width="80%" border="0" align="center" >
        <tr>
          <td width="3%" height="30">&nbsp;</td>
          <td width="3%">&nbsp;</td>
          <td width="3%">&nbsp;</td>
          <td width="23%">&nbsp;</td>
          <td width="16%"><span class="style20">
          Name </span></td>
          <td width="52%"><input name="name" type="text" id="name" required="required"/>          </td>
        </tr>
        <tr>
          <td height="29">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><span class="style20">
          Age </span></td>
          <td><input name="age" type="text" id="age" required="required"/></td>
        </tr>
        <tr>
          <td height="29">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><span class="style20">
          Gender </span></td>
          <td><span class="style14">
            <input name="gender" type="radio" value="Male" required="required"/>
            Male
            <input name="gender" type="radio" value="Female" required="required"/>
            Female </span></td>
        </tr>
        <tr>
          <td height="30">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><span class="style20"> 
          MobileNumber</span></td>
          <td><input name="mobilenumber" type="text" id="mobilenumber" required="required" minlength='10' maxlength="10"/></td>
        </tr>
        <tr>
          <td height="31">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><span class="style20"> 
          EmailId</span></td>
          <td><input name="emailid" type="email" id="emailid" required="required"/></td>
        </tr>
        <tr>
          <td height="41">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><span class="style20"> 
          Address </span></td>
          <td><textarea name="address" id="address" required="required"></textarea></td>
        </tr>
        <tr>
          <td height="30">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><span class="style20"> 
          District</span></td>
          <td><input name="district" type="text" id="district" required="required"/></td>
        </tr>
        <tr>
          <td height="28">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><span class="style20"> 
          State</span></td>
          <td><input name="state" type="text" id="state" required="required"/></td>
        </tr>
        <tr>
          <td height="29">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><span class="style20">
          AdhaarNo </span></td>
          <td><input name="aadhaarno" type="text" id="aadhaarno" required="required"/></td>
        </tr>
        <tr>
          <td height="28">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><span class="style20">
          LandDetails </span></td>
          <td><input name="landdetails" type="text" id="landdetails" required="required"/></td>
        </tr>
        <tr>
          <td height="28">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><span class="style20"> 
          UserName</span></td>
          <td><input name="uname" type="text" id="uname" required="required"/></td>
        </tr>
        <tr>
          <td height="27">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><span class="style20"> 
          Password</span></td>
          <td><input name="pwd" type="password" id="pwd" required="required" maxlength="10" minlength="8"/></td>
        </tr>
        <tr>
          <td height="25">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><span class="style20">
          ConfirmPassword</span></td>
          <td><input name="cpwd" type="password" id="cpwd" required="required"/></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><p>
            <input name="btn" type="submit"  id="btn" value="SignUp" />
              <input name="Submit2" type="reset"  value="Reset" />
            </p>
              <p>&nbsp;</p></td>
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
    <p class="fl_left">Copyright &copy; 2022 - All Rights Reserved - <a href="#">HRMS</a></p>
    <p class="fl_right">Desing by <a target="_blank" href="" title="Free Website Templates"></a><br class="clear" />
  </p>
  </div>
</div>
</body>
</html>