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
		<p id="id" style="display:none">${diary.diaryId}</p>
		<div class="row">
			<div class="col-md-10"></div>
			<div class="col-md-2 container-fluid row">
				<div class="col-md-6">
					<button id="edit" class="btn btn-primary" style="float: right;">
						Edit
					</button>
				</div>
				<div class="col-md-6">
					<button id="delete" class="btn btn-primary" style="float: right;">
						Delete
					</button>
				</div>
		
				
			</div>
		
		</div>
		<div class="row">
			<div class="col-md-4">
				<h3 class="text-center" id="date">
					${diary.date}
				</h3>

				<ul>
					<c:if test="${diary.breakfast == 1}">
						<li class="list-item">
							Breakfast
						</li>
					</c:if>

					<c:if test="${diary.lunch == 1}">
						<li class="list-item">
							Lunch
						</li>
					</c:if>
					<c:if test="${diary.dinner == 1}">
						<li class="list-item">
							Dinner
						</li>
					</c:if>
					<c:if test="${diary.water == 1}">
						<li class="list-item">
							Water Intake
						</li>
					</c:if>
					<c:if test="${diary.snack == 1}">
						<li class="list-item">
							Snacks
						</li>
					</c:if>
					<c:if test="${diary.gym == 1}">
						<li class="list-item">
							Gym
						</li>
					</c:if>
				</ul>
			</div>
			<div class="col-md-4">
				<h3>
					${diary.title}
				</h3>
				<p>
					${diary.text}
				</p>
			</div>
			<div class="col-md-4">
				<h3>
					Images
				</h3>

				<ul class="pic">
					<li><img src="/slimYB/static/img/${diary.image}" width=150xp height=150xp /></li>
				</ul>

			</div>
		</div>

		<div class="row">
			<div class="col-md-12 text-center">
				<h3>
					Comments!
				</h3>
				<c:forEach items="${comments}" var="comment" varStatus="userStatus">
					<ul>
						<li class="list-item">
							${comment.comment}
						</li>
					</ul>
				</c:forEach>


				<h3>
					Add Comments
				</h3>
				<div>
					<textarea id="Text-input" style="width:800px;height:100px;" placeholder="Entry Content......"></textarea>
					<button id="comment-submit" class="btn btn-primary">
						Submit
					</button>
				</div>
			</div>
			
		</div>
		
	</div>

	<script type="text/javascript">
		$("#comment-submit").click(function (e) {
			comment = $("#Text-input").val().trim();
			console.info(comment);
			if(comment===""){
				alert("Don't submit empty comment!")
			}else{
				id = $("#id").text()
				date = $("#date").text()
				if (comment === "") {
					return;
				} else {
					console.info(comment);
					$.post("/slimYB/life-recording/addComment",{
						comment:comment,
						id:id
					}, function (data, status) {
						if (data === "ok") {
							window.location.href = "/slimYB/life-recording/readDiary?date=" + date
						}
					})
				}
			}
			
		})

		$("#delete").click(function (e) {
			console.info("delete");
			id = $("#id").text()
			$.post("/slimYB/life-recording/deleteDiary?id=" + id, function (data, status) {
				window.location.href = "/slimYB/life-recording/calendar";
			})
		})

		$("#edit").click(function (e) {
			console.info("delete");
			id = $("#id").text()
			window.location.href = "/slimYB/life-recording/editDiary?id="+id;
		})
	</script>

</body>



</html>


<%@ include file="/WEB-INF/views/footer.jsp" %>