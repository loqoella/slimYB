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
				<title>当前时间</title>
<body>

<span id="cg">2016/12/21 12:00:00</span>
<script>

setInterval("cg.innerHTML=new Date().toLocaleString()",1000);
</script>
</body>
			</h3>
			
	<table class="table table-bordered">
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
					<tr class="table-warning">
						<td>
							1
						</td>
						<td>
							Breakfast
						</td>
						
						<td>
						<button type="button" class="btn btn-success">
				Done
						</button>
						</td>
					</tr>
					<tr class="table-warning">
						<td>
							2
						</td>
						<td>
							Lunch
						</td>
						
						<td>
						<button type="button" class="btn btn-success  ">
				Done
						</button>
						</td>
					</tr>
					<tr class="table-warning">
						<td>
							3
						</td>
						<td>
							Dinner
						</td>
						
						<td>
						<button type="button" class="btn btn-success  ">
				Done
						</button>
						</td>
					</tr>
					<tr class="table-warning">
						<td>
							4
						</td>
						<td>
							Water Intake
						</td>
						
						<td>
						<button type="button" class="btn btn-success  ">
				Done
						</button>
						</td>
					</tr>
					<tr class="table-danger">
						<td>
							5
						</td>
						<td>
							Snacks Intake
						</td>
						
						<td>
						<button type="button" class="btn btn-success  ">
				Done
						</button>
						</td>
					</tr>
					
					<tr class="table-success">
						<td>
							6
						</td>
						<td>
							Gym
						</td>
						
						<td>
						<button type="button" class="btn btn-success  ">
				Done
						</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
<%@ include file="/WEB-INF/views/footer.jsp" %>