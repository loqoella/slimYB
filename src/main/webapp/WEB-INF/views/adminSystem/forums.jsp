<%@ include file="/WEB-INF/views/adminSystem/headerAdmin.jsp" %>


<!--Title -->
<div class ="titlemes">
    <h1 class="display-4"><strong> Hello,&ensp;&ensp;Administrator!  </strong></h1>
    <p class="lead"> Welcome to View Posts on the Forum:</p>

</div>

<script type="text/javascript">

function searchPost(){
	for(i=0;i<100;i++){
		if(document.getElementById("postname"+i)!=null){
			if((document.getElementById("postname"+i).innerText).includes(document.getElementById("searchPost").value)){

			}else{
				document.getElementById("numb"+i).hidden="true";
			}
		}
	}
}
</script>
<div id="custom-search-input">
    <div class="input-group">
        <input id="searchPost" type="text" class="search-query form-control" placeholder="Search Post" />
        <div>&ensp;&ensp;&ensp;&ensp;</div>
            <button class="btn btn-outline-warning my-2 my-sm-0" type="submit" onclick="searchPost()">
                Search
            </button >

    </div>
</div>

<style>
.line-limit-length {

	overflow: hidden;

	text-overflow: ellipsis;

	white-space: nowrap;

}
</style>


<c:forEach items="${forums}" var="forum" varStatus="tagStatus">
<div class="addmodule" id="numb${tagStatus.index}">
	<div class="card" style="width:20rem; float: left;">

	  <img id="changedimage" style="height: 10rem;" class="card-img-top" alt="...">

	  <div class="card-body">
	    <h5 class="postcard-title line-limit-length"><c:out value="${forum.getTitle()}"> </c:out></h5>
	    <div id="postname${tagStatus.index}"><p class="postcard-tag"  id="tagofpost"><c:out value="${forum.getTag()}"> </c:out></p></div>
	    <p class="postcard-text line-limit-length"><c:out value="${forum.getContent()}"> </c:out></p>

	    <div align="center"><a href="/slimYB/post?id=${forum.getId()}" class="btn btn-warning" style="width:10rem; font-size:20px;color:white;">Enter</a></div>
	  </div>

	<script>
	imageFunction();
	function imageFunction(){
		var i = document.getElementById("tagofpost").innerText;
		if (i =="#Food"){
			document.getElementById("changedimage").src="${pageContext.request.contextPath}/images/admin/food1.jpg";
			document.getElementById("tagofpost").id="newTago";
			document.getElementById("changedimage").id="changed";

		}
		else if (i =="#Health"){
			document.getElementById("changedimage").src="${pageContext.request.contextPath}/images/admin/health1.jpg";
			document.getElementById("tagofpost").id="newTago";
			document.getElementById("changedimage").id="changed";

		}
		else if (i =="#Fitness"){
			document.getElementById("changedimage").src="${pageContext.request.contextPath}/images/admin/f1.jpg";
			document.getElementById("tagofpost").id="newTago";
			document.getElementById("changedimage").id="changed";

		}
		else if (i =="#Product"){
			document.getElementById("changedimage").src="${pageContext.request.contextPath}/images/admin/p1.jpg";
			document.getElementById("tagofpost").id="newTago";
			document.getElementById("changedimage").id="changed";

		}
		else if (i =="#Lose Weight"){
			document.getElementById("changedimage").src="${pageContext.request.contextPath}/images/admin/lose1.jpg";
			document.getElementById("tagofpost").id="newTago";
			document.getElementById("changedimage").id="changed";

		}
		else {
			document.getElementById("changedimage").src="${pageContext.request.contextPath}/images/admin/blog2.jpg";
			document.getElementById("tagofpost").id="newTago";
			document.getElementById("changedimage").id="changed";

		}
	}
	</script>
	</div>

</div>
</c:forEach>

<%@ include file="/WEB-INF/views/footer.jsp" %>
