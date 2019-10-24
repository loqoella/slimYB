<%@ include file="/WEB-INF/views/adminSystem/headerAdmin.jsp" %>


<div class="posttitles">

	<div class="imagesection">
		<img id="iii" style="width:50rem;">
	</div>
	<h3 class="posttitle1"><c:out value="${forum.getTitle()}"> </c:out></h3>
	<h4 class="posttag1" id="postTag">Tag: <c:out value="${forum.getTag()}"> </c:out></h4>

	

    <div class="contentsection">
    	<p><c:out value="${forum.getContent()}"> </c:out></p>
    </div>
    
    <div class="postbuttons">
    	<a href="/slimYB/post/editForum?id=${forum.getId()}"><button type="button" class="btn btn-warning" style="width:10rem; font-size:20px;color:white;">EDIT</button></a>
	</div>
	<div class="postbuttons">
		<a href="/slimYB/post/deleteForum?id=${forum.getId()}"><button type="button" class="btn btn-danger" style="width:10rem; font-size:20px;color:white;">DELETE</button></a>
		
	</div>
	<script>
	bigImageFunction();
	function bigImageFunction(){
		var i = document.getElementById("postTag").innerText;
		if (i =="Tag: #Food"){			
			document.getElementById("iii").src="${pageContext.request.contextPath}/images/admin/h1.jpg";
			document.getElementById("postTag").id="newPostTag";
			document.getElementById("iii").id="newImage";
			
		}
		else if (i =="Tag: #Health"){			
			document.getElementById("iii").src="${pageContext.request.contextPath}/images/admin/health1.jpg";
			document.getElementById("postTag").id="newPostTag";
			document.getElementById("iii").id="newImage";
			
		}
		else if (i =="Tag: #Fitness"){			
			document.getElementById("iii").src="${pageContext.request.contextPath}/images/admin/f1.jpg";
			document.getElementById("postTag").id="newPostTag";
			document.getElementById("iii").id="changed";
			
		}
		else if (i =="Tag: #Product"){			
			document.getElementById("iii").src="${pageContext.request.contextPath}/images/admin/p1.jpg";
			document.getElementById("postTag").id="newPostTag";
			document.getElementById("iii").id="newImage";
			
		}
		else {			
			document.getElementById("iii").src="${pageContext.request.contextPath}/images/admin/blog2.jpg";
			document.getElementById("postTag").id="newPostTag";
			document.getElementById("iii").id="newImage";
			
		}
	}
	</script>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>