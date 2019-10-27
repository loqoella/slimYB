<div class="d-flex flex-row justify-content-between">
	<button class="btn btn-light px-0" disabled>
		<h3>Marketplace</h3>
	</button>
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
			<c:if test="${cartNum != -1}">
		  		<span class="badge badge-light ml-1">${cartNum}</span>
		  	</c:if>
		</a>
	</span>
</div>

<section class="jumbotron text-center">
	<h1 class="jumbotron-heading">${subtitle}</h1>
	<p>${subsubtitle}</p>
</section>