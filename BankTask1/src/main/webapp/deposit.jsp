<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table{
    border: 2px dotted black;
    width: 40%;
    padding: 10px;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
</style>
<script>
function check()
{
	var v1=f.accno.value;
	var v2=f.name.value;
	var v3=f.pwd.value;
	var v4=f.amt.value;
	if (v1=="")
	{
		alert("please insert accno");
	return false;
	}
	if (v2=="")
	{
		alert("please insert name");
	return false;
	}
	if (v3=="")
	{
		alert("please insert pwd");
	return false;
  }
	if (v4=="")
	{
		alert("please insert amt");
	return false;
  }

}

</script>
<body>
<center><h1 style="color: red">SDFC BANK</h1>
<button><a href="Home.jsp">Home</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="newaccount.jsp">NewAccount</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="balance.jsp">Balance</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="deposit.jsp">Deposit</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="Withdraw.jsp">Withdraw</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="transfer.jsp">Transfer</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="close.jsp">Close A/C</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="about.jsp">AboutUs</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<table>
<form action="DepositCode.jsp" method="post" name="f" onsubmit="return check()">
<h1 style="color:red">DEPOSIT FORM</h1>
<tr>
<td>account no:</td>
<td><input type="text" name="accno"></td>
</tr>
<tr>
<td>name:</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>password:</td>
<td><input type="password" name="pwd"></td>
</tr>
<tr>
<td>amount:</td>
<td><input type="number" name="amt"></td>
</tr>
<tr>
<td><input type="submit" name="submit"></td>
<td><input type="reset" name="clear"></td>
</tr>

</form>
</table>
</center>
</body>
</html>