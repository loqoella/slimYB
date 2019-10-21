<%@ include file="/WEB-INF/views/adminSystem/headerAdmin.jsp" %>


<!--Title -->
<div class ="titlemes">
    <h1 class="display-4"><strong> Hello,&ensp;&ensp;Administrator!  </strong></h1>
    <p class="lead"> Welcome to the Forum of SlimYB:</p>
   
</div>



<div class="modulehome">		   
	<div class="card" style="width:25rem; float: left;">
	  <img src="${pageContext.request.contextPath}/images/admin/blog1.jpg" style="height: 15rem;" class="card-img-top" alt="...">
	  <div class="card-img-overlay">
	    <a href="/slimYB/addforum" class="linkeforum">Share Post</a>
	    <p class="card-text">Add a new post to the forum<br>&ensp;</p>    
	    
	  </div>
	</div>
</div>



<div class="modulehome">
	<div class="card" style="width: 25rem; float: left;">
	  <img src="${pageContext.request.contextPath}/images/admin/blog2.jpg" style="height: 15rem;" class="card-img-top" alt="...">
	  <div class="card-img-overlay">
	    <a href="/slimYB/forums" class="linkeforum">View Forum</a>
	    <p class="card-text">View the existing posts on the forum<br>Edit or Delete existing posts</p>
	    
	  </div>
	</div>
</div>

<img src="${pageContext.request.contextPath}/images/admin/p2.jpg" style="width: 18rem;" class="card-img-top">
<br><br><br><br><br><br>

<div class="modulehome">
	<div class="card" style="width: 25rem; float: left;">
	  <img src="${pageContext.request.contextPath}/images/admin/blog3.jpg" style="height: 15rem;" class="card-img-top" alt="...">
	  <div class="card-img-overlay">
	    <a href="/slimYB/application" class="linkeforum">User Application</a>
	    <p class="card-text">Check the users' application of posts and audit the posts</p>
	  </div>
	</div>
</div>

<div class="endblock">
	<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</div> 

<%@ include file="/WEB-INF/views/footer.jsp" %>