<%@ include file="/WEB-INF/views/headerAdmin.jsp" %>

<br> 
<br>
<div>
    <h1 class="display-4"> Hello! Administrator </h1>
    <p class="lead"> Now you can check the available users below:</p>
</div>
<br> 
<br> 
<div id="custom-search-input">
                <div class="input-group">
                    <input type="text" class="search-query form-control" placeholder="Search User" />
                    <div>&ensp;&ensp;&ensp;&ensp;</div>
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit" >
                            Search
                        </button >
                   
                </div>
            </div>

<%@ include file="/WEB-INF/views/footer.jsp" %>