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
						Friend List
					</li>
				</ol>
			</nav>
			<br/>
			<dl>
				<dt>
					Friend Lists
				</dt>
				<dd>
					All your friends are listed here.
				</dd>
				<dt>
					Delete a friend
				</dt>
				<dd>
					You can click the delete button to delete a friend.
				</dd>
			</dl>
			<br/>
			<div class="row">
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-3">
							<img alt="Bootstrap Image Preview" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" class="img-thumbnail">
						</div>
						<div class="col-md-6">
							<dl>
								<dt>
									Emma Jing
								</dt>
							</dl>
							<div class="row">
								<div class="col-md-5">
									<p>
										23
									</p>
								</div>
								<div class="col-md-7">
									<p>
										Famale
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							 
							<button type="button" class="btn btn-danger align-items-center">
								Delete
							</button>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-3">
							<img alt="Bootstrap Image Preview" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" class="img-thumbnail">
						</div>
						<div class="col-md-6">
							<dl>
								<dt>
									Rene Guo
								</dt>
							</dl>
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
						<div class="col-md-3">
							 
							<button type="button" class="btn btn-danger">
								Delete
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>