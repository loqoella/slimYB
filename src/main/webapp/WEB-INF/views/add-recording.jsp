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


function click(breakfast){
	document.getElementById("Breakfast").style.color = "red";
}
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
						<button type="button" class="btn btn-primary" id = "Breakfast" onclick="click(breakfast)" >
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
						<button type="button" class="btn btn-primary">
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
						<button type="button" class="btn btn-primary">
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
						<button type="button" class="btn btn-primary">
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
						<button type="button" class="btn btn-primary">
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
						<button type="button" class="btn btn-primary">
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
				<form role="form">
			<textarea name="Text input" style="width:500px;height:200px;" placeholder="Entry Content......">
			</textarea>
			<button type="submit" class="btn btn-primary">
					Submit
				</button>
				</form>
		</div>
		<div class="col-md-6" >
		<h2>
					Image Input
				</h2>
		<form role="form">
				
				<div class="form-group">
					 
					<label for="exampleInputTitle">
						 Title
					</label>
					<input type="text" class="form-control"  placeholder="Entry Title......" />
				</div>
				<div class="form-group">
					 
					<label for="exampleInputImage">
						Image input
					</label>
					<input type="file" class="form-control-file" id="exampleInputFile" />
					
				</div>
				<div class="checkbox">
					 
					<label>
						<input type="checkbox" /> Show to All of Friends
					</label>
				</div> 
				<button type="submit" class="btn btn-primary" >
					Submit
				</button>
			</form>
				

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