<%@ include file="/WEB-INF/views/header.jsp" %>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<h3 class="text-center text-muted">
				Welcome to the Life-Recording Homepage!
			</h3>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="jumbotron" style="background:url(http://pic.pc6.com/up/2016-10/2016101119811082091.jpg) no-repeat 5px 6px " >
				<h2>
					Calendar!
				</h2>
				<p>
					This function will record life based on the calendar, users can query, add, modify and delete specific content through the calendar.
				</p>
				<p>
					<a class="btn btn-primary btn-large" href="/slimYB/life-recording/calendar/">Click to calendar</a>
				</p>
			</div>
			<div class="jumbotron" style="background:url(https://st3.depositphotos.com/11191882/17820/i/1600/depositphotos_178200660-stock-photo-notebook-paper-pen-dry-flowers.jpg) no-repeat 5px 6px">
				<h2>
					Personal Diary!
				</h2>
				<p>
					This section will linked to user's personal diary based on calendar.
				</p>
				<p>
					<a class="btn btn-primary btn-large" href="/slimYB/life-recording/calendar/">Learn more</a>
				</p>
			</div>
		</div>
		<div class="col-md-6">
			<div class="jumbotron" style="background:url(https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQx3iITgsIQ4mJMWZEtVdkzV1UIRpyaSwOenD6F2Jz0bQ7gmmlw) no-repeat 5px 6px">
				<h2>
					Add Recording!
				</h2>
				<p>
					User can add new recording through this part, the date will be set to the current time automatic.
				</p>
				<p>
					<a class="btn btn-primary btn-large" id="addDiary">Click to Add Recording</a>
				</p>
			</div>
			<div class="jumbotron" style="background:url(https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTH52VWT88lO92NyBxiJhqIvJanxHZYh1R4Q6PDeo-1TQkd4ZHX) no-repeat 5px 6px">
				<h2>
					Friend's Life!
				</h2>
				<p>
					User can access to their freind's recording through this section, and add comments to friend's diary based on friend list.
				</p>
				<p>
					<a class="btn btn-primary btn-large" href="/slimYB/life-recording/friend-recording/">Click to Friend List</a>
				</p>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$("#addDiary").click(function(e) {
		var my_date = new Date();
		var my_year = my_date.getFullYear();//获取年份
		var my_month = my_date.getMonth(); //获取月份，一月份的下标为0
		var my_day = my_date.getDate();//获取当前日期
		clickDate = my_year + "-" + (my_month + 1) + "-" + my_day;
		$.get("/slimYB/life-recording/checkDiary?date=" + clickDate, function (data, status) {
			if (data == "ok") {
				alert("You have written diary today!");
			} else {
				window.location.href = "/slimYB/life-recording/editDiary?id=-1"
			}
		})
	})
</script>

<%@ include file="/WEB-INF/views/footer.jsp" %>