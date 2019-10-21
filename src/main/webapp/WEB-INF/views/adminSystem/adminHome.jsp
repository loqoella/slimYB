<%@ include file="/WEB-INF/views/adminSystem/headerAdmin.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Administrator Homepage</title>
</head>
<!--Title -->
<div class ="titlemes">
    <h1 class="display-4"><strong> Hello,&ensp;&ensp;Administrator!  </strong></h1>
    <p class="lead"> The available options are showing below:</p>
   
</div>



<div class="card" style="width:30rem; float: left;">
  <img src="${pageContext.request.contextPath}/images/admin/user.jpg" style="height: 15rem;" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">User Profile</h5>
    <p class="card-text">The user account and recorded profile data will be shown, and Administrator can check or delete the profile.</p>
    <hr style="FILTER: progid:DXImageTransform.Microsoft.Shadow(color=#8373ce,direction:145,strength:15)" width="100%" color="#FFC107" SIZE=3>
    <p class="card-text">For security and privacy reasons, the administrator is not allowed to see users' chatting records or diaries.</p>
    <p>&nbsp;</p>
    
    <div align="center"><a href="/slimYB/userprofile" class="btn btn-warning" style="width:10rem; font-size:20px;color:white;">Enter</a></div>
  </div>
</div>
<div style="float:left;">
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
</div>
<div class="card" style="width: 30rem; float: left;">
  <img src="${pageContext.request.contextPath}/images/admin/forum1.jpg" style="height: 15rem;" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Forum</h5>
    <p class="card-text">Administrators are able to manage the forum including:</p>
    <p class="card-text"><a href="/slimYB/profiledata"><img src="${pageContext.request.contextPath}/images/admin/star2.jpg" style="width: 2rem;"><font color="#8373ce">&nbsp;Share Post on Forum</font></a></p>
    <p class="card-text"><a href="/slimYB/profiledata"><img src="${pageContext.request.contextPath}/images/admin/star2.jpg" style="width: 2rem;"><font color="#8373ce">&nbsp;Check Existing Posts</font></a></p>
    <p class="card-text"><a href="/slimYB/profiledata"><img src="${pageContext.request.contextPath}/images/admin/star2.jpg" style="width: 2rem;"><font color="#8373ce">&nbsp;Audit User Application</font></a></p>
    <div align="center"><a href="/slimYB/forum" class="btn btn-warning" style="width:10rem; font-size:20px;color:white;">Enter</a></div>
  </div>
</div>
<div class="endblock">
	<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>