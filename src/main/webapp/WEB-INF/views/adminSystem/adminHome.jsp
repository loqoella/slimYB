<%@ include file="/WEB-INF/views/headerAdmin.jsp" %>

<br> 
<br>
<div>
    <h1 class="display-4"> Hello! Administrator </h1>
    <p class="lead"> The available options are showing below:</p>
</div>
<br> 
<br> 




<div class="card" style="width: 18rem; float: left;">
  <img src="${pageContext.request.contextPath}/images/Poke1.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">User Profile</h5>
    <p class="card-text">The detailed profile will be shown in this page, and Administrator can modify the profiles.</p>
    <a href="/slimYB/userprofile" class="btn btn-primary">Go</a>
  </div>
</div>
<div style="float:left;">
&ensp;&ensp;&ensp;&ensp;&ensp;
</div>
<div class="card" style="width: 18rem; float: left;">
  <img src="${pageContext.request.contextPath}/images/Poke1.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Forum</h5>
    <p class="card-text">Administrators are able to edit specific text of the post, and they can post their own posts.</p>
    <a href="/slimYB/forum" class="btn btn-primary">Go </a>
  </div>
</div>

 

<%@ include file="/WEB-INF/views/footer.jsp" %>