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
					<a class="btn btn-outline-success" href="/slimYB/friends/addfriend/">Change: search by user name</a>
				</div>
			</div>
			
			<br/>

			<!-- <script type="text/javascript">
				function search(){
					if(document.getElementById("gender_male").checked) {
						document.getElementById("gender_form").action = "/slimYB/friends/addfriendbygender";
					}
				}
			</script> -->
			<form class="jumbotron px-4 py-3" id="gender_form" action="/slimYB/friends/addfriendbygender?gender" method="GET">
			  	
			  	<h5> Gender </h5>
	    		<div class="form-inline align-items-center">
				
					<div class="form-check">
						<input class="form-check-input" type="radio" name="gender" id="gender_male" value="male" checked>
						<label class="form-check-label" for="gender_male">
						    Male
						</label>
					</div>
					
			    	<div class="col-auto"><label>|</label></div>
			    	
					<div class="form-check">
						<input class="form-check-input" type="radio" name="gender" id="gender_female" value="female">
						<label class="form-check-label" for="gender_female">
						    Female
						</label>
					</div>
			    	
			  	</div>
				<button class="btn btn-primary mt-4" type="submit">
                	Search
           		</button>
				<!-- <a type="search" class="btn btn-primary mt-4" href="/slimYB/friends/addfriendbygender?gender=male">Search</a> -->
				<!-- <a type="search" class="btn btn-primary mt-4" onclick="search()">Search</a> -->
			</form>
		
	      	<c:choose>
			    <c:when test="${isShow}">
			    <c:out value="${users}">
			    </c:out>
			    	<c:forEach items="${users}" var="user" varStatus="tagStatus">
						<div id="card-239657">
							<div class="card">
								<div class="card-header">
								
									<div class="float-left">
									 	<a class="card-link" data-toggle="collapse" data-parent="#card-239657" href="#card-element-975867"><c:out value="${user.getId()}"/></a>
									</div>
									
									<div class="float-right">
										<a href="/slimYB/friends/add?id=${user.getId()}" class="btn btn-outline-primary">
									 			Add
									 	</a>
								 		<!-- <a id="modal-612657" href="#modal-container-612657" role="button" class="btn btn-outline-primary" data-toggle="modal">Add</a> -->
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
			   </c:when>    
			   <c:otherwise>
			   </c:otherwise>
			</c:choose>
			<br/>
			
		</div>
	</div>
</div>


<%@ include file="/WEB-INF/views/footer.jsp" %>