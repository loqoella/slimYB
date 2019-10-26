<%@ include file="/WEB-INF/views/adminSystem/headerAdmin.jsp" %>


<!--Title -->
<div class ="titlemes">
    <h1 class="display-4"><strong> Hello,&ensp;&ensp;Administrator!  </strong></h1>
    <p class="lead"> Add a new post to the forum:</p>
   
</div>

<form class="addpost" id="form">
	<h3 class="addatag">Input a Tag</h3>
	<input name="tag" type="text" class="form-control" id="title-tag" placeholder="eg.#Health">
	
	<div class="posttitle">
		<h3 class="addatag">Add Title</h3>
        <input name="title" type="text" class="form-control" id="title-title">
    </div>
   
    <div class="posttext">
    	<h3 class="addcontent">Add Content</h3>
        <textarea name="content" class="form-control" id="exampleFormControlTextarea1" rows="8"></textarea>
    </div>
    <div class="subbuttons">
		<button type="submit" onclick="share()" class="btn btn-warning" style="width:10rem; font-size:20px;color:white;">SHARE</button>
		<script>
		function share() {
		  alert("Congratulations! Your post is waiting for the audit.");
		  document.getElementById("form").action="/slimYB/addforum/postForum";
		}
		</script>
	</div>
	<div class="subbuttons">
		
		<button  onclick="myFunction()" class="btn btn-danger" style="width:10rem; font-size:20px;color:white;">CANCEL</button>
		<script>
		function myFunction() {
		  alert("You have cancelled successfully.");
		  document.getElementById("form").action="/slimYB/forum";
		}
		</script>	
	</div>

</form>

<%@ include file="/WEB-INF/views/footer.jsp" %>
