<%@ include file="/WEB-INF/views/adminSystem/headerAdmin.jsp" %>


<!--Title -->
<div class ="titlemes">
    <h1 class="display-4"><strong> Hello,&ensp;&ensp;Administrator!  </strong></h1>
    <p class="lead"> Here are administrator's or users' applications of <br>sending posts to the forum:</p>
   
</div>

<br> 
<br> 

<script type="text/javascript">

function searchApplication(){
	for(i=0;i<100;i++){
		if(document.getElementById("nameApp"+i)!=null){
			if((document.getElementById("nameApp"+i).innerText).includes(document.getElementById("searchApp").value)){
				
			}else{
				document.getElementById("numApp"+i).hidden="true";
			}
		}
	}
}
</script>


<div id="custom-search-input">
    <div class="input-group">
        <input id="searchApp" type="text" class="search-query form-control" placeholder="Search User" />
        <div>&ensp;&ensp;&ensp;&ensp;</div>
            <button class="btn btn-outline-warning my-2 my-sm-0" type="submit" onclick="searchApplication()">
                Search
            </button >
       
    </div>
</div>


    
<div class="table">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">User Accounts</h3>
        </div>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>User</th>
                    <th>Title</th>
                    <th>Tag</th>
                    <th>CHECK</th>
                </tr>
            </thead>
            <tbody>
                 
                <c:forEach items="${applications}" var="application" varStatus="tagStatus">
                	 <tr id="numApp${tagStatus.index}">  
                	 	<td><c:out value="${application.getId()}"> </c:out></td> 
                	 	<td><c:out value="${application.getUser()}"> </c:out></td> 					
        				<td><c:out value="${application.getTitle()}"> </c:out></td>
        				<td id="nameApp${tagStatus.index}"><c:out value="${application.getTag()}"> </c:out></td>	
        				
        				<td><a href="/slimYB/applicationcheck?id=${application.getId()}"><button type="button" class="btn btn-outline-warning my-2 my-sm-0">Check</button> </a></td>
   					 </tr>
                </c:forEach>

            </tbody>
        </table>
    </div>
</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>