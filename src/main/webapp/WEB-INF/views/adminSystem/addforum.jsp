<%@ include file="/WEB-INF/views/adminSystem/headerAdmin.jsp" %>


<!--Title -->
<div class ="titlemes">
    <h1 class="display-4"><strong> Hello,&ensp;&ensp;Administrator!  </strong></h1>
    <p class="lead"> Add a new post to the forum:</p>
   
</div>

<div class="addpost">
	<h3 class="addatag">Choose a Tag</h3>
	
	<!-- 	<div class="tags">          
	    <img src="{% static 'images/icons/baby1.png' %}" width="30">#Health<input type="checkbox" name="weekdays" value="mon" />
	    </div>
		<div class="tags">
	       <img src="{% static 'images/icons/baby2.png' %}" width="20">#Fitness<input type="checkbox" name="weekdays" value="tue" />
	    </div>
		<div class="tags">
	       <img src="{% static 'images/icons/baby3.png' %}" width="30">#Products<input type="checkbox" name="weekdays" value="wed" />
	    </div>
		<div class="tags">
	       <img src="{% static 'images/icons/baby4.png' %}" width="30">#Food<input type="checkbox" name="weekdays" value="thu" />
	    </div> -->

	<div class="tags">
		<button type="button" class="btn btn-outline-warning my-2 my-sm-0">#Health</button>
	</div>
	<div class="tags">
		<button type="button" class="btn btn-outline-warning my-2 my-sm-0">#Fitness</button>
	</div>
	<div class="tags">
		<button type="button" class="btn btn-outline-warning my-2 my-sm-0">#Products</button>
	</div>
	<div class="tags">
		<button type="button" class="btn btn-outline-warning my-2 my-sm-0">#Food</button>
	</div>
	<div class="posttitle">
		<h3 class="addatag">Add Title</h3>
        <input type="text" class="form-control" id="title-title">
    </div>
    <!--  
    <div class="addimage">
    	<h3 class="addatag">Add Image</h3>
    	<div class="input-group mb-3">
  			<div class="custom-file">
    			<input type="file" class="custom-file-input" id="inputGroupFile02">
    			<label class="custom-file-label" for="inputGroupFile02" aria-describedby="inputGroupFileAddon02"> </label>
  			</div>
		</div>
    </div> -->
    <div class="posttext">
    	<h3 class="addcontent">Add Content</h3>
        <textarea class="form-control" id="exampleFormControlTextarea1" rows="8"></textarea>
    </div>
    <div class="subbuttons">
		<button onclick="myFunction()" class="btn btn-warning" style="width:10rem; font-size:20px;color:white;">SHARE</button>
		<script>
		function myFunction() {
		  alert("Congratulations! Your post has been shared to the forum.");
		}
		</script>
	</div>
	<div class="subbuttons">
		
		<button onclick="myFunction()" class="btn btn-danger" style="width:10rem; font-size:20px;color:white;">CANCEL</button>
		<script>
		function myFunction() {
		  alert("You have cancelled successfully.");
		}
		</script>	
	</div>

</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>
