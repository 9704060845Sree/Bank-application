<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<%
	int accountnum=Integer.parseInt(request.getParameter("acno"));
	String name=request.getParameter("uname");
	String password=request.getParameter("pswd");
	String confpassword=request.getParameter("cpswd");
	double amount=Double.parseDouble(request.getParameter("amt"));
	String address=request.getParameter("addr");
	long mobileno=Long.parseLong(request.getParameter("mob"));
	String status="valid";
	try
	{
		if(password.equals(confpassword)){
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sree","sree");
		PreparedStatement ps=con.prepareStatement("insert into sdfc values(?,?,?,?,?,?,?)");
		ps.setInt(1,accountnum);
		ps.setString(2,name);
		ps.setString(3,password);
		ps.setDouble(4,amount);
		ps.setString(5,address);
		ps.setLong(6,mobileno);
		ps.setString(7,status);
		int i=ps.executeUpdate();
		out.print(i+"New Record Inserted Successfully....!");
		con.close();
		}
	else{
		out.print("Password must match with Conform password");
	}
	}
	catch(Exception ex)
	{
		out.print(ex);
	}
%>
</body>
</html>