<%@ include file="/WEB-INF/views/header.jsp" %>

<!-- Secondary navbar -->
<div class="row justify-content-between mx-0">
  	<div class="form-inline mb-0">
	  <div class="form-group mr-sm-1">
	    <input type="text" class="form-control" id="searchKeyword" placeholder="Item Name">
	  </div>
	  <button type="submit" class="btn btn-primary" value="" onclick="window.location.href='/slimYB/marketplace?keyword='+document.getElementById('searchKeyword').value">Search</button>
	</div>
	<span>
		<a href="/slimYB/marketplace/sell" class="btn btn-primary">
			<span class="oi oi-dollar"></span>
		  	Sell
		</a>
		<a href="/slimYB/marketplace/orders" class="btn btn-Secondary">
			<span class="oi oi-document"></span>
		  	Orders
		</a>
		<a href="/slimYB/marketplace/cart" class="btn btn-info">
			<span class="oi oi-cart"></span>
		  	Cart
			<span id="cartNum" class="badge badge-light ml-1">${cartNum}</span>
		</a>
	</span>
</div>

<div class="jumbotron mt-2 py-5">
    <h1 class="display-4"> Marketplace</h1>
    <p class="lead"> Where you can trade items with other SlimYB users! </p>
</div>


<div class="row">
	<c:if test="${productList != null}">
		<c:forEach var="product" items="${productList}">
			<div class="col-md-4">
				<div class="card mb-4 shadow-sm">
					<img src="${product.imagePath.split("%")[0]}" width="100%" height="100%"/>
					<div class="card-body">
						<div class="container row justify-content-between mx-0 px-0">
							<a href="/slimYB/marketplace/item?id=${product.id}"><h5 class="card-title">${product.productName}</h5></a>
							<h5 class="card-title">AU$ ${product.price}</h5>
						</div>
						<p class="card-text">${product.description}</p>
						<div class="d-flex justify-content-between">
							<a href="#" class="btn btn-primary" onclick="sendAddItemToCartRequest(this, ${product.id})">Add to cart</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</c:if>
</div>
<nav aria-label="marketplace page nav">
  <ul class="pagination justify-content-center">
    <li class="page-item ${currentPage == 0 ? "disabled" : ""}">
      <a class="page-link" href="/slimYB/marketplace?page=${currentPage - 1}${(keyword.equals("")?"":"&keyword=")}${keyword}" ${currentPage == 0 ? "tabindex='-1'" : ""}}>Previous</a>
    </li>
    <c:forEach var="i" begin="0" end="${productCount / 12}">
		<li class="page-item ${currentPage == i ? "active\" aria-current=\"page" : ""}"><a class="page-link" href="/slimYB/marketplace?page=${i}${(keyword.equals("")?"":"&keyword=")}${keyword}">${i + 1}</a></li>
	</c:forEach>
    <li class="page-item ${currentPage == productCount / 12 ? "disabled" : ""}">
      <a class="page-link" href="/slimYB/marketplace?page=${currentPage + 1}${(keyword.equals("")?"":"&keyword=")}${keyword}" ${currentPage == productCount / 12  ? "tabindex='-1'" : ""}>Next</a>
    </li>
  </ul>
</nav>

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