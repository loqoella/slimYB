<%@ include file="/WEB-INF/views/header.jsp" %>

<div class="jumbotron" >
    <h1 class="display-4" style="text-align:center"> Diary Homepage! </h1>
</div>

<div class="jumbotron">
   <h2 class="display-4"> Calendar </h2>
   <a type="button" class="nav-item nav-link"href="/slimYB/life-recording/calendar/">Click to calendar</a>

</div>

<div class="jumbotron">
    <h2 class="display-4"> Diary </h2>
    <button type="button" class="btn btn-default btn-lg"href="/slimYB/life-recording/personal-dairy/">Click to diary</button>
</div>

<div class="jumbotron">
    <h2 class="display-4"> Add recording </h2>
    <button type="button" class="btn btn-default btn-lg"href="/slimYB/life-recording/add-recording/">Click to add recording</button>
</div>

<div class="jumbotron">
    <h2 class="display-4"> Friend recording </h2>
    <button type="button" class="btn btn-default btn-lg"href="/slimYB/life-recording/friend-recording/">Click to friend recording</button>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>