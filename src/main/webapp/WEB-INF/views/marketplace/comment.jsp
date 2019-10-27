<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ include file="/WEB-INF/views/marketplace/marketplaceHeader.jsp" %>

<form action="/slimYB/marketplace/comment" method="post">
	<div class="input-group mb-3">
	  <div class="input-group-prepend">
	    <span class="input-group-text">Your Comment</span>
	  </div>
		<input type="hidden" name="itemId" value="${product.id}">
	  <textarea name="commentDetail" class="form-control" rows="12" aria-label="Your Comment"></textarea>
	</div>
	<button type="submit" class="btn btn-primary btn-block btn-lg">Submit</button>
</form>

<%@ include file="/WEB-INF/views/footer.jsp" %>