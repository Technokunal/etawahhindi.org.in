package com.etawahmini;
import com.etawahmini.dbinfo.*;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etawahmini.dbinfo.CrudOperation;

import java.sql.*;
public class Registration extends HttpServlet {

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
	Connection con=null;
	PreparedStatement ps=null;
	PreparedStatement ps1=null;
	ResultSet rs=null;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userid=request.getParameter("id");
		
		System.out.println(userid);
		String ui=request.getParameter("rid");
		con = CrudOperation.makeConnection();
		String reguserid="select * from tbllogin where userid=?";
		try
		{
		 ps=con.prepareStatement(reguserid);
	      ps.setString(1,userid);
	      rs=ps.executeQuery();
		if(rs.next())
		{
			out.println("UserId already Exits");
		}
		
			}
			
			catch(SQLException e)
			{
				System.out.print(e);
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
			throws ServletException, IOException 
			{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String fn=request.getParameter("rfn");		
		String ln=request.getParameter("rln");
		String ui=request.getParameter("rid");
		String city=request.getParameter("rr");
		String rp=request.getParameter("rph");
		String gn=request.getParameter("gender");
		
		con = CrudOperation.makeConnection();
		String Strinsertreg="insert into regisrtation(userid,firstname,lastname,city,phonenum,gender,regdate) values(?,?,?,?,?,?,?)";
		

		    try
		    {
		      ps1=con.prepareStatement(Strinsertreg);
		      ps1.setString(1,ui);
		      ps1.setString(2,fn);
		      ps1.setString(3,ln);
		      ps1.setString(4,city);
		      ps1.setString(5,rp);
		      ps1.setString(6,gn);

		 java.util.Date d = new java.util.Date();
		 java.sql.Date Sd = new java.sql.Date(d.getTime());
		  ps1.setDate(7,Sd);
		  
		  System.out.println(ps1);
		  int rw1= ps1.executeUpdate();
		 if( rw1>0)
		   {
		    	    
		    response.sendRedirect("/etawahmini/jsp/welcome.jsp?msg=Registered successfully");
		   }
		
		}
	 catch(SQLException e){
		 
		 
		 response.sendRedirect("/etawahmini/jsp/register.jsp?msg=E-mail ID already exits...Please Re-register with another E-mail ID.");
		 System.out.println(e);
	 }
			}

	}


