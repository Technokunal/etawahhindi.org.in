<%@ page language="java" import="java.util.*,com.etawahmini.dbinfo.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'viewuser.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
function Write()
{ document.getElementsByTagName("chk").readonly="write";
}
</script>

  <style type="text/css">
<!--
.style2 {
	color: #FFFFFF;
	font-size: 3em;
	font-weight: bold;
}
-->
  </style></head>
  
  <body>
   <body background="../img/Picture1.jpg">
   <a href="/etawahmini/jsp/admin.jsp" style="position:absolute; width: 71px; height: 15px; left: 384px; top: 27px;">Back</a>
   <% Connection con=null;ResultSet rs=null;ResultSet rs1=null;PreparedStatement ps=null;PreparedStatement ps1=null;%>
   <div style="position:absolute; width: 628px; height: 67px; left: 482px; top: 16px; background-color: #800000; 
   layer-background-color: #800000; border: 1px none #000000;">
     <div align="center"><span class="style2">Modify User Details </span></div>
   </div>
   <div style="position: absolute; left: -6px; top: 102px; width: 1410px; height: 1568px;">
     <form action="/etawahmini/servlet/DBcommit" method="Post">
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
   <div style="position:absolute; width: 212px; height: 39px; left: 134px; top: -84px;background-color:#800000"><span style="font-size: 2em;color: white"><%=uid%></span></div>
   <table width="1408" height="162" bordercolor="#999900">
  <th width="201">Userid</th>
  <th width="197">First-Name</th>
  <th width="197">Last-Name</th>
  <th width="202">City</th>
  <th width="197">Phone-Number</th>
  </tr>
  <%
  con=CrudOperation.makeConnection();
 // String strql="select * from tbllogin ";
  String strql1="select * from regisrtation ";
   try
		    {
		    con.setAutoCommit(false);
		      ps1=con.prepareStatement(strql1);
		      rs1=ps1.executeQuery();
  while(rs1.next())
  {%>
  <tr >
    <td><input type="text" name="tableuserid" value="<%=rs1.getString("userid")%>" readonly="readonly" />
    
    <td><input type="text" name="tablefname" value="<%=rs1.getString("firstname")%>"readonly="readonly"/></td>
    <td><input type="text" name="tablelname" value="<%=rs1.getString("lastname")%>"readonly="readonly"/></td>
  <td><input type="text" name="tablecity" value="<%=rs1.getString("city")%>"readonly="readonly"/></td>
  <td><input type="text" name="tablephonenum" value="<%=rs1.getString("phonenum")%>"readonly="readonly"/></td>
  <td>&nbsp;</td></tr>
  <%
  }
  }
  catch(SQLException se)
		{
		System.out.println(se);
		}
		finally{
		try{
			if(rs!=null)
			{	rs.close();	}
		
			if(con!=null)
			{	con.close();	}
			}catch(SQLException e)
			{System.out.println(e);
			}
			}//finally close
			}//else close
			 %>
			 <tr><td height="50" colspan="8" align="Center">&nbsp;</td>
   </table>
   </form>
  </div>
  </body>
  </body>
</html>
