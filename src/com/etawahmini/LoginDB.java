package com.etawahmini;

import java.io.IOException.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
import com.etawahmini.dbinfo.*;
public class LoginDB extends HttpServlet {
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
	
	/*public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}*/

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
			{

		response.setContentType("text/html");
		String ui=request.getParameter("luid");
		String upass=request.getParameter("lpwd");
		con=CrudOperation.makeConnection();
		String strsql="select * from tbllogin where userpass=? and userid=?";
		try
		{
			ps=con.prepareStatement(strsql);
			ps.setString(1,upass);
			ps.setString(2,ui);
			System.out.print(ps);
			rs=ps.executeQuery();
			if(rs.next())
			{
				HttpSession hs=request.getSession();
				   hs.setAttribute("userinfo",ui);
		   if(rs.getString("usertype").equals("admin"))
		   {
		     response.sendRedirect("/etawahmini/jsp/admin.jsp");
		   }else
		   {
			   response.sendRedirect("/etawahmini/jsp/login.jsp");
		   }
		   }
		   else
		   {
             response.sendRedirect("/etawahmini/jsp/adminlogin.jsp?msg=Invalid UserId/Password");
	       }
}
	
catch(SQLException e)
{
	System.out.print(e);
}
}
}