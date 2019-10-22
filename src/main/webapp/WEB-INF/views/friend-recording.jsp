<%@ include file="/WEB-INF/views/header.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="jumbotron">
    <h1 class="display-4" style="text-align:center"> Friend List! </h1>
</div>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="row">
		<div class="col-md-12">
			<h2>
				My Friend List
			</h2>
			<div class="row">
				<div class="col-md-4">
					<div class="jumbotron">
						<h2>
							FriendA
						</h2>
						<img src="${pageContext.request.contextPath}/static/头像.jpeg" width=150xp height=150xp/>
						<table>
<tr>
<td style="width:100%;height:14px;font-size:14px;border:0"> 
</td>
</tr>
</table>
						<p>
							<a class="btn btn-primary btn-large" href="#">Find More</a>
						</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="jumbotron">
						<h2>
							FriendB
						</h2>
						<img src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" width=150xp height=150xp/>
						<table>
<tr>
<td style="width:100%;height:14px;font-size:14px;border:0"> 
</td>
</tr>
</table>
						<p>
							<a class="btn btn-primary btn-large" href="#">Find more</a>
						</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="jumbotron">
						<h2>
							FriendC
						</h2>
						<img src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" width=150xp height=150xp/>
						<table>
<tr>
<td style="width:100%;height:14px;font-size:14px;border:0"> 
</td>
</tr>
</table>
						<p>
							<a class="btn btn-primary btn-large" href="#">Find more</a>
						</p>
					</div>
				</div>
			</div>
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

</body>
</html>


<%@ include file="/WEB-INF/views/footer.jsp" %>