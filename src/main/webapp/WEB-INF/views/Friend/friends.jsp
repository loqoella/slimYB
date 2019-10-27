<%@ include file="/WEB-INF/views/header.jsp" %>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="carousel slide" id="carousel-436601">
				<ol class="carousel-indicators">
					<li data-slide-to="0" data-target="#carousel-436601">
					</li>
					<li data-slide-to="1" data-target="#carousel-436601">
					</li>
					<li data-slide-to="2" data-target="#carousel-436601" class="active">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item">
						<a href="/slimYB/friends/friendlist"><img class="d-block w-100" alt="Carousel Bootstrap First" src="https://www.layoutit.com/img/sports-q-c-1600-500-1.jpg"></a>
						<br>
						<div class="carousel-caption">
							<h4>
								My Friend List
							</h4>
							<p>
								All your friends are listed here! you can also manage your friends (e.g. delete a friend).
							</p>
						</div>
					</div>
					<div class="carousel-item">
						<a href="/slimYB/friends/chatzone/"><img class="d-block w-100" alt="Carousel Bootstrap Second" src="https://www.layoutit.com/img/sports-q-c-1600-500-2.jpg"></a>
						<br>
						<div class="carousel-caption">
							<h4>
								Chatting Zone
							</h4>
							<p>
								Do not hesitate to chat with your friends! They are missing you too!
							</p>
						</div>
					</div>
					<div class="carousel-item active">
						<a href="/slimYB/friends/addfriend"><img class="d-block w-100" alt="Carousel Bootstrap Third" src="https://www.layoutit.com/img/sports-q-c-1600-500-3.jpg"></a>
						<br>
						<div class="carousel-caption">
							<h4>
								Add New Friend
							</h4>
							<p>
								You can add new friend by searching user name or searching by your interests.
							</p>
						</div>
					</div>
				</div> <a class="carousel-control-prev" href="#carousel-436601" data-slide="prev"><span class="carousel-control-prev-icon"></span> <span class="sr-only">Previous</span></a> <a class="carousel-control-next" href="#carousel-436601" data-slide="next"><span class="carousel-control-next-icon"></span> <span class="sr-only">Next</span></a>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="https://www.layoutit.com/img/sports-q-c-1600-500-1.jpg">
						<div class="card-block">
							<br>
							<h5 class="card-title">
								 My Friend List
							</h5>
							<p class="card-text">
								All your friends are listed here! you can also manage your friends (e.g. delete a friend).
							</p>
							<p>
								<a class="btn btn-primary float-right" href="/slimYB/friends/friendlist">Action</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Second" src="https://www.layoutit.com/img/sports-q-c-1600-500-2.jpg">
						<div class="card-block">
							<br>
							<h5 class="card-title">
								 Chatting Zone
							</h5>
							<p class="card-text">
								Do not hesitate to chat with your friends! They are missing you too! 
							</p>
							<p>
								<a class="btn btn-primary float-right" href="/slimYB/friends/chatzone/">Action</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://www.layoutit.com/img/sports-q-c-1600-500-3.jpg">
						<div class="card-block">
							<br>
							<h5 class="card-title">
								 Add New Friend
							</h5>
							<p class="card-text">
								You can add new friend by searching user name or searching by your interests.
							</p>
							<p>
								<a class="btn btn-primary float-right" href="/slimYB/friends/addfriend">Action</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>