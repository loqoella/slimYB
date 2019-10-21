<%@ include file="/WEB-INF/views/adminSystem/headerAdmin.jsp" %>
<!--Title -->
<div class ="titlemes">
    <h1 class="display-4"><strong> Hello,&ensp;&ensp;Administrator!  </strong></h1>
    <p class="lead"> Now you can check the existing users below:</p>
   
</div>

 
<div id="custom-search-input">
    <div class="input-group">
        <input type="text" class="search-query form-control" placeholder="Search User" />
        <div>&ensp;&ensp;&ensp;&ensp;</div>
            <button class="btn btn-outline-warning my-2 my-sm-0" type="submit" >
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
                    <th>ID</th>
                    <th>EMAIL</th>
                    <th>PASSWORD</th>
                    <th>CHECK</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                	<th>1</th>
                	<td>1</td>
                    <td>123@gmail.com</td>
                    <td>123ff</td>
                    <td><a href="/slimYB/profiledata"><button type="button" class="btn btn-outline-warning my-2 my-sm-0">check</button> </a></td>
                </tr>
                <tr>
                    <th>2</th>
                	<td>2</td>
                    <td>1e23@gmail.com</td>
                    <td>123ff</td>    
                    <td><a href="/slimYB/profiledata"><button type="button" class="btn btn-outline-warning my-2 my-sm-0">check</button> </a></td>
                                   
                </tr>
                <tr>
                    <th>3</th>
                	<td>3</td>
                    <td>123@gmail.com</td>
                    <td>123ff</td>
                    <td><a href="/slimYB/profiledata"><button type="button" class="btn btn-outline-warning my-2 my-sm-0">check</button> </a></td>
                </tr>
                <tr>
                    <th>4</th>
                	<td>4</td>
                    <td>123@gmail.com</td>
                    <td>123ff</td>
                    <td><a href="/slimYB/profiledata"><button type="button" class="btn btn-outline-warning my-2 my-sm-0">check</button> </a></td>
                </tr>
                <tr>
                    <th>5</th>
                	<td>5</td>
                    <td>123@gmail.com</td>
                    <td>123ff</td>
                    <td><a href="/slimYB/profiledata"><button type="button" class="btn btn-outline-warning my-2 my-sm-0">check</button> </a></td>
                </tr>
                <tr>
                    <th>6</th>
                	<td>6</td>
                    <td>123@gmail.com</td>
                    <td>123ff</td>
                    <td><a href="/slimYB/profiledata"><button type="button" class="btn btn-outline-warning my-2 my-sm-0">check</button> </a></td>
                </tr>
                <tr>
                    <th>7</th>
                	<td>7</td>
                    <td>123@gmail.com</td>
                    <td>123ff</td>
                    <td><a href="/slimYB/profiledata"><button type="button" class="btn btn-outline-warning my-2 my-sm-0">check</button> </a></td>
                </tr>
                <tr>
                    <th>8</th>
                	<td>8</td>
                    <td>123@gmail.com</td>
                    <td>123ff</td>
                    <td><a href="/slimYB/profiledata"><button type="button" class="btn btn-outline-warning my-2 my-sm-0">check</button> </a></td>
                </tr>
                <tr>
                    <th>9</th>
                	<td>9</td>
                    <td>123@gmail.com</td>
                    <td>123ff</td>
                    <td><a href="/slimYB/profiledata"><button type="button" class="btn btn-outline-warning my-2 my-sm-0">check</button> </a></td>
                </tr>
                
            </tbody>
        </table>
    </div>
</div>
<div class="endblock2">
	<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>