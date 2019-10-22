<%@ include file="/WEB-INF/views/adminSystem/headerAdmin.jsp" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Profile data</title>
</head>
<!--Title -->
<div class ="titlemes">
    <h1 class="display-4"><strong> User&ensp;&ensp;Profile </strong></h1>
    <p class="lead"> Now you can check the detailed information of the user profile:</p>
   
</div>
	
<div class="dataprofile">
	<h2 class=subtitle>Information</h2><br>
	<div class="info">
		<div class="detailedinfo">
			<font size="4"><img src="${pageContext.request.contextPath}/images/admin/name2.jpg" style="width: 3rem;">&nbsp;&nbsp;Username:&nbsp;&nbsp;<c:out value="${user.getUsername()}"> </c:out></font><br><br>
		</div>
		<div class="detailedinfo">
			<font size="4"><img src="${pageContext.request.contextPath}/images/admin/email1.jpg" style="width: 3rem;">&nbsp;&nbsp;Email:&nbsp;&nbsp;<c:out value="${user.getEmail()}"> </c:out></font><br><br>
		</div>
		<div class="detailedinfo">
			<font size="4"><img src="${pageContext.request.contextPath}/images/admin/birth.jpg" style="width: 3rem;">&nbsp;&nbsp;Birthday:</font><br><br>
		</div>
		<div class="detailedinfo">
			<font size="4"><img src="${pageContext.request.contextPath}/images/admin/flower1.jpg" style="width: 3rem;">&nbsp;&nbsp;Age:</font><br><br>
		</div>
		<div class="detailedinfo">
			<font size="4"><img src="${pageContext.request.contextPath}/images/admin/gender1.jpg" style="width: 3rem;">&nbsp;&nbsp;Gender:</font><br><br>
		</div>
	</div>
</div>
<br><br><br>
<div class="dataprofile">
	<h2 class=subtitle>Physical Data</h2><br>
	<div class="info">
		<div class="detailedinfo">
			<font size="4"><img src="${pageContext.request.contextPath}/images/admin/height1.jpg" style="width: 3rem;">&nbsp;&nbsp;Height:</font><br><br>
		</div>
		<div class="detailedinfo">
			<font size="4"><img src="${pageContext.request.contextPath}/images/admin/weight2.jpg" style="width: 3rem;">&nbsp;&nbsp;Weight:</font><br><br>
		</div>
		<div class="detailedinfo">
			<font size="4"><img src="${pageContext.request.contextPath}/images/admin/bust.jpg" style="width: 3rem;">&nbsp;&nbsp;Bust:</font><br><br>
		</div>
		<div class="detailedinfo">
			<font size="4"><img src="${pageContext.request.contextPath}/images/admin/waist.jpg" style="width: 3rem;">&nbsp;&nbsp;Waist:</font><br><br>
		</div>
		<div class="detailedinfo">
			<font size="4"><img src="${pageContext.request.contextPath}/images/admin/hips1.jpg" style="width: 3rem;">&nbsp;&nbsp;Hips:</font><br><br>
		</div>
		<div class="detailedinfo">
			<font size="4"><img src="${pageContext.request.contextPath}/images/admin/BMI.jpg" style="width: 3rem;">&nbsp;&nbsp;BMI:</font><br><br><br>
		</div>
	</div>
	
</div><br><br>

<div class="profilebutton">
	<a href="/slimYB/profiledata"><button type="button" class="btn btn-warning">Delete Profile</button></a>
</div>

<div class="endblock2">
	<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</div> 

<%@ include file="/WEB-INF/views/footer.jsp" %>