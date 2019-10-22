<%@ include file="/WEB-INF/views/header.jsp" %>

<!-- Secondary navbar -->
<div class="d-flex flex-row justify-content-between">
	<ul class="nav nav-pills">
		<li class="nav-item dropdown">
	    	<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Catagory 1</a>
	    	<div class="dropdown-menu">
		      	<a class="dropdown-item" href="#">sub-category 1</a>
		      	<a class="dropdown-item" href="#">sub-category 2</a>
		      	<a class="dropdown-item" href="#">sub-category 3</a>
		      	<div class="dropdown-divider"></div>
		      	<a class="dropdown-item" href="#">sub-category 4</a>
	    	</div>
	  	</li>
	  	<li class="nav-item dropdown">
	    	<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Catagory 2</a>
	    	<div class="dropdown-menu">
		      	<a class="dropdown-item" href="#">sub-category 1</a>
		      	<a class="dropdown-item" href="#">sub-category 2</a>
		      	<a class="dropdown-item" href="#">sub-category 3</a>
		      	<div class="dropdown-divider"></div>
		      	<a class="dropdown-item" href="#">sub-category 4</a>
	    	</div>
	  	</li>
	  	<li class="nav-item dropdown">
	    	<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Catagory 3</a>
	    	<div class="dropdown-menu">
		      	<a class="dropdown-item" href="#">sub-category 1</a>
		      	<a class="dropdown-item" href="#">sub-category 2</a>
		      	<a class="dropdown-item" href="#">sub-category 3</a>
		      	<div class="dropdown-divider"></div>
		      	<a class="dropdown-item" href="#">sub-category 4</a>
	    	</div>
	  	</li>
	  	<li class="nav-item dropdown">
	    	<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Filters</a>
	    	<div class="dropdown-menu filter-dropdown">
		    	<form class="px-4 py-3">
					<h5> Price Range </h5>
		    		<div class="form-inline align-items-center">
		    			<div class="col-auto row">
		    				<label class="my-1 mr-2">AU$</label>
					    	<input type="email" class="form-control form-control-sm" id="priceRangeLow">
				    	</div>
				    	<div class="col-auto"><label>-</label></div>
				    	<div class="col-auto row">
				    		<label class="my-1 mr-2">AU$</label>
					    	<input type="email" class="form-control form-control-sm" id="priceRangeLow">
				    	</div>
				  	</div>
				  	<div class="row">
					  	<div class="col">
						  	<h5 class="pt-4"> Conditions </h5>
						  	<div class="form-check">
							  <input class="form-check-input" type="checkbox" name="conditions" id="brandNew" value="brandNew">
							  <label class="form-check-label" for="brandNew">
							    Brand new
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" name="conditions" id="used" value="used">
							  <label class="form-check-label" for="used">
							    Used
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" name="conditions" id="notSpecified" value="notSpecified">
							  <label class="form-check-label" for="notSpecified">
							    Not specified
							  </label>
							</div>
						</div>
						<div class="col">
							<h5 class="pt-4"> Delivery options </h5>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" name="delivery" id="freePostage" value="freePostage">
							  <label class="form-check-label" for="freePostage">
							    Free postage
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" name="delivery" id="freePickup" value="freePickup">
							  <label class="form-check-label" for="freePickup">
							    Free pickup
							  </label>
							</div>
						</div>
					</div>
					<button type="submit" class="btn btn-primary mt-4">Apply</button>
			    </form>
		    </div>
	  	</li>
	</ul>
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
		  	Cart <span class="badge badge-light ml-1">${cartNum}</span>
		</a>
	</span>
</div>

<div class="jumbotron mt-2 py-5">
    <h1 class="display-4"> Marketplace</h1>
    <p class="lead"> Where you can trade items with other SlimYB users! </p>
</div>


<div class="row">
	<div class="col-md-4">
		<div class="card mb-4 shadow-sm">
		  	<svg class="bd-placeholder-img card-img-top" width="100%" height="180">
			  	<rect width="100%" height="100%" fill="#868e96"></rect>
	  		</svg>
			<div class="card-body">
				<div class="container row justify-content-between mx-0 px-0">
				    <a href="#"><h5 class="card-title">Item 1</h5></a>
				    <h5 class="card-title">AU$26.00</h5>
				</div>
				<p class="card-text">Item's description. Lorem ipsum.............description.........description........</p>
			    <div class="d-flex justify-content-between">
			    	<a href="#" class="btn btn-primary">Add to cart</a>
			    </div>
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<div class="card mb-4 shadow-sm">
		  	<svg class="bd-placeholder-img card-img-top" width="100%" height="180">
			  	<rect width="100%" height="100%" fill="#868e96"></rect>
	  		</svg>
			<div class="card-body">
				<div class="container row justify-content-between mx-0 px-0">
				    <a href="#"><h5 class="card-title">Item 1</h5></a>
				    <h5 class="card-title">AU$26.00</h5>
				</div>
				<p class="card-text">Item's description. Lorem ipsum.............description.........description........</p>
			    <div class="d-flex justify-content-between align-items-left">
			    	<a href="#" class="btn btn-primary">Add to cart</a>
			    	<a href="#" class="">user1</a>
			    </div>
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<div class="card mb-4 shadow-sm">
		  	<svg class="bd-placeholder-img card-img-top" width="100%" height="180">
			  	<rect width="100%" height="100%" fill="#868e96"></rect>
	  		</svg>
			<div class="card-body">
				<div class="container row justify-content-between mx-0 px-0">
				    <a href="#"><h5 class="card-title">Item 1</h5></a>
				    <h5 class="card-title">AU$26.00</h5>
				</div>
				<p class="card-text">Item's description. Lorem ipsum.............description.........description........</p>
			    <div class="d-flex justify-content-between align-items-left">
			    	<a href="#" class="btn btn-primary">Add to cart</a>
			    	<a href="#" class="">user1</a>
			    </div>
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<div class="card mb-4 shadow-sm">
		  	<svg class="bd-placeholder-img card-img-top" width="100%" height="180">
			  	<rect width="100%" height="100%" fill="#868e96"></rect>
	  		</svg>
			<div class="card-body">
				<div class="container row justify-content-between mx-0 px-0">
				    <a href="#"><h5 class="card-title">Item 1</h5></a>
				    <h5 class="card-title">AU$26.00</h5>
				</div>
				<p class="card-text">Item's description. Lorem ipsum.............description.........description........</p>
			    <div class="d-flex justify-content-between align-items-left">
			    	<a href="#" class="btn btn-primary">Add to cart</a>
			    	<a href="#" class="">user1</a>
			    </div>
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<div class="card mb-4 shadow-sm">
		  	<svg class="bd-placeholder-img card-img-top" width="100%" height="180">
			  	<rect width="100%" height="100%" fill="#868e96"></rect>
	  		</svg>
			<div class="card-body">
				<div class="container row justify-content-between mx-0 px-0">
				    <a href="#"><h5 class="card-title">Item 1</h5></a>
				    <h5 class="card-title">AU$26.00</h5>
				</div>
				<p class="card-text">Item's description. Lorem ipsum.............description.........description........</p>
			    <div class="d-flex justify-content-between align-items-left">
			    	<a href="#" class="btn btn-primary">Add to cart</a>
			    	<a href="#" class="">user1</a>
			    </div>
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<div class="card mb-4 shadow-sm">
		  	<svg class="bd-placeholder-img card-img-top" width="100%" height="180">
			  	<rect width="100%" height="100%" fill="#868e96"></rect>
	  		</svg>
			<div class="card-body">
				<div class="container row justify-content-between mx-0 px-0">
				    <a href="#"><h5 class="card-title">Item 1</h5></a>
				    <h5 class="card-title">AU$26.00</h5>
				</div>
				<p class="card-text">Item's description. Lorem ipsum.............description.........description........</p>
			    <div class="d-flex justify-content-between align-items-left">
			    	<a href="#" class="btn btn-primary">Add to cart</a>
			    	<a href="#" class="">user1</a>
			    </div>
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<div class="card mb-4 shadow-sm">
		  	<svg class="bd-placeholder-img card-img-top" width="100%" height="180">
			  	<rect width="100%" height="100%" fill="#868e96"></rect>
	  		</svg>
			<div class="card-body">
				<div class="container row justify-content-between mx-0 px-0">
				    <a href="#"><h5 class="card-title">Item 1</h5></a>
				    <h5 class="card-title">AU$26.00</h5>
				</div>
				<p class="card-text">Item's description. Lorem ipsum.............description.........description........</p>
			    <div class="d-flex justify-content-between align-items-left">
			    	<a href="#" class="btn btn-primary">Add to cart</a>
			    	<a href="#" class="">user1</a>
			    </div>
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<div class="card mb-4 shadow-sm">
		  	<svg class="bd-placeholder-img card-img-top" width="100%" height="180">
			  	<rect width="100%" height="100%" fill="#868e96"></rect>
	  		</svg>
			<div class="card-body">
				<div class="container row justify-content-between mx-0 px-0">
				    <a href="#"><h5 class="card-title">Item 1</h5></a>
				    <h5 class="card-title">AU$26.00</h5>
				</div>
				<p class="card-text">Item's description. Lorem ipsum.............description.........description........</p>
			    <div class="d-flex justify-content-between align-items-left">
			    	<a href="#" class="btn btn-primary">Add to cart</a>
			    	<a href="#" class="">user1</a>
			    </div>
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<div class="card mb-4 shadow-sm">
		  	<svg class="bd-placeholder-img card-img-top" width="100%" height="180">
			  	<rect width="100%" height="100%" fill="#868e96"></rect>
	  		</svg>
			<div class="card-body">
				<div class="container row justify-content-between mx-0 px-0">
				    <a href="#"><h5 class="card-title">Item 1</h5></a>
				    <h5 class="card-title">AU$26.00</h5>
				</div>
				<p class="card-text">Item's description. Lorem ipsum.............description.........description........</p>
			    <div class="d-flex justify-content-between align-items-left">
			    	<a href="#" class="btn btn-primary">Add to cart</a>
			    	<a href="#" class="">user1</a>
			    </div>
			</div>
		</div>
	</div>
</div>
<nav aria-label="marketplace page nav">
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>

<%@ include file="/WEB-INF/views/footer.jsp" %>