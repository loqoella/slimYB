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
	<button type="button" class="btn btn-info">
		<span class="oi oi-cart"></span>
	  	Cart <span class="badge badge-light ml-1">${cartNum}</span>
	</button>
</div>

<div class="jumbotron mt-2">
    <h1 class="display-4"> This is marketplace homepage! </h1>
    <p class="lead"> Lorem ipsum .... </p>
    <hr class="my-4">
    <p>The time now is: ${now}</p>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>