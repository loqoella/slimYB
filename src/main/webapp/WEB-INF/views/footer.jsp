<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<body>
</body>

<!-- set current page's corresponding navbar item to be active -->
<script type="text/javascript">
    $(document).ready(function () {
        var url = window.location;
        $('.nav-item').filter(function() {
             return this.href.includes(url);
        }).first().addClass('active');
    });
</script> 