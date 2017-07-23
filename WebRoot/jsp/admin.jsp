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
	<!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
<script type="text/javascript">
function showDiv(divid)
{ document.getElementById(divid).style.display="block";
}
function hideDiv(divid)
{
document.getElementById(divid).style.display="none"; 
}</script>
  <style type="text/css">
<!--
.style1 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: 36px;
}
-->
  </style>
  </head>
  
  <body background="../img/Picture1.jpg">
  <% HttpSession hs= request.getSession(false);
  String uid=(String)hs.getAttribute("userinfo");
  
  
  System.out.println(uid);
  if(uid==null)
  {
  response.sendRedirect("/etawahmini/jsp/adminlogin.jsp?msg=Unauthorised Access");
 }
  else
  {
  %>
  <div style="position:absolute; width: 171px; height: 39px; left: 839px; top: 9px;background-color:#800000"><span style="font-size: 2em;color: white">Hello<%=uid%></span></div>
  <div style="position:absolute; width: 94px; height: 37px; left: 257px; top: 34px;"><a href="/etawahmini/servlet/Logout">LogOut</a></div>
  <div class="style1" id ="divac"style="display:block;border-color:blue;position: absolute; left:32px; top:30px; width: 187px; height: 41px; 
    background-color: #990033; layer-background-color: #800000; border: 2px none #000000;" onMouseOver="showDiv('innerdiv')" onMouseOut="hideDiv('innerdiv')">USERS</div>
     <div id ="innerdiv"style="display:none;position: absolute;left:30px;top:60px;" onMouseOver="showDiv('innerdiv')" onMouseOut="hideDiv('innerdiv')">
     <p>
     <a href="/etawahmini/jsp/viewuser.jsp">View Users</a><br></div>
     <div class="style1" id ="divac"style="display:block;border-color:blue;position: absolute; left:395px; top:31px; width: 161px; height: 41px; 
     background-color: #990033; layer-background-color: #800000; border: 2px none #000000;" onMouseOver="showDiv('rinnerdiv')" onMouseOut="hideDiv('rinnerdiv')">Events</div>
  <div id ="rinnerdiv"style="display:none;position: absolute;left:395px;top:60px;" onMouseOver="showDiv('rinnerdiv')" onMouseOut="hideDiv('rinnerdiv')">
     <p><a href="/etawahmini/jsp/upload.jsp">Upload</a></p></div>
   <%}%>
  </body>
</html>
