<%@ include file="/WEB-INF/views/adminSystem/headerAdmin.jsp" %>
<!--Title -->
<div class ="titlemes">
    <h1 class="display-4"><strong> Hello,&ensp;&ensp;Administrator!  </strong></h1>
    <p class="lead"> Now you can check the existing users below:</p>
   
</div>

<script type="text/javascript">

function search(){
	for(i=0;i<100;i++){
		if(document.getElementById("name"+i)!=null){
			if((document.getElementById("name"+i).innerText).includes(document.getElementById("searchText").value)){
				
			}else{
				document.getElementById("num"+i).hidden="true";
			}
		}
	}
}
</script>

 
<div id="custom-search-input">
    <div class="input-group">
        <input id="searchText" type="text" class="search-query form-control" placeholder="Search User by Name" />
        <div>&ensp;&ensp;&ensp;&ensp;</div>
            <button class="btn btn-outline-warning my-2 my-sm-0" type="submit" onclick="search()">
                Search
            </button >
       
    </div>
</div>




    
<div class="table">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title"><img src="${pageContext.request.contextPath}/images/admin/picon1.jpg" style="width: 5rem;">User Accounts</h3>
        </div>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>User Name</th>
                    <th>EMAIL</th>
                    <th>PASSWORD</th>
                    <th>CHECK</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${users}" var="user" varStatus="tagStatus">
                	 <tr id="num${tagStatus.index}">
        				<td><c:out value="${user.getId()}"> </c:out></td>
        				<td id="name${tagStatus.index}"><c:out value="${user.getUsername()}"> </c:out></td>
        				<td><c:out value="${user.getEmail()}"> </c:out></td>
        				<td><c:out value="${user.getPassword()}"> </c:out></td>
        				<td><a href="/slimYB/profiledata?id=${user.getId()}"><button type="button" class="btn btn-outline-warning my-2 my-sm-0">check</button> </a></td>
   					 </tr>
                </c:forEach>
                
            </tbody>
        </table>
    </div>
</div>
<div class="endblock2">
	<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>