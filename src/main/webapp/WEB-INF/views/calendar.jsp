<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="jumbotron" style="background:url(https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSCDN_zGumnihAWBPJ3XgtFZbz51VAgSwTxvDvJkJkuC98OMBnf) repeat 5px 6px">
    <h1 class="display-4" style="text-align:center"> Calendar! </h1>
</div>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style type="text/css">
        *{
            padding: 0%;
            margin: 0%;
        }
 
        html, body{
            background:#f2f2f2;
        }
 
        .calendar{
            margin: 45px;
            width: 1000px;
            height: 350px;
            background: white;
            box-shadow: 0px 1px 1px rgba(0,0,0,.1);
        }
 
        .title{
            height: 70px;
            border-bottom: 1px solid rgba(0,0,0,.1);
            position: relative;
            text-align: center;
        }
 
        #calendar-title{
            font-size: 25px;
            text-transform: uppercase;
            font-family: Arial, Helvetica, sans-serif;
            padding: 14px 0 0 0;
        }
 
        #calendar-year{
            font-size: 15px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: normal;
        }
 
        #pre{
            position: absolute;
            top: 0px;
            left: 0px;
            background: url(https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSFuCkQcThV2cwb53j6VEmKKgcHCT0jfg3yMsbaIbENR7Rw4AR7) no-repeat 50% 50%;
 
            /*没规定大小时，图片显示 0X0*/
            width: 60px;
            height: 70px;
            
        }
 
        #next{
            position: absolute;
            top: 0px;
            right: 0px;
            background: url(https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSFuCkQcThV2cwb53j6VEmKKgcHCT0jfg3yMsbaIbENR7Rw4AR7) no-repeat 50% 50%;
            width: 60px;
            height: 70px;
        }  
 
        .body-list ul{
            font-size: 14px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            width: 100%;
            box-sizing: border-box;
      
        }  
 
        .body-list ul li{
            list-style: none;
            /*
            display:inline-block; 
            width: 13.3%;
            */
 
            /*100/7 = 14.28%*/
            display: block;
            width: 14.28%;
            float: left;
 
            /*规定行高，垂直居中*/
            height: 36px;
            line-height: 36px;
            box-sizing: border-box;
            text-align: center;
            
        }
 
 
        .green{
            color:#6ac13c;
        }
 
        .lightgrey{ 
	        color:#a8a8a8;
        }   
        .darkgrey{ 
	        color:#565656;
        }
 
        
        .greenbox{
            border: 1px solid #6ac13c;
            background: #e9f8df;
        }
    </style>
</head>
<body>
    <div class="calendar">
        <div class="title">
            <h1 class="green" id="calendar-title">Month</h1>
            <h2 class="green" id="calendar-year">Year</h2>
            <a href="" id="pre"></a>
            <a href="" id="next"></a>
        </div>
 
        <div class="body">
            <div class="lightgrey body-list">
                <ul>
                    <li>SUN</li>
                    <li>MON</li>
                    <li>TUE</li>
                    <li>WED</li>
                    <li>THU</li>
                    <li>FRI</li>
                    <li>SAT</li>
                    
                </ul>
 
            </div>
 
            <div class="darkgrey body-list">
                <ul id="days">
 
                </ul>
            </div>
        </div>
    </div>
 
    <script type="text/javascript">
        var month_olypic = [31,29,31,30,31,30,31,31,30,31,30,31];
        var month_normal = [31,28,31,30,31,30,31,31,30,31,30,31];
        var month_name =["January","Febrary","March","April","May","June","July","Auguest","September","October","November","December"];
        
        var holder = document.getElementById("days");
        var prev = document.getElementById("prev");
        var next = document.getElementById("next");
        var ctitle = document.getElementById("calendar-title");
        var cyear = document.getElementById("calendar-year");
        
        var my_date = new Date();
        var my_year = my_date.getFullYear();
        var my_month = my_date.getMonth(); 
        var my_day = my_date.getDate();
 
        
        function dayStart(month,year){
            var tmpDate = new Date(year, month, 1);
            return (tmpDate.getDay());
        }
        
        function daysMonth(month, year){
            var tmp1 = year % 4;
            var tmp2 = year % 100;
            var tmp3 = year % 400;
 
            if((tmp1 == 0 && tmp2 != 0) || (tmp3 == 0)){
                return (month_olypic[month]);//闰年
            }else{
                return (month_normal[month]);//非闰年
            }
        }
       
        function refreshDate(){
            var str = "";
            
            var totalDay = daysMonth(my_month,my_year);
            var firstDay = dayStart(my_month, my_year);
            
            for(var i = 0; i < firstDay; i++){
                str += "<li>"+"</li>";
            }
 
            
            var myclass;
            for(var i = 1; i <= totalDay; i++){
               
                console.log(my_year+" "+my_month+" "+my_day);
                console.log(my_date.getFullYear()+" "+my_date.getMonth()+" "+my_date.getDay());
                if((my_year < my_date.getFullYear())||(my_year == my_date.getFullYear() && my_month < my_date.getMonth()) || (my_year == my_date.getFullYear() && my_month == my_date.getMonth() && i < my_day)){
                    myclass = " class='lightgrey ";
                }else if(my_year == my_date.getFullYear() && my_month == my_date.getMonth() && i == my_day){
                    myclass = "class = 'green greenbox";
                }else{
                    myclass = "class = 'darkgrey";
                }
                myclass += " day-cell'"
                str += "<li "+myclass+">"+i+"</li>";
            }
            holder.innerHTML = str;
            ctitle.innerHTML = month_name[my_month];
            cyear.innerHTML = my_year;
        }
        
        refreshDate();
       
        pre.onclick = function(e){
            e.preventDefault();
            my_month--;
            if(my_month < 0){
                my_year--;
                my_month = 11; 
            }
            refreshDate();
        }
        
        next.onclick = function(e){
            e.preventDefault();
            my_month++;
            if(my_month > 11){
                my_month = 0;
                my_year++;
            }
            refreshDate();
        }

        $(".day-cell").click(function(e){
            clickDate = my_year+"-"+(my_month+1)+"-"+$(e.target).text();
            console.info(clickDate);
            $.get("/slimYB/life-recording/checkDiary?date="+clickDate,function(data, status){
                if (data == "ok") {
                    window.location.href="/slimYB/life-recording/readDiary?date="+clickDate;
                }else{
                    alert("You don't write diary in this day!");
                }
            })
        })

    </script>
</body>
</html>




<%@ include file="/WEB-INF/views/footer.jsp" %>