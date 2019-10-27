<%@ include file="/WEB-INF/views/header.jsp" %>

<div class="jumbotron">
    <h1 class="display-4" style="text-align:center;"> My Profile </h1>

    <p class="lead" style="position:absolute;font-size:30px"> Information</p>
    <br>
    <br>
    <br>
    <p class = "lead" style="position:absolute;left: 20%;" > Username : </p>
    <p class = "lead" style="position:absolute;left: 30%;" > ${user.getUsername()} </p>
    <p class = "lead" style="position:absolute;left: 60%;" > Email : </p>
    <p class = "lead" style="position:absolute;left: 70%;" > ${user.getEmail()}</p>
    <br>
    <br>
    <p class = "lead" style="position:absolute;left: 20%;" > Birthday : </p>
    <p class = "lead" style="position:absolute;left: 30%;" > ${user.getBirthday()}</p>
    <p class = "lead" style="position:absolute;left: 60%;" > Age : </p>
    <p class = "lead" style="position:absolute;left: 70%;" > ${user.getAge()}</p>
    <br>
    <br>
    <p class = "lead" style="position:absolute;left: 20%;" > Gender : </p>
    <p class = "lead" style="position:absolute;left: 30%;" > ${user.getGender()} </p>
    <br>
    <br>
    <br>
    <p class="lead" style="position:absolute;font-size:30px"> Physical Data</p>
    <br>
    <br>
    <br>
    <p class = "lead" style="position:absolute;left: 20%;" > Height : </p>
    <p class = "lead" style="position:absolute;left: 30%;" > ${user.getHeight()}</p>
    <p class = "lead" style="position:absolute;left: 35%;" > cm </p>
    <p class = "lead" style="position:absolute;left: 60%;" > Weight : </p>
    <p class = "lead" style="position:absolute;left: 70%;" > ${user.getWeight()} </p>
    <p class = "lead" style="position:absolute;left: 75%;" > KG </p>
    <br>
    <br>
    <p class = "lead" style="position:absolute;left: 20%;" > Bust : </p>
    <p class = "lead" style="position:absolute;left: 30%;" > ${user.getBust()} </p>
    <p class = "lead" style="position:absolute;left: 35%;" > cm </p>
    <p class = "lead" style="position:absolute;left: 60%;" > Waist : </p>
    <p class = "lead" style="position:absolute;left: 70%;" > ${user.getWaist()} </p>
    <p class = "lead" style="position:absolute;left: 75%;" > cm </p>
    <br>
    <br>
    <p class = "lead" style="position:absolute;left: 20%;" > Hips : </p>
    <p class = "lead" style="position:absolute;left: 30%;" > ${user.getHips()} </p>
    <p class = "lead" style="position:absolute;left: 35%;" > cm </p>
    <p class = "lead" style="position:absolute;left: 60%;" > BMI : </p>
    <p class = "lead" style="position:absolute;left: 70%;" > ${user.getBMI()} </p>
    <br>
    <br>
    <br>
    <a href="/slimYB/profile/profile-change??Email=${user.getEmail()}">
    	<button type="button" style="position:absolute;left: 38%;font-size: 20px;width:300px" > Change Data </button>
    </a>
    <br>
    <br>
    <p class = "lead" style="font-size:15px;text-align:center;text-decoration:underline"><i>More detail professional body data report</i></p>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>