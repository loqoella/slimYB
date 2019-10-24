<%@ include file="/WEB-INF/views/adminSystem/headerAdmin.jsp" %>


<!--Title -->
<div class ="titlemes">
    <h1 class="display-4"><strong> Hello,&ensp;&ensp;Administrator!  </strong></h1>
    <p class="lead"> Add a new post to the forum:</p>
   
</div>

<div class="posttitles">
	<h3 class="posttitle1"><c:out value="${application.getTitle()}"> </c:out></h3>
	<h4>Tag: #<c:out value="${application.getTag()}"> </c:out></h4>


    <div class="contentsection">
    	<p>Content:<c:out value="${application.getContent()}"> </c:out></p>
    </div>
    
    <div class="postbuttons">
    	<a href="/slimYB/applicationcheck/approveApplication?id=${application.getId()}"><button type="button" class="btn btn-warning" style="width:10rem; font-size:20px;color:white;">APPROVE</button></a>
	</div>
	<div class="postbuttons">
		<a href="/slimYB/applicationcheck/declineApplication?id=${application.getId()}"><button type="button" class="btn btn-danger" style="width:10rem; font-size:20px;color:white;">DECLINE</button></a>
		
	</div>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>