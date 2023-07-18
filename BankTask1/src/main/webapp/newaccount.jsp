<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	border: 2px Dotted black;
	  width: 40%;
	padding: 10px;
}
h1{
	color: red;
}
</style>
<script>
function chech()
{
	var v1=f.acno.value;
	var v2=f.uname.value;
	var v3=f.pswd.value;
	var v4=f.cpswd.value;
	var v5=f.amt.value;
	var v6=f.addr.value;
	var v7=f.mob.value;	
	if (v1=="")
		{
		alert("please insert acno");
		return false;
		}
	if (v2=="")
	{
	alert("please insert uname");
	return false;
	}
	if (v3=="")
	{
	alert("please insert pswd");
	return false;
	}
	if (v4=="")
	{
	alert("please insert cpswd");
	return false;
	}
	if (v5=="")
	{
	alert("please insert amt");
	return false;
	}
	if (v6=="")
	{
	alert("please insert addr");
	return false;
	}
	if (v7=="") 
	{
	alert("please insert mob");
	return false;
	}
	
}

</script>

</head>
<body>
<center><h1 style="color: red">SDFC BANK</h1></center>
<center><button><a href="Home.jsp">Home</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="newaccount.jsp">NewAccount</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="balance.jsp">Balance</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="deposit.jsp">Deposit</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="Withdraw.jsp">Withdraw</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="transfer.jsp">Transfer</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="close.jsp">Close A/C</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="about.jsp">AboutUs</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<form name="f"  action="NewAccountCode.jsp" method="post" name="f" onsubmit="return chech()">
  <center>
    <table>
 <h1>OPEN ACCOUNT FORM</h1>
 					       <!----Account Number---->
                      <tr>
                        <td>
                             Account Number:
                        </td>
                        <td>
                            <input type="number"
                            name="acno"
                            placeholder="Enter Account Number">
                        </td>
                    </tr>
                    <!----name---->
                    <tr>
                        <td>
                             Name:
                        </td>
                        <td>
                            <input type="text"
                            name="uname"
                            placeholder="Enter name">
                        </td>
                    </tr>
                    <!----Password---->
                    <tr>
                        <td>
                            Password:
                        </td>
                        <td>
                            <input type="password"
                            name="pswd"
                            placeholder="Enter Password">
                        </td>
                    </tr>
                        <!----Confirm_Password---->
                    <tr>
                        <td>
                            Confirm_Password:
                        </td>
                        <td>
                            <input type="password"
                            name="cpswd"
                            placeholder="Enter Confirm Password">
                        </td>
                    </tr>
                             <!----Amount---->
                      <tr>
                        <td>
                             Amount:
                        </td>
                        <td>
                            <input type="number"
                            name="amt"
                            placeholder="Enter Amount">
                        </td>
                    </tr>
                    <!-----Address------>
                        <tr>
                            <td>Address:</td>
                            <td>
                            <textarea  cols="" rows="" name="addr"></textarea>
                            </td>
                        </tr>
                              <!----Mobile Number---->
                      <tr>
                        <td>
                            Mobile Number:
                        </td>
                        <td>
                            <input type="text"
                            name="mob"
                            placeholder="Enter Mobile Number">
                        </td>
                    </tr>
                        <tr>
                            <td><input type="submit" value="Register"></td>
                            <td><input type="reset" value="Clear"></td>
                        </tr>
                    </table></center>
            </form>
</body>
</html>