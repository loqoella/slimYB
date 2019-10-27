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
	<div class="editTitle">
		<h4 >Title</h4>
		<TextArea row="4", cols="70" name="newTitle"><c:out value="${forum.getTitle()}"> </c:out></TextArea>
	</div>
	<div class="editTag">
		<h4>Tag:</h4>
		<TextArea rows="1",cols="30" name="newTag"><c:out value="${forum.getTag()}"></c:out></TextArea>
	</div>

	<div class="editContent">
    	<h4>Content:</h4> 
    	<TextArea rows="8" cols="70" name="newContent"><c:out value="${forum.getContent()}"> </c:out></TextArea>
    </div>
    </br></br>
    
    <div class="editbuttons" >
    	<button type="submit" class="btn btn-warning" style="width:10rem; font-size:20px;color:white;">CONFIRM</button></a>
	</div>
	
</div>
</form>

<%@ include file="/WEB-INF/views/footer.jsp" %>