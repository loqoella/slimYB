<%@ include file="/WEB-INF/views/adminSystem/headerAdmin.jsp" %>


<!--Title -->
<div class ="titlemes">
    <h1 class="display-4"><strong> Hello,&ensp;&ensp;Administrator!  </strong></h1>
    <p class="lead"> Welcome to the Forum of SlimYB:</p>
   
</div>



<div class="modulehome1">		   
	<div class="card" style="width:25rem; float: left;">
	  <img src="${pageContext.request.contextPath}/images/admin/b1.jpg" style="height: 15rem;" class="card-img-top" alt="...">
	  <div class="card-img-overlay">
	    <a href="/slimYB/addforum" class="linkforum"><h3 class="textforum">Share Post</h3></a>
	    <p class="desforum">Add a new post to the forum<br>&ensp;</p>    
	    
	  </div>
	</div>
</div>



<div class="modulehome1">
	<div class="card" style="width: 25rem; float: left;">
	  <img src="${pageContext.request.contextPath}/images/admin/b1.jpg" style="height: 15rem;" class="card-img-top" alt="...">
	  <div class="card-img-overlay">
	    <a href="/slimYB/forums" class="linkforum"><h3 class="textforum">View Posts</h3></a>
	    <p class="desforum">View the existing posts on the forum<br>Edit or Delete existing posts</p>
	    
	  </div>
	</div>
</div>
<div class="pikaimg">
	<img src="${pageContext.request.contextPath}/images/admin/g5.gif" style="width: 18rem;" class="rounded mx-auto d-block">	
</div>
<br><br><br><br><br><br>

<div class="modulehome2">
	<div class="card" style="width: 25rem; float: left;">
	  <img src="${pageContext.request.contextPath}/images/admin/b1.jpg" style="height: 15rem;" class="card-img-top" alt="...">
	  <div class="card-img-overlay">
	    <a href="/slimYB/application" class="linkforum"><h3 class="textforum">User Application</h3></a>
	    <p class="desforum">Check the users' application of posts and audit the posts</p>
	  </div>
	</div>
</div>



<%@ include file="/WEB-INF/views/footer.jsp" %>