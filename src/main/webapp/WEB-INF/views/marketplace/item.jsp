<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ include file="/WEB-INF/views/marketplace/marketplaceHeader.jsp" %>

<h4>Seller: ${product.userId.username}</h4>
<button class="btn btn-primary" onclick="sendAddItemToCartRequest(this, ${product.id})">Add to Cart</button>
<br>
<br>
<h1>Item description</h1>
<p class="mb-4">${ product.description }</p>

<div id="carouselControls" class="carousel slide mb-4" data-ride="carousel">
  <div class="carousel-inner">
    <c:forEach var="imageLink" items="${product.imagePath.split('%')}">
      <div class="carousel-item active">
        <img src="imageLink" class="d-block w-100" alt="...">
      </div>
    </c:forEach>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<h1> User Comments</h1>

<c:forEach var="comment" items="${commentList}">
<div class="mb-3">
	<h4>${comment.userId.username}</h4>
	<p>${comment.comment}</p>
</div>
</c:forEach>

<%@ include file="/WEB-INF/views/footer.jsp" %>
<script>
    function sendAddItemToCartRequest(element, productId) {
        var http = new XMLHttpRequest();
        var url = "/slimYB/marketplace/cart/add?item=" + productId;
        http.open("PUT", url);
        http.send();
        $("#cartNum").html(function(i, val) { return +val+1 });
    }
</script>