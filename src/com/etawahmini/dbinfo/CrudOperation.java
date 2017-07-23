package com.etawahmini.dbinfo;
import java.sql.*;
public class CrudOperation {
	private static Connection cn=null;
	private static ResultSet rs=null;
	private static PreparedStatement ps=null;
	public static Connection makeConnection()
	{
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	}
	catch(ClassNotFoundException cne)
	{
	System.out.println(cne);
	}
	try
	{
	cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/etawahhindi","root","root");
	}
	catch(SQLException se)
	{
	System.out.println(se);
	}
	return cn;
	}//method
	
	public static ResultSet getdata(String sql)
	{
	
		try
		{
			ps=cn.prepareStatement(sql);
			rs=ps.executeQuery();
		}
			catch(SQLException se)
			{
				System.out.println(se);
			}
		return rs;
	}
}
