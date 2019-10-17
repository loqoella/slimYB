<%@ include file="/WEB-INF/views/header.jsp" %>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item">
						<a href="/slimYB/">Home</a>
					</li>
					<li class="breadcrumb-item">
						<a href="/slimYB/friends">Friend</a>
					</li>
					<li class="breadcrumb-item active">
						Add New Friend -- by interest
					</li>
				</ol>
			</nav>
			
			<br/>
			
			<div class="row">
				<div class="col-md-7">
					<dl>
						<dt>
							Search your interest users
						</dt>
						<dd>
							Fill in the blanks and we will help you filter out the relevant users!
						</dd>
					</dl>
				</div>
				<div class="col-md-5">
					<a class="btn btn-outline-success" href="/slimYB/friends/addfriend/">Change: search by username</a>
				</div>
			</div>
			
			<br/>
			
			<form class="jumbotron px-4 py-3">
			
				<h5> Age Range </h5>
	    		<div class="form-inline align-items-center">
	    			<div class="col-auto row">
				    	<input type="email" class="form-control form-control-sm" id="priceRangeLow">
			    	</div>
			    	<div class="col-auto"><label>-</label></div>
			    	<div class="col-auto row">
				    	<input type="email" class="form-control form-control-sm" id="priceRangeLow">
			    	</div>
			  	</div>
			  	
			  	<br/>
			  	
			  	<h5> Gender </h5>
	    		<div class="form-inline align-items-center">
				
					<div class="form-check">
						<input class="form-check-input" type="radio" name="gender" id="gender_male" value="gender_male" checked>
						<label class="form-check-label" for="gender_male">
						    Male
						</label>
					</div>
					
			    	<div class="col-auto"><label>|</label></div>
			    	
					<div class="form-check">
						<input class="form-check-input" type="radio" name="gender" id="gender_female" value="gender_female">
						<label class="form-check-label" for="gender_female">
						    Female
						</label>
					</div>
			    	
			  	</div>
			    
				<button type="search" class="btn btn-primary mt-4">Search</button>
			</form>
			
			<div id="card-239657">
				<div class="card">
					<div class="card-header">
					
						<div class="float-left">
						 		<a class="card-link" data-toggle="collapse" data-parent="#card-239657" href="#card-element-975867">Emma Jing</a>
						</div>
						
						<div class="float-right">
					 		<a id="modal-612657" href="#modal-container-612657" role="button" class="btn btn-outline-primary" data-toggle="modal">Add</a>
						</div>
						
						<div class="modal fade" id="modal-container-612657" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="myModalLabel">
											Confirm to add friend
										</h5> 
										<button type="button" class="close" data-dismiss="modal">
											<span aria-hidden="true">×</span>
										</button>
									</div>
									<div class="modal-body">
										Are you sure to add this friend?
									</div>
									<div class="modal-footer">
										 
										<button type="button" class="btn btn-primary">
											Confirm
										</button> 
										<button type="button" class="btn btn-secondary" data-dismiss="modal">
											Cancel
										</button>
									</div>
								</div>
							</div>
						</div>
						
					</div>
					
					<div id="card-element-975867" class="collapse show">
						<div class="card-body">
							<div class="row">
								<div class="col-md-3">
									<img alt="Bootstrap Image Preview" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" class="img-thumbnail">
								</div>
								<div class="col-md-9">
									<div class="row">
										<div class="col-md-5">
											<p>
												22
											</p>
										</div>
										<div class="col-md-7">
											<p>
												Male
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<br/>
			
			<nav>
				<ul class="pagination">
					<li class="page-item">
						<a class="page-link" href="#">Previous</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">1</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">2</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">3</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">4</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">5</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">Next</a>
					</li>
				</ul>
			</nav>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>