<%@ include file="/WEB-INF/views/header.jsp" %>

<div class="jumbotron">
    <h1 class="display-4" style="text-align:center;"> My Profile </h1>

    <p class="lead" style="position:absolute;font-size:30px"> Information</p>
    <br>
    <br>
    <br>
    
    <p class = "lead" style="position:absolute;left: 20%;" > Username : </p>
    <input type = "text" name = username value = Pony style="margin-left: 25%;color:#999999">
    <a class = "lead" style="position:absolute;left: 60%;" > Email : </a>
    <a class = "lead" style="position:absolute;left: 70%;" > Pony@gmail.com </a>   
    <br>
    <br>
    <a class = "lead" style="position:absolute;left: 20%;" > Birthday : </a>
    <a class = "lead" style="position:absolute;left: 30%;" > dd/mm/yyyy </a>
    <a class = "lead" style="position:absolute;left: 60%;" > Age : </a>
    <a class = "lead" style="position:absolute;left: 70%;" > xx </a>
    <br>
    <br>
    <a class = "lead" style="position:absolute;left: 20%;" > Gender : </a>
    <a class = "lead" style="position:absolute;left: 30%;" > Male/Female </a>
    <br>
    <br>
    <br>
    <a class="lead" style="position:absolute;font-size:30px"> Physical Data</a>
    <br>
    <br>
    <br>
    <nobr>
    <a class = "lead" style="position:absolute;left: 20%;" > Height : </a>    
    <input type = "text" name = height value = xxx.xx size="6" style="margin-left: 25%;color:#999999">
    <a class = "lead" style="position:absolute;left: 35%;" > cm </a>
    <a class = "lead" style="position:absolute;left: 60%;" > Weight : </a>
    <input type = "text" name = weight value = xx.x size="6" style="margin-left: 43%;color:#999999">
    <a class = "lead" style="position:absolute;left: 75%;" > KG </a>
    </nobr>
    <br>
    <br>
    <nobr>
    <a class = "lead" style="position:absolute;left: 20%;" > Bust : </a>
    <input type = "text" name = bust value = xx.x size="6" style="margin-left: 25%;color:#999999">
    <a class = "lead" style="position:absolute;left: 35%;" > cm </a>
    <a class = "lead" style="position:absolute;left: 60%;" > Waist : </a>
    <input type = "text" name = waist value = xx.x size="6" style="margin-left: 43%;color:#999999">
    <a class = "lead" style="position:absolute;left: 75%;" > cm </a>
    </nobr>
    <br>
    <br>
    <a class = "lead" style="position:absolute;left: 20%;" > Hips : </a>
    <input type = "text" name = hips value = xx.x size="6" style="margin-left: 25%;color:#999999">
    <a class = "lead" style="position:absolute;left: 35%;" > cm </a>
    <a class = "lead" style="position:absolute;left: 60%;" > BMI : </a>
    <a class = "lead" style="position:absolute;left: 70%;" > xx.x </a>
    <br>
    <br>
    <br>
    <button type="button" style="position:absolute;left: 45%;font-size: 20px; width:100px" > Save</button>
    <br>
    <br>
    <p class = "lead" style="font-size:15px;text-align:center;text-decoration:underline"><i>More detail professional body data report</i></p>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>