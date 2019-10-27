<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ include file="/WEB-INF/views/marketplace/marketplaceHeader.jsp" %>

<section class="jumbotron text-center">
   	<div class="container">
        <h1 class="jumbotron-heading">SUCCESS</h1>
     </div>
     <hr class="my-4">
     <p>Returning to marketplace homepage in <strong id="countDown">5</strong> seconds ... </p>
</section>

<%@ include file="/WEB-INF/views/footer.jsp" %>

<!-- auto redirect to marketplace home page -->
<script type="text/javascript">
    var timeout = 6;
    function redirect() {
        document.getElementById("countDown").innerHTML = timeout - 1;
        timeout--;
        if (timeout == 0) {
            window.location.href = "/slimYB/marketplace";
        } else {
            setTimeout("redirect()", 1000);
        }
    }
    redirect();
</script>