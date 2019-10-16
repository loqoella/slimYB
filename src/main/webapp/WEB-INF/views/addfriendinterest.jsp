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
			
<!-- 			<div class="row">
				<div class="col-md-3">
					<h3 class="text-center">
						Search By
					</h3>
				</div>
				<div class="col-md-9">
					<div class="btn-group btn-group-lg" role="group">
						 
						<button class="btn btn-secondary" type="button">
							User Name
						</button> 

						<button class="btn btn-secondary" type="button">
							Your Interest
						</button>
						
					</div>
				</div>
			</div> -->
			
			 <a class="btn btn-outline-primary btn-lg" href="/slimYB/friends/addfriend/">Normal Search</a>
			
			<br/><br/>
			
			<dl>
				<dt>
					Search your interest users
				</dt>
				<dd>
					Fill in the blanks and we will help you filter out the relevant users!
				</dd>
			</dl>
			
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