<%@ include file="/WEB-INF/views/header.jsp" %>

 <head>
 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel = "stylesheet" href = "../../open-iconic/font/css/search.css">
 </head>
<body>  
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
						Add New Friend
					</li>
				</ol>
			</nav>

			<div class="row">
				<div class="col-md-7">
					<dl>
						<dt>
							Search User by Username
						</dt>
						<dd>
							Hover on the search icon, then enter the username and click search!
						</dd>
					</dl>
				</div>
				<div class="col-md-5">
					<a class="btn btn-outline-success" href="/slimYB/friends/addfriend/addfriendinterest">Change: search by interest</a>
				</div>
			</div>

			<br/><br/>
			
			<div class="container h-100">
      			<div class="d-flex justify-content-center h-100">
					<div class="searchbar">
						<input class="search_input" type="text" name="" placeholder="Search...">
						<a href="#" class="search_icon"><i class="fas fa-search"></i></a>
					</div>
				</div>
			</div>
			
			<br/><br/>
			
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
</body>

<%@ include file="/WEB-INF/views/footer.jsp" %>