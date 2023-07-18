<html>
<head>

<style type="text/css">
table{
    border: 2px dotted black;
    width: 30%;
    padding: 10px;
}
</style>
<script>
function check()
{
	var v1=f.ano.value;
	var v2=f.name.value;
	var v3=f.pswd.value;
	var v4=f.tano.value;
	var v4=f.amo.value;
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
	if (v4=="")
	{
		alert("please insert tano");
	return false;
  }
	if (v5=="")
	{
		alert("please insert amo");
	return false;
  }

}

</script>
</head>
<body>
<center>
<center><h1 style="color: red">SDFC BANK</h1>
<button><a href="Home.jsp">Home</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="newaccount.jsp">NewAccount</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="balance.jsp">Balance</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="deposit.jsp">Deposit</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="Withdraw.jsp">Withdraw</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="transfer.jsp">Transfer</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="close.jsp">Close A/C</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="about.jsp">AboutUs</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<form action="TransferCode.jsp" method="post"  name="f" onsubmit="return check()">
<h1>TRANSFER FORM</h1>
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
<td>Target Account No :</td>
<td><input type="text" name="tano" placeholder="Enter account number"></td>
</tr>
<tr>
<td>Amount:</td>
<td><input type="text" name="amo" placeholder="Enter account "></td>
</tr>
<tr>
<td><input type="submit" value="Submit" ></td>
<td><input type="reset" value="Clear" ></td>
</tr>
</table>
</form>
</center>
</body>
</html>