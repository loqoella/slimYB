<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
</div>
<footer class="page-footer bg-light mt-auto py-3">
  	<div class="text-muted text-center">© 2019 Copyright:
    	<a href="/slimYB/"> SlimYB</a>
  	</div>
</footer>
</body>

<!-- set current page's corresponding navbar item to be active -->
<script type="text/javascript">
    $(document).ready(function () {
        var url = window.location;
        $('.navbar-nav .nav-item.nav-link').filter(function() {
             return url.toString().includes(this.href);
        }).last().addClass('active');
    });
</script>