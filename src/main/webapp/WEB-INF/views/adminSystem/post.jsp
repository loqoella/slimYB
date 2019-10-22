<%@ include file="/WEB-INF/views/adminSystem/headerAdmin.jsp" %>


<!--Title -->
<div class ="titlemes">
    <h1 class="display-4"><strong> Hello,&ensp;&ensp;Administrator!  </strong></h1>
    <p class="lead"> Add a new post to the forum:</p>
   
</div>

<div class="posttitles">
	<h3 class="posttitle1">Title</h3>
	<h4>Tag: #</h4>

	<div class="imagesection">
		<img src="${pageContext.request.contextPath}/images/admin/f1.jpg" style="width:30rem;">
	</div>

    <div class="contentsection">
    	<p>Content</p>
    </div>
    
    <div class="postbuttons">
    	<a href="#"><button type="button" class="btn btn-warning" style="width:10rem; font-size:20px;color:white;">EDIT</button></a>
	</div>
	<div class="postbuttons">
		<a href="#"><button type="button" class="btn btn-danger" style="width:10rem; font-size:20px;color:white;">DELETE</button></a>
		
	</div>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>