<%@ include file="/WEB-INF/views/header.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header text-center">
				<h1>
					Add New Recording!
				</h1>
			</div>
			<h3 class=" text-info">
				<title>date</title>

				<body>

					<p id="cg" >${diary.date}</p>
					<script>

					</script>
				</body>
			</h3>

			<table class="table table-bordered text-center">
				<thead>
					<tr>
						<th>
							#
						</th>
						<th>
							Regular Event
						</th>

						<th>
							Status
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							1
						</td>
						<td>
							Breakfast
						</td>

						<td>
							<button type="button" class="btn btn-primary" id="breakfast" onclick="change('breakfast')">
								<c:if test="${diary.breakfast == 1}">
								Done
								</c:if>
								<c:if test="${diary.breakfast == 0}">
								Undone
								</c:if>
							</button>
						</td>
					</tr>
					<tr>
						<td>
							2
						</td>
						<td>
							Lunch
						</td>

						<td>
							<button type="button" class="btn btn-primary" id="lunch" onclick="change('lunch')">
								<c:if test="${diary.lunch == 1}">
									Done
								</c:if>
								<c:if test="${diary.lunch == 0}">
									Undone
								</c:if>
							</button>
						</td>
					</tr>
					<tr>
						<td>
							3
						</td>
						<td>
							Dinner
						</td>

						<td>
							<button type="button" class="btn btn-primary" id="dinner" onclick="change('dinner')">
								<c:if test="${diary.dinner == 1}">
									Done
								</c:if>
								<c:if test="${diary.dinner == 0}">
									Undone
								</c:if>
							</button>
						</td>
					</tr>
					<tr>
						<td>
							4
						</td>
						<td>
							Water Intake
						</td>

						<td>
							<button type="button" class="btn btn-primary" id="water" onclick="change('water')">
								<c:if test="${diary.water == 1}">
									Done
								</c:if>
								<c:if test="${diary.water == 0}">
									Undone
								</c:if>
							</button>
						</td>
					</tr>
					<tr>
						<td>
							5
						</td>
						<td>
							Snacks Intake
						</td>

						<td>
							<button type="button" class="btn btn-primary" id="snack" onclick="change('snack')">
								<c:if test="${diary.snack == 1}">
									Done
								</c:if>
								<c:if test="${diary.snack == 0}">
									Undone
								</c:if>
							</button>
						</td>
					</tr>

					<tr>
						<td>
							6
						</td>
						<td>
							Gym
						</td>

						<td>
							<button type="button" class="btn btn-primary" id="gym" onclick="change('gym')">
								<c:if test="${diary.gym == 1}">
									Done
								</c:if>
								<c:if test="${diary.gym == 0}">
									Undone
								</c:if>
							</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-6">
			<h2>
				Text Input
			</h2>
			<div>
				<textarea name="Text input" id="text" style="width:500px;height:200px;" placeholder="Entry Content......" >${diary.text}</textarea>
			</textarea>
				<button type="submit" id="submit-diary" class="btn btn-primary">
					Submit
				</button>
			</div>
		</div>
		<div class="col-md-6">
			<div >

				<div class="form-group">

					<label for="exampleInputTitle">
						Title
					</label>
					<input type="text" class="form-control" id="title" placeholder="Entry Title......" value="${diary.title}"/>
				</div>
				<div class="form-group">

					<label for="exampleInputImage" id="image-des">
						Image input &nbsp;  current image: ${diary.image}
					</label>
					<input type="file" name="file" id="file" class="form-control-file" id="exampleInputFile"/>

				</div>
				<button type="submit" id="submit-file" class="btn btn-primary">
					Submit file
				</button>
				<div class="checkbox">
				
					<label>
						<input type="checkbox" /> Show to All of Friends
					</label>
				</div>
			</div>
		</div>
	</div>
</div>
<p style="display: none;" id="image-name">${diary.image}</p>
<p id="id" style="display:none">${diary.diaryId}</p>
<p id="date-time" style="display:none">${diary.date}</p>
<script src="/slimYB/static/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript">
	function change(name){
		state = $("#"+name).text().trim();
		console.info(state)
		switch (state) {
			case "Done":
				$("#" + name).text("Undone");
				break;
			case"Undone":
				$("#" + name).text("Done");
				break;
			default:
				break;
		}
	}
	function check(name) {
		state = $("#" + name).text().trim();
		console.info(state)
		switch (state) {
			case "Done":
				return 1
				break;
			case "Undone":
				return 0
				break;
			default:
				break;
		}
	}
	$("#submit-file").click(function () {
		ajaxFileUpload();
	})

	fileName = $("#image-name").text();

	function ajaxFileUpload() {
		$("#image-des").html("Image input &nbsp;  uploading image...");
		$.ajaxFileUpload
			({
				url: '/slimYB/fileUpload', //用于文件上传的服务器端请求地址
				secureuri: false, //是否需要安全协议，一般设置为false
				fileElementId: 'file', //文件上传域的ID
				dataType: 'json', //返回值类型 一般设置为json
				success: function (data, status)  //服务器成功响应处理函数
				{
					if (data.state != "error") {
						fileName = data.name;
						$("#image-des").html("Image input &nbsp; current image: "+fileName);
						console.info("finish " + data.name)
					}
				},
				error: function (data, status, e)//服务器响应失败处理函数
				{
					$("#image-des").html("Image input &nbsp; upload error");
				}
			})
		return false;
	}

	$("#submit-diary").click(function(){
		diaryId = $("#id").text().trim()
		title = $("#title").val().trim()
		date = $("#date-time").text().trim()
		breakfast = check("breakfast");
		lunch = check("lunch");
		dinner = check("dinner");
		water = check("water");
		snack = check("snack");
		gym = check("gym");
		text = $("#text").val().trim();
		if (title=="" && text=="" && breakfast==0 && lunch==0 && dinner == 0 && water == 0 && snack == 0 && gym == 0) {
			alert("Can't submit empty diary")
			return
		}
		if (diaryId == -1) {
			$.post("/slimYB/life-recording/addOrUpdateDiary", {
				title: title,
				date: date,
				breakfast: breakfast,
				lunch: lunch,
				dinner: dinner,
				water: water,
				snack: snack,
				gym: gym,
				text: text,
				image: fileName
			}, function (data, status) {
				window.location.href = "/slimYB/life-recording/readDiary?date=" + date
			})
		}
		$.post("/slimYB/life-recording/addOrUpdateDiary", {
			diaryId: diaryId,
			title:title,
			date:date,
			breakfast:breakfast,
			lunch:lunch,
			dinner:dinner,
			water:water,
			snack:snack,
			gym:gym,
			text:text,
			image:fileName
		},function (data, status) {
			window.location.href="/slimYB/life-recording/readDiary?date="+date
		})
	})

</script>

<%@ include file="/WEB-INF/views/footer.jsp" %>