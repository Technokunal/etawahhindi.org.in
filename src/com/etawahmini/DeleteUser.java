package com.etawahmini;


import java.io.IOException;
import java.sql.*;

	
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etawahmini.dbinfo.CrudOperation;

public class DeleteUser extends HttpServlet {

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
	 * 
	 */
	Connection con=null;
	PreparedStatement ps=null;
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
		String [] deluserid=request.getParameterValues("chk");
		String strsql="delete from tbllogin where userid=?";
		con=CrudOperation.makeConnection();
		try{
			con.setAutoCommit(false);
			ps=con.prepareStatement(strsql);
			for(int i=0;i<deluserid.length;i++)
			{
				ps.setString(1,deluserid[i]);
				ps.addBatch();
			}
			int [] delarr =ps.executeBatch();
			con.commit();
		response.sendRedirect("/etawahmini/jsp/deleteuser.jsp");
				
		}
		catch(SQLException se)
		{
		System.out.println(se);
		}
		finally{
		try{
			if(ps!=null)
			{	ps.close();	}
			if(con!=null)
			{	con.close();	}
			}catch(SQLException e)
			{System.out.println(e);
			}
			}//finally close
			}//else close
	}

