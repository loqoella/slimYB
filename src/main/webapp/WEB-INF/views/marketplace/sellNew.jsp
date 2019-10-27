<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ include file="/WEB-INF/views/marketplace/marketplaceHeader.jsp" %>

<span>
	<h1>Item Details</h1>
</span>

<div>
	<form method="post" action="/slimYB/marketplace/sellNew">
		<div class="form-row">
			<div class="form-group col-md-6">
			  <label for="itemName">Item Name</label>
			  <input name="productName" type="text" class="form-control" id="itemName" ${product != null  ? "value=".concat(product.productName) : ""}>
			</div>
			<div class="form-group col-md-6">
			  <label for="itemPrice">Price</label>
			  <input name="price" type="text" class="form-control" id="itemPrice" ${product != null  ? "value=".concat(product.price) : ""}>
			</div>
		</div>
		<div class="form-group">
		    <label for="itemDescription">Item description</label>
		    <textarea name="description" class="form-control" id="itemDescription" rows="10"> ${product != null  ? "value=".concat(product.description) : ""} </textarea>
	  	</div>

			<div class="container mb-2">
				<div class="row justify-content-left">
					<span class="mr-2 align-middle"><h3 class="mg-2">Images</h3></span>
					<button type="button" class="btn btn-outline-secondary align-middle imgAdd">Add Image</button>
				</div>
			</div>
	  	<div class="container mb-4">
  			<div class="row">
				<div class="card text-center col-md-3 imgContainer">
				  <div class="imagePreview"></div>
				  <div class="card-body">
					<div class="row">
						<label class="btn btn-primary btn-block mb-0">Upload<input type="file" name="file" class="uploadFile"></label>
						<button class="btn btn-danger btn-block del">Delete</button>
					</div>
				  </div>
				</div>
   				<div id="last-placeholder"></div>
		 	</div>
		</div>
	 	<button type="submit" class="btn btn-primary btn-lg btn-block">Subit</button>
	</form>
</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>

<script>
	$(".imgAdd").click(function(){
		$("#last-placeholder").before(`<div class=\"card text-center col-md-3 imgContainer\">
				  <div class=\"imagePreview\"></div>
				  <div class=\"card-body\">
				  	<div class=\"row\">
				    	<label class=\"btn btn-primary btn-block mb-0\">Upload<input type=\"file\" name=\"file\" class=\"uploadFile\" style=\"width:0px;height:0px;overflow:hidden;\"></label>
				    	<button class=\"btn btn-danger btn-block del\">Delete</button>
				    </div>
				  </div>
				</div>`)
	});
	$(document).on("click", ".del", function() {
		$(this).parent().parent().parent().remove()
	});
	$(function() {
	    $(document).on("change",".uploadFile", function()
	    {
	    	var uploadFile = $(this);
	        var files = !!this.files ? this.files : [];
	        if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support
	 
	        if (/^image/.test( files[0].type)){ // only image file
	            var reader = new FileReader(); // instance of the FileReader
	            reader.readAsDataURL(files[0]); // read the local file
	 
	            reader.onloadend = function(){ // set image data as background of div
	                //alert(uploadFile.closest(".upimage").find('.imagePreview').length);
				uploadFile.closest(".imgContainer").find('.imagePreview').css("background-image", "url("+this.result+")");
	            }
	        }
	      
	    });
	});
</script>