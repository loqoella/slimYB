<%@ include file="/WEB-INF/views/header.jsp" %>

 <head>
	<link href="/slimYB/static/search.css" rel="stylesheet">
 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
					<a class="btn btn-outline-success" href="/slimYB/friends/addfriendinterest">Change: search by interest</a>
				</div>
			</div>

			<br/><br/>
			<form id="username_form" action="/slimYB/friends/addfriendbyusername?username" method="GET">
			<div class="container h-100">
      			<div class="d-flex justify-content-center h-100">
					<div class="searchbar">
						<input class="search_input" type="text" name="username" placeholder="Search...">
						<a type="submit">
							<a class="search_icon"><i class="fas fa-search"></i></a>
						</a>
						</div>
				</div>
			</div>
			</form>
			
			<br/><br/>
			
			<c:forEach items="${users}" var="user" varStatus="tagStatus">
				<div id="card-239657">
					<div class="card">
						<div class="card-header">
						
							<div class="float-left">
							 	<a class="card-link" data-toggle="collapse" data-parent="#card-239657" href="#card-element-975867"><c:out value="${user.getUsername()}"/></a>
							</div>
							
							<div class="float-right">
								<a href="/slimYB/friends/add?id=${user.getId()}" class="btn btn-outline-primary">
							 			Add
							 	</a>
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
                              							<c:out value="${user.getAge()}"/>
                                                    </p>
                                                </div>
                                                <div class="col-md-7">
                                                    <p>
                                                    	<c:out value="${user.getGender()}"/>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
					</div>
				</div>
			</c:forEach>
			
			<br/>
		</div>
	</div>
</div>
</body>

<%@ include file="/WEB-INF/views/footer.jsp" %>