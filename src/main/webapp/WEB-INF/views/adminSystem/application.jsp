<%@ include file="/WEB-INF/views/adminSystem/headerAdmin.jsp" %>


<!--Title -->
<div class ="titlemes">
    <h1 class="display-4"><strong> Hello,&ensp;&ensp;Administrator!  </strong></h1>
    <p class="lead"> Here are users' applications of sending posts to the forum:</p>
   
</div>

<br> 
<br> 
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
            <h3 class="panel-title">User Accounts</h3>
        </div>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>User</th>
                    <th>Tag</th>
                    <th>CHECK</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                	<th>1</th>
                    <td>123@gmail.com</td>
                    <td>Health</td>
                    <td><a href="/slimYB/profiledata"><button type="button" class="btn btn-outline-warning my-2 my-sm-0">check</button> </a></td>
                </tr>
                <tr>
                    <th>2</th>
                    <td>1e23@gmail.com</td>
                    <td>Health</td>    
                    <td><a href="/slimYB/profiledata"><button type="button" class="btn btn-outline-warning my-2 my-sm-0">check</button> </a></td>
                                   
                </tr>
                <tr>
                    <th>3</th>
                    <td>123@gmail.com</td>
                    <td>Health</td>
                    <td><a href="/slimYB/profiledata"><button type="button" class="btn btn-outline-warning my-2 my-sm-0">check</button> </a></td>
                </tr>
                <tr>
                    <th>4</th>
                    <td>123@gmail.com</td>
                    <td>Fitness</td>
                    <td><a href="/slimYB/profiledata"><button type="button" class="btn btn-outline-warning my-2 my-sm-0">check</button> </a></td>
                </tr>
                <tr>
                    <th>5</th>
                    <td>123@gmail.com</td>
                    <td>Fitness</td>
                    <td><a href="/slimYB/profiledata"><button type="button" class="btn btn-outline-warning my-2 my-sm-0">check</button> </a></td>
                </tr>
                <tr>
                    <th>6</th>
                    <td>123@gmail.com</td>
                    <td>Health</td>
                    <td><a href="/slimYB/profiledata"><button type="button" class="btn btn-outline-warning my-2 my-sm-0">check</button> </a></td>
                </tr>
                <tr>
                    <th>7</th>
                    <td>123@gmail.com</td>
                    <td>Food</td>
                    <td><a href="/slimYB/profiledata"><button type="button" class="btn btn-outline-warning my-2 my-sm-0">check</button> </a></td>
                </tr>
                <tr>
                    <th>8</th>
                    <td>123@gmail.com</td>
                    <td>Clothes</td>
                    <td><a href="/slimYB/profiledata"><button type="button" class="btn btn-outline-warning my-2 my-sm-0">check</button> </a></td>
                </tr>
                <tr>
                    <th>9</th>
                    <td>123@gmail.com</td>
                    <td>Food</td>
                    <td><a href="/slimYB/profiledata"><button type="button" class="btn btn-outline-warning my-2 my-sm-0">check</button> </a></td>
                </tr>
                
            </tbody>
        </table>
    </div>
</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>