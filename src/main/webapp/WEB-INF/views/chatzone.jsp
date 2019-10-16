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
						Chatting Zone
					</li>
				</ol>
			</nav>
			<br/>
			<dl>
				<dt>
					Chat with your friends!
				</dt>
				<dd>
					Do not hesitate! click the "Chat" button!
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
						
							 <a class="btn btn-outline-success" href="/slimYB/friends/chatzone/chatwithfriend">Chat</a>
							 
<!-- 						<button type="button" class="btn btn-outline-success" href="/slimYB/friends/chatzone/chatwithfriend">
								Chat
							</button> -->
							
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
							 
							<button type="button" class="btn btn-outline-success">
								Chat
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
		

<%@ include file="/WEB-INF/views/footer.jsp" %>