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
			<div class="jumbotron">
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
			<div class="jumbotron">
				<h2>
					Personal Diary!
				</h2>
				<p>
					This section will linked to user's personal diary based on calendar.
				</p>
				<p>
					<a class="btn btn-primary btn-large" href="/slimYB/life-recording/personal-dairy/">Learn more</a>
				</p>
			</div>
		</div>
		<div class="col-md-6">
			<div class="jumbotron">
				<h2>
					Add Recording!
				</h2>
				<p>
					User can add new recording through this part, the date will be set to the current time automatic.
				</p>
				<p>
					<a class="btn btn-primary btn-large" href="/slimYB/life-recording/add-recording/">Click to Add Recording</a>
				</p>
			</div>
			<div class="jumbotron">
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

<%@ include file="/WEB-INF/views/footer.jsp" %>