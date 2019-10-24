<%@ include file="/WEB-INF/views/adminSystem/headerAdmin.jsp" %>


<!--Title -->
<div class ="titlemes">
    <h1 class="display-4"><strong> Hello,&ensp;&ensp;Administrator!  </strong></h1>
    <p class="lead"> Add a new post to the forum:</p>
   
</div>

<div class="posttitles">
	<h3 class="posttitle1"><c:out value="${forum.getTitle()}"> </c:out></h3>
	<h4>Tag: #<c:out value="${forum.getTag()}"> </c:out></h4>

	<div class="imagesection">
		<img src="${pageContext.request.contextPath}/images/admin/f1.jpg" style="width:30rem;">
	</div>

    <div class="contentsection">
    	<p><c:out value="${forum.getContent()}"> </c:out></p>
    </div>
    
    <div class="postbuttons">
    	<a href="/slimYB/post/editForum?id=${forum.getId()}"><button type="button" class="btn btn-warning" style="width:10rem; font-size:20px;color:white;">EDIT</button></a>
	</div>
	<div class="postbuttons">
		<a href="/slimYB/post/deleteForum?id=${forum.getId()}"><button type="button" class="btn btn-danger" style="width:10rem; font-size:20px;color:white;">DELETE</button></a>
		
	</div>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>