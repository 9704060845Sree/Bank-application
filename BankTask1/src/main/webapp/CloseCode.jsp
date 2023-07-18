<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>close</title>
</head>
<body>
<%
int accountnum=Integer.parseInt(request.getParameter("ano"));
String name=request.getParameter("name");
String password=request.getParameter("pswd");
try
{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sree","sree");
		PreparedStatement ps=con.prepareStatement("select *from sdfc where accountnum=? and name=? and password=?");
		ps.setInt(1, accountnum);
		ps.setString(2,name);
		ps.setString(3,password);
		String status="valid";
		ResultSet rs=ps.executeQuery();
		
		if (rs.next()) 
		{
			status="invalid";
	PreparedStatement us=con.prepareStatement("update sdfc set status=? where accountnum=? and name=? and password=?");
	   
		us.setString(1, status);
		us.setInt(2, accountnum);
		us.setString(3,name);
		us.setString(4,password);
		int i=us.executeUpdate();
		out.println("<h1>"+"Account Closing"+"</h1>");
		out.println("Account Closed with Account Number :"+accountnum+"<br>");
		
		}
		else {
			out.print("ENTER VALID DETAILS");
		}

	  		con.close();
}
	catch(Exception ex)
{
	System.out.println(ex);
}
%>
</body>
</html>