<%@page import="java.util.Random"%>
<%@ include file="include/dbconnect.jsp" %>
<%@page import="java.sql.ResultSet"%>
<% 
 String name=(String)session.getAttribute("aname");
 out.print(name);
 String qry1 = "select * from areg where UserName='"+name+"'";
ResultSet rs1 = stmt2.executeQuery(qry1); 
rs1.next();
String aname = rs1.getString("Name");
System.out.print(aname);


%>
 <%
 try
{
     System.out.print("hai");
 String a=request.getParameter("btn1");
if(a.equals("Reply"))
{
 String ans=request.getParameter("ans");

 System.out.print("hai");
            
            String ins = "update query set answer='"+ans+"',status='1' where advisorname='"+aname+"' ";                     
            int n = stmt1.executeUpdate(ins);
            if(n==1)
{

    %>
<script language="javascript" >
		alert("Added Success\n");
                window.location.href = "answer.jsp";
		</script>
						
<%
}
else
{
       %>
<script language="javascript" >
		alert("added Unsuccessfull\n");
		window.location.href = "answer.jsp";
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
.style10 {
	font-size: 14px;
	color: #000000;
}
.style11 {color: #000000}
.style13 {font-size: 14}
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
       <li class="active"><a href="ahome.jsp">Home</a></li>
        <li><a href="answer.jsp">Answer</a></li>
        <li><a href="fview.jsp">Farmer Details</a></li>
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
    <img src="images/im-human-resources-management-1000x500.jpg" width="970" height="300" />
	<br />
    <h1>Welcome To Farmer Login </h1>
    <p align="justify">&nbsp; </p>
    <form id="form1" name="form1" method="post" action="">
      <p align="center" class="style23 style10"><strong>User Query Details  </strong></p>
      <table width="982" border="1" align="center">
        <tr>
          <td colspan="7" align="center"><strong>User Queries</strong></td>
        </tr>
		<%
  ResultSet rs0=stmt3.executeQuery("select * from query where status='0' and advisorname='"+aname+"'");
		int s=0;	
                   while(rs0.next())
			{
                         if(s==0)
                         {
                            %>
        <tr>
          <td width="21%"><div align="center" class="style44"><strong>UserName</div></td>
          <td width="31%"><div align="center" class="style44"><strong>AdvisorName</div></td>
          <td width="26%"><div align="center" class="style44"><strong>Problem</div></td>
          <td width="26%"><div align="center" class="style40 name style45"><strong><strong>Location</strong></div></td>
          <td width="26%"><div align="center" class="style40 name style45"><strong>Answer</strong></div></td>
          <td width="26%">&nbsp;</td>
        </tr>
        <% 
                         }
			  s++;

%>
        <tr>
          <td><input name="location2" type="text" id="location2" value="<% out.print(rs0.getString("username"));%> "/></td>
          <td><input name="location4" type="text" id="location4" value="<% out.print(rs0.getString("advisorname"));%> " /></td>
          <td><input name="location3" type="text" id="location3" value="<% out.print(rs0.getString("description"));%> " /></td>
          <td><input name="location" type="text" id="location" value="<% out.print(rs0.getString("location"));%> " /></td>
          <td><input name="ans" type="text" id="ans" /></td>
          <td><input name="btn1" type="submit" class="style31" id="btn1" value="Reply" /></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td colspan="7">&nbsp;</td>
        </tr>
        <%
	}
	
	%>
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