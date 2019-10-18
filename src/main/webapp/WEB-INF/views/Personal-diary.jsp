<%@ include file="/WEB-INF/views/header.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="jumbotron">
    <h1 class="display-4" style="text-align:center"> Personal Diary! </h1>
</div>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Personal Diary</title>
</head>


<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-4">
			<h3 class="text-center">
				17/10/2019
			</h3>
			<ul>
				<li class="list-item">
					Breakfast
				</li>
				<li class="list-item">
					Lunch
				</li>
				<li class="list-item">
					Dinner
				</li>
				<li class="list-item">
					Water Intake 
				</li>
				<li class="list-item">
					Snacks 
				</li>
				<li class="list-item">
					Gym
				</li>
				
				
			</ul>
		</div>
		<div class="col-md-4">
			<h3>
				Happy day (Diary Title)
			</h3>
			<p>
				Diary component is connected to Friends component. In this part, there are two main functions. The first one is that the user can record their own life with text or images for different days. Then they can set whether this diary can be seen by their friends. If they set private, this dairy only can be seen, changed or deleted by themselves. Otherwise, friends can share their diaries with each other and can give comments for their friends’ diaries.
			</p>
		</div>
		<div class="col-md-4">
			<h3>
				Images
			</h3>
			
			<ul class="pic">
<li><img src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" width=150xp height=150xp/></li>
<li><img src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" width=150xp height=150xp/></li>
<li><img src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" width=150xp height=150xp/></li>
</ul>
			
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-12 text-center" >
			<h3>
				 Comments！ 
			</h3>
			<ul>
				<li class="list-item">
					Interesting！
				</li>
				<li class="list-item">
					Cool
				</li>
				<li class="list-item">
					Integer molestie lorem at massa
				</li>
				<li class="list-item">
					Facilisis in pretium nisl aliquet
				</li>
				<li class="list-item">
					Nulla volutpat aliquam velit
				</li>
				<li class="list-item">
					Faucibus porta lacus fringilla vel
				</li>
				<li class="list-item">
					Aenean sit amet erat nunc
				</li>
				<li class="list-item">
					Eget porttitor lorem
				</li>
			</ul>
			
			<h3>
					Add Comments
				</h3>
				<form role="form">
			<textarea name="Text input" style="width:800px;height:100px;" placeholder="Entry Content......">
			</textarea>
			<button type="submit" class="btn btn-primary">
					Submit
				</button>
				</form>
		</div>
	</div>
	
</div>

</body>
</html>


<%@ include file="/WEB-INF/views/footer.jsp" %>