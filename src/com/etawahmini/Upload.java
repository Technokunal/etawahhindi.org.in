package com.etawahmini;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etawahmini.dbinfo.CrudOperation;
import com.oreilly.servlet.MultipartRequest;

public class Upload extends HttpServlet {

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
	 */
	String controlname=null;
	File fobj=null;
	String actualname=null;
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Connection con=null;
		PreparedStatement ps=null;
		MultipartRequest mpt=null;
		String pt= getServletContext().getRealPath("/");
		
		String newpath=pt+ "admin";
		System.out.println(newpath);
		File f=new File(newpath);
		if(!f.exists())
		{
			f.mkdir();
		}
		mpt=new MultipartRequest(request,newpath,2*1024*1024);
		
		String desc=mpt.getParameter("des");
		Enumeration e= mpt.getFileNames();
		System.out.println(newpath);
		while(e.hasMoreElements())
		{
			controlname=(String)e.nextElement();
			fobj=mpt.getFile(controlname);
			actualname=fobj.getName();
			out.println("Filename="+actualname);
			out.println("Description="+desc);
		}
		try{
			con=(Connection) CrudOperation.makeConnection();
		String str="insert into documents values(?,?,?)";
		ps=con.prepareStatement(str);
		ps.setString(1,desc);
		ps.setString(2,actualname);
		java.util.Date d = new java.util.Date();
		 java.sql.Date Sd = new java.sql.Date(d.getTime());
		ps.setDate(3,Sd);
		int  i=ps.executeUpdate();
		System.out.println(i);
		response.sendRedirect("/etawahmini/jsp/upload.jsp?msg=File Uploaded Successfully");
		}catch(SQLException se)
		{
			System.out.println(se);
		}
	}
	

}
