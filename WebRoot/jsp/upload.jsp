<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'upload.jsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    <style type="text/css">
<!--
.style2 {
	color: #FFFFFF;
	font-size: 3em;
	font-weight: bold;
}
-->
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
	color: #800000;
}
-->
    </style>
</head>
<% String msgtxt=request.getParameter("msg"); %>
  
  <body background="../img/Picture1.jpg">
  <a href="/etawahmini/jsp/admin.jsp" style="position:absolute; width: 71px; height: 15px; left: 892px; top: 102px;">Back</a>
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
  <div style="position:absolute; width: 175px; height: 39px; left: 683px; top: 101px;background-color:#800000"><span style="font-size: 2em;color: white"><%=uid%></span></div><%}%>
  <div style="position:absolute; width: 628px; height: 67px; left: 482px; top: 16px; background-color: #800000; layer-background-color: #800000; border: 1px none #000000;">
     <div align="center"><span class="style2">Upload New Events</span></div>
  </div>
  <form name="form1" method="post" action="/etawahmini/servlet/Upload" enctype="multipart/form-data">
  <div style="position:absolute; left: 546px; top: 134px;">
    <table width="546" height="200" border="0">
      <tr>
        <td width="125"><span class="style1">Description:</span></td>
        <td width="259"><label>
          <input type="text" name="des">
        </label></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><label>
          <input type="file" name="fl">
        </label></td>
      </tr>
	  
        <td>&nbsp;</td>
        <td><label>
          <input type="submit" name="Submit" style="position: absolute; width: 151px; height: 34px; background-color: #999900;
           layer-background-color: #999900; border: 1px none #000000;
           -webkit-border-radius:10px;-moz-border-radius:10px;border: 1px none #000000;" value="Submit">
        </label></td>
      </tr>
    </table>
	</div>
	<% if (msgtxt!=null){ %><div id="did" style="position:absolute; left: 713px; top: 377px; width: 225px; height: 47px;font-style:normal;color:#800000">
 <%=msgtxt%></div><%} %>
  </form>
  </body>
</html>
