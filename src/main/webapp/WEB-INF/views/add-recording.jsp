<%@ include file="/WEB-INF/views/header.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
    

<div class="container-fluid" style="background:url(https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSCDN_zGumnihAWBPJ3XgtFZbz51VAgSwTxvDvJkJkuC98OMBnf) repeat 5px 6px">
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
					<tr >
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
					<tr ">
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
					<tr >
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
					<tr >
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
					<tr >
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
					
					<tr >
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

<div class="container-fluid">
	<div class="row">
		<div class="col-md-6">
		<h2>
					Text Input
				</h2>
			<textarea name="Text input" style="width:500px;height:200px;" placeholder="Entry Content......">
			</textarea>
			<button type="button" class="btn btn-success">
				Submit
						</button>
		</div>
		<div class="col-md-6" >
		<h2>
					Image Input
				</h2>
				

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