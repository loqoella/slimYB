<%@ include file="/WEB-INF/views/header.jsp" %>

<div class="jumbotron">
    <h1 class="display-4" style="text-align:center;"> Login</h1>
    <br>

	<br>
	<form method="post">
		<a style="position:absolute;left: 35%;">Email Address : </a>
		<input type="text" name="email-address" style="margin-left: 50%;">
		<br>
		<br>
		<a style="position:absolute;left: 35%;">Password : </a>
		<input type="password" name="password" style="margin-left: 50%;">
		<br>
		<br>
		<br>
		<p style="font-size:13px;text-align:center;text-decoration:underline">Forgotten account or password?</p>
		<br>
		<input type="submit" value="login" style="margin-left: 38%;"> 
		<a style="position:absolute;left: 52%;font-size:15px;text-decoration:underline">Create an account</a>
		<a href="/slimYB/register" style="position:absolute;left: 52%;font-size:15px;text-decoration:underline">Create an account</a>
	</form>
	<br>
</div>
 
<%@ include file="/WEB-INF/views/footer.jsp" %>




