<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--
body {
	background-image: url(../img/Picture1.jpg);
}
.style1 {
	font-size: 36px;
	color: #FFFFFF;
}
.style2 {font-size: 4em}
.style4 {font-size: 24px; font-weight: bold; color: #800000; }
-->
  </style>
  <script type="text/javascript" src="/etawahmini/js/validation.js"></script>
<script type="text/javascript">
  function main()
{
uid=document.getElementById("uid").value;
upwd=document.getElementById("upwd").value;
if(checkEmpty(uid)==false)
{
alert("Enter UserId");
document.getElementById("did").innerHTML="UserId???";
document.getElementById("uid").focus();
return false;
}
if(checkEmpty(upwd)==false)
{
alert("Enter Password");
document.getElementById("upwd").focus();
return false;
}
return true;
}
</script></head>
  <% String msgtxt=request.getParameter("msg"); %>
  <body background="../img/Picture1.jpg">
    <div align="center" class="style1 style2" style="background-color: #800000; position:absolute; width: 738px; left: 346px; top: 14px;">Administrator Login </div>
	
    <div style="position:absolute; left: 525px; top: 160px; height: 206px;">
      <form name="form1" action="/etawahmini/servlet/LoginDB" method="post"onsubmit="return main()">
        <table width="382" height="235" border="0">
          <tr>
            <td width="111"><span class="style4">UserID:</span></td>
            <td width="261"><label>
              <input type="text" name="luid" required>
            </label></td>
          </tr>
          <tr>
            <td><span class="style4">Password:</span></td>
            <td><label>
              <input type="password" name="lpwd" required>
            </label></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><label>
            <input name="Submit" type="submit" style="position:absolute; width: 113px; height: 27px; background-color: #999900; layer-background-color: #999900; border: 1px none #000000;           -webkit-border-radius:10px;-moz-border-radius:10px;border: 1px none #000000; left: 115px; top: 171px;" value="Submit">
            </label></td>
          </tr>
		  <tr><td rowspan="=2" height="25"><% if (msgtxt!=null){ %><div id="did" style="position:absolute; left: 84px; top: 206px; width: 185px; height: 25px;font-style:normal;color:#800000">
 <%=msgtxt%></div><%} %></td>
</tr>
        </table>
      </form>
  </div>
  </body>
</html>
