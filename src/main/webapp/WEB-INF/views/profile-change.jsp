<%@ page import="java.util.List" %>
<%@ include file="/WEB-INF/views/header.jsp" %>

<div class="jumbotron">
    <h1 class="display-4" style="text-align:center;"> My Profile </h1>

    <p class="lead" style="position:absolute;font-size:30px"> Information</p>
    <br>
    <br>
    <br>
    <form action='/slimYB/profile/change' method="post">
    <p class = "lead" style="position:absolute;left: 20%;" > Username : </p>
    <input type = "text" name = username value = "${profile.getUsername()}" style="margin-left: 25%;color:#999999">
    <a class = "lead" style="position:absolute;left: 60%;" > Email : </a>
    <a class = "lead" style="position:absolute;left: 70%;" > ${profile.getEmail()} </a>   
    <br>
    <br>
    <a class = "lead" style="position:absolute;left: 20%;" > Birthday : </a>
    <a class = "lead" style="position:absolute;left: 30%;" > ${profile.getBirthday()} </a>
    <a class = "lead" style="position:absolute;left: 60%;" > Age : </a>
    <a class = "lead" style="position:absolute;left: 70%;" > ${profile.getAge()} </a>
    <br>
    <br>
    <a class = "lead" style="position:absolute;left: 20%;" > Gender : </a>
    <a class = "lead" style="position:absolute;left: 30%;" > ${profile.getGender()} </a>
    <br>
    <br>
    <br>
    <a class="lead" style="position:absolute;font-size:30px"> Physical Data</a>
    <br>
    <br>
    <br>
    <nobr>
    <a class = "lead" style="position:absolute;left: 20%;" > Height : </a>    
    <input type = "text" name = height value = "${profile.getHeight()}" size="6" style="margin-left: 25%;color:#999999">
    <a class = "lead" style="position:absolute;left: 35%;" > cm </a>
    <a class = "lead" style="position:absolute;left: 60%;" > Weight : </a>
    <input type = "text" name = weight value = "${profile.getWeight()}" size="6" style="margin-left: 43%;color:#999999">
    <a class = "lead" style="position:absolute;left: 75%;" > KG </a>
    </nobr>
    <br>
    <br>
    <nobr>
    <a class = "lead" style="position:absolute;left: 20%;" > Bust : </a>
    <input type = "text" name = bust value = "${profile.getBust()}" size="6" style="margin-left: 25%;color:#999999">
    <a class = "lead" style="position:absolute;left: 35%;" > cm </a>
    <a class = "lead" style="position:absolute;left: 60%;" > Waist : </a>
    <input type = "text" name = waist value = "${profile.getWaist()}" size="6" style="margin-left: 43%;color:#999999">
    <a class = "lead" style="position:absolute;left: 75%;" > cm </a>
    </nobr>
    <br>
    <br>
    <a class = "lead" style="position:absolute;left: 20%;" > Hips : </a>
    <input type = "text" name = hips value = "${profile.getHips()}" size="6" style="margin-left: 25%;color:#999999">
    <a class = "lead" style="position:absolute;left: 35%;" > cm </a>
    <a class = "lead" style="position:absolute;left: 60%;" > BMI : </a>
    <a class = "lead" style="position:absolute;left: 70%;" > ${profile.getBMI()} </a>
    <br>
    <br>
    <br>
    <a>
    <button type="submit" onclick="/profile/change" style="position:absolute;left: 45%;font-size: 20px; width:100px" > Save</button>
    </a>
    </form>
    <br>
    <br>
    <p class = "lead" style="font-size:15px;text-align:center;text-decoration:underline"><i>More detail professional body data report</i></p>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>