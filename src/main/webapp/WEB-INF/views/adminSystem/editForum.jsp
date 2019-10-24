<%@ include file="/WEB-INF/views/adminSystem/headerAdmin.jsp" %>


<!--Title -->
<div class ="titlemes">
    <h1 class="display-4"><strong> Hello,&ensp;&ensp;Administrator!  </strong></h1>
    <p class="lead"> Add a new post to the forum:</p>
   
</div>
<form action="/slimYB/post/updateForum">
<div class="posttitles">
	<input name="id" value="${forum.getId()}" type="hidden">
	<input name="user" value="${forum.getUser()}" type="hidden">
	<h3 >Title</h3>
	<TextArea row="4", cols="70" name="newTitle"><c:out value="${forum.getTitle()}"> </c:out></TextArea>
	</br></br>
	<h4>Tag:</h4>
	<TextArea rows="1",cols="30" name="newTag"><c:out value="${forum.getTag()}"></c:out></TextArea>
	</br></br>

	<div class="contentsection">
    	<p>Content:</p> 
    	<TextArea rows="8" cols="70" name="newContent"><c:out value="${forum.getContent()}"> </c:out></TextArea>
    </div>
    </br></br>
    
    <div class="postbuttons">
    	<button type="submit" class="btn btn-warning" style="width:10rem; font-size:20px;color:white;">EDIT</button></a>
	</div>
	
</div>
</form>

<%@ include file="/WEB-INF/views/footer.jsp" %>