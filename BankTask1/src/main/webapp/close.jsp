<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table{
    border: 2px dotted black;
    width: 30%;
    padding: 10px;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
function check()
{
	var v1=f.ano.value;
	var v2=f.name.value;
	var v3=f.pswd.value;
	if (v1=="")
	{
		alert("please insert ano");
	return false;
	}
	if (v2=="")
	{
		alert("please insert name");
	return false;
	}
	if (v3=="")
	{
		alert("please insert pswd");
	return false;
  }

}

</script>
<body>
<center><h1 style="color: red">SDFC BANK</h1>
<center><button><a href="Home.jsp">Home</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="newaccount.jsp">NewAccount</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="balance.jsp">Balance</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="deposit.jsp">Deposit</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="Withdraw.jsp">Withdraw</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="transfer.jsp">Transfer</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="close.jsp">Close A/C</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="about.jsp">AboutUs</a></button>&nbsp;&nbsp;&nbsp;&nbsp;   
 <p></p>
<form action="CloseCode.jsp" method="post"  name="f" onsubmit="return check()">
<h1>CLOSE ACCOUNT</h1>
<table>
<tr>
<td>Account No:</td>
<td><input type="text" name="ano" placeholder="Enter account number"></td>
</tr>
<tr>
<td>Name :</td>
<td><input type="text" name="name" placeholder="Enter user Name"></td>
</tr>
<tr>
<td>Password :</td>
<td><input type="password" name="pswd" placeholder="Enter user password"></td>
</tr>
<tr>
<tr>
<td><input type="submit" value="Submit" ></td>
<td><input type="reset" value="Clear" ></td>
</tr>
</table>
</form>
</center>
</body>
</html>