<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>withdraw</title>
<style type="text/css">
table{
    border: 2px dotted black;
    width: 40%;
    padding: 10px;
}
</style>
<script>
function check()
{
	var v1=f.ano.value;
	var v2=f.uname.value;
	var v3=f.psw.value;
	var v4=f.amt.value;
	if (v1=="")
	{
		alert("please insert ano");
	return false;
	}
	if (v2=="")
	{
		alert("please insert uname");
	return false;
	}
	if (v3=="")
	{
		alert("please insert psw");
	return false;
  }
	if (v4=="")
	{
		alert("please insert amt");
	return false;
  }

}

</script>
</head>
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

<h1>WITHDRAW FORM</h1>
<form action="WithdrawCode.jsp" method="post" name="f" onsubmit="return check()">
<table>
<tr>
<td>Account No: </td>
<td><input type="text" name="ano" placeholder="enter account no"></td>
</tr>
<tr>
<td>Name: </td>
<td><input type="text" name="uname" placeholder="enter account name"></td>
</tr>
<tr>
<td>Password: </td>
<td><input type="text" name="psw" placeholder="enter password"></td>
</tr>
<tr>
<td>Amount: </td>

<td><input type="text" name="amt" placeholder="enter amount"></td>
</tr>
<tr>
<td><input type="submit" name="submit" ></td>
<td><input type="reset" name="clear"></td>
</tr>




</table>

</form>
</center>
</body>
</html>