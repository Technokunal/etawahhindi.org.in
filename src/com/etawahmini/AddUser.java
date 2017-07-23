package com.etawahmini;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etawahmini.dbinfo.CrudOperation;

public class AddUser extends HttpServlet {
	
	Connection con=null;
	ResultSet rs=null;
	PreparedStatement ps=null;

	/**
	 * Constructor of the object.
	 */
	public AddUser() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String ui=request.getParameter("luid");
		String upass=request.getParameter("lpwd");
		String role=request.getParameter("select");
		con=CrudOperation.makeConnection();
		String strsql="insert into tbllogin values(?,?,?)";
		try
		{
			 con.setAutoCommit(false);
			ps=con.prepareStatement(strsql);
			ps.setString(1,upass);
			ps.setString(2,ui);
			ps.setString(3, role);
			System.out.print(ps);
			 int rw=ps.executeUpdate();
			 out.println("row inserted");
			   if(rw>0)
			   {
			    con.commit();
			    
			    response.sendRedirect("/etawahmini/jsp/adminadduser.jsp");
			   }
		}
		catch (Exception e) {
			
		}
	}

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
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
