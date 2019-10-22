<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ include file="/WEB-INF/views/marketplace/marketplaceHeader.jsp" %>

<div class="card mb-2">
	<div class="card-header text-muted">
	  	Order Number: aaaaa
	</div>
	<div class="card">
		<div class="row no-gutters">
		  <div class="col-md-2">
		    <img src="/slimYB/static/placeholder_image.png" class="card-img" alt="...">
		  </div>
		  <div class="col-md-10">
		    <div class="card-body">
	     		<a href="#"> <h5 class="card-title">Card title</h5> </a>
				<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
				<p class="card-text"><small class="text-muted">Price: </small></p>
				<a href="/slimYB/marketplace/comment" class="btn btn-outline-secondary">Comment</a>
		    </div>
		  </div>
		</div>
	</div>
	<div class="card-footer text-muted">
    	Total: $150
  	</div>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>