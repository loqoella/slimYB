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
				<c:forEach items="${friends}" var="friend" varStatus="tagStatus">
					<div class="col-md-6">
						<div class="row">
							<div class="col-md-3">
								<img alt="Bootstrap Image Preview" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" class="img-thumbnail">
							</div>
							<div class="col-md-6">
								<dl>
									<dt>
										<c:out value="${friend.getUsername()}"/>
										( <c:out value="${friend.getNickname()}"/> )
									</dt>
								</dl>
								<div class="row">
									<div class="col-md-5">
										<p>
											<c:out value="${friend.getAge()}"/>
										</p>
									</div>
									<div class="col-md-7">
										<p>
											<c:out value="${friend.getGender()}"/>
										</p>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="float-right" style="margin-bottom: 15px">
							 		<a href="/slimYB/friends/chatwithfriend" class="btn btn-primary align-items-center">
							 			Chat
							 		</a>
								</div>							
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>
		

<%@ include file="/WEB-INF/views/footer.jsp" %>