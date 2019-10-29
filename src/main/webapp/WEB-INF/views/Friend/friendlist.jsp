<%@ include file="/WEB-INF/views/header.jsp" %>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
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
			<div id="chart">
			</div>
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
				
				<script type="text/javascript">
					function editNickname(id, oldName){
						var newName = prompt("Please set a new nickname", oldName);
						if (newName != null) {
							window.location.href = "/slimYB/friends/editalias?id=" + id + "&newname=" + newName;
							/* document.getElementById("form").action = "/slimYB/friends/editalias?id=" + id + "?newname=" + newName; */
						  }
					}
				</script>
				<c:forEach items="${friends}" var="friend" varStatus="tagStatus">
					<div class="col-md-6">
						<div class="row">
							<div class="col-md-3">
								<img alt="Bootstrap Image Preview" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" class="img-thumbnail">
							</div>
							<div class="col-md-6">
								<dl>
									<dt>
										<%-- <c:set var="delete" value="${friend}" scope="session"/> --%>
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
										<p class="gender">
											<c:out value="${friend.getGender()}"/>
										</p>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="float-right" style="margin-bottom: 15px">
							 		<a href="/slimYB/friends/delete?id=${friend.getId()}" class="btn btn-danger align-items-center">
							 			Delete
							 		</a>
								</div>
								<div class="float-right">
									<a onclick="editNickname(${friend.getId()}, '${friend.getNickname()}')" class="btn btn-primary align-items-center" style="color:white">
						 				Edit alias
						 			</a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<script type="text/javascript">
					google.charts.load('current', {'packages': ['corechart', 'bar']});
					google.charts.setOnLoadCallback(drawChart);
					
					function drawChart() { 
						var graphData = new google.visualization.DataTable();
						graphData.addColumn('string', 'Topping');
						graphData.addColumn('number', 'Slices');
						var maleCount = 0;
						var femaleCount = 0;
						var i;
						var genders = document.getElementsByClassName("gender");
						for (i = 0; i < genders.length; i++) {
							maleCount = (genders[i].innerText == "male") ? maleCount + 1 : maleCount;
							femaleCount = (genders[i].innerText == "female") ? femaleCount + 1 : femaleCount;
						}
						graphData.addRows([
					          ['Male', maleCount],
					          ['Female', femaleCount]
					        ]);
						var options = {
								'title':'Show the gender distribution of my friends',
								'width':400,
			                    'height':300};
						var chart = new google.visualization.PieChart(document.getElementById('chart'));
				        chart.draw(graphData, options);
					} 
				</script>
			</div>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>