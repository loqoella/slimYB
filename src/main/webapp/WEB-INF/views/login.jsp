<%@ include file="/WEB-INF/views/header.jsp" %>

   <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
		<link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
		<link href="/slimYB/static/login.css" rel="stylesheet">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <body>
		<div class="container">
           
            <header>
                <h1>Login and Registration</h1>
				
            </header>
            <section>				
                <div id="container_demo" >
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="mysuperscript.php" autocomplete="on"> 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" > Your email address </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="mymail@mail.com"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd"> Your password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">Keep me logged in</label>
								</p>
                                <p class="login button"> 
                                   <a class="btn btn-info" href="/slimYB/" style = "text-decoration: none; color: white;">login</a>
								</p>
                                <p class="change_link">
									Not a member yet ?
									<a href="#toregister" class="to_register">Join us</a>
								</p>
                            </form>
                        </div>

                        <div id="register" class="animate form">
                            <form  action=" " autocomplete="on"> 
                                <h1> Sign up </h1>                    
                                 <p>
                                	<label for="usernamesignup" >Your username</label>
                                    <input id="usernamesignup" name="usernamesignup" required="required" type="text" placeholder="mysuperusername690" />
                                </p>                                
                                <p> 
                                    <label for="emailsignup" class="youmail"  > Your email</label>
                                    <input id="emailsignup" name="emailsignup" required="required" type="email" placeholder="mysupermail@mail.com"/> 
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" >Your password </label>
                                    <input id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" >Please confirm your password </label>
                                    <input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p>                                	
                                	<label for="gender" >Gender</label>
                                	<nobr>
                                		<div class="form-check">
                                		<input class="form-check-input" type="radio" name="gender" id="gender" value="gender" checked>
 										<label class="form-check-label" for="male">Male</label>
 										<label class="form-check-label" for="female">FeMale</label>
  										</div>
                                	</nobr>
                                </p>                                
                                <p> 
                                    <label for="birthday" >Your birthday </label>
                                    <nobr>
										<select id="day" name="day" style="margin-left: 28%;">
    										<option value="-">-</option>
   											<option value="2">2</option>
    										<option value="3">3</option>
    										<option value="4">4</option>
    										<option value="5">5</option>		
    										<option value="6">6</option>		
    										<option value="7">7</option>
    										<option value="8">8</option>
    										<option value="9">9</option>
    										<option value="10">10</option>
    										<option value="11">11</option>
    										<option value="12">12</option>
    										<option value="13">13</option>
    										<option value="14">14</option>	
    										<option value="15">15</option>
   											<option value="16">16</option>
    										<option value="17">17</option>		
    										<option value="18">18</option>
    										<option value="19">19</option>
    										<option value="20">20</option>
    										<option value="21">21</option>
    										<option value="22">22</option>
    										<option value="23">23</option>
    										<option value="24">24</option>
    										<option value="25">25</option>
  											<option value="26">26</option>
    										<option value="27">27</option>
    										<option value="28">28</option>
    										<option value="29">29</option>
    										<option value="30">30</option>
    										<option value="31">31</option>
										</select>
										<select id="month" name="month" >
    										<option value="-">-</option>
    										<option value="1">01</option>
    										<option value="2">02</option>
    										<option value="3">03</option>
    										<option value="4">04</option>
    										<option value="5">05</option>	
    										<option value="6">06</option>
    										<option value="7">07</option>
    										<option value="8">08</option>
    										<option value="9">09</option>
    										<option value="10">10</option>
    										<option value="11">11</option>
    										<option value="12">12</option>
										</select>
 										<select id="year" name="year">
    										<option value="-">-</option>
    										<option value="2001">2001</option>
    										<option value="2000">2000</option>
    										<option value="1999">1999</option>
   											<option value="1998">1998</option>
    										<option value="1997">1997</option>
    										<option value="1996">1996</option>
    										<option value="1995">1995</option>
    										<option value="1994">1994</option>
    										<option value="1993">1993</option>
    										<option value="1992">1992</option>
    										<option value="1991">1991</option>
    										<option value="1990">1990</option>
    										<option value="1989">1989</option>
    										<option value="1988">1988</option>
    										<option value="1987">1987</option>
    										<option value="1986">1986</option>
    										<option value="1985">1985</option>
    										<option value="1984">1984</option>
    										<option value="1983">1983</option>
    										<option value="1982">1982</option>
    										<option value="1981">1981</option>
    										<option value="1980">1980</option>
    										<option value="1979">1979</option>
    										<option value="1978">1978</option>
    										<option value="1977">1977</option>
    										<option value="1976">1976</option>
    										<option value="1975">1975</option>
    										<option value="1974">1974</option>
    										<option value="1973">1973</option>
    										<option value="1972">1972</option>
    										<option value="1971">1971</option>
    										<option value="1970">1970</option>
    										<option value="1969">1969</option>
    										<option value="1968">1968</option>
    										<option value="1967">1967</option>
    										<option value="1966">1966</option>
    										<option value="1965">1965</option>
    										<option value="1964">1964</option>
    										<option value="1963">1963</option>
    										<option value="1962">1962</option>
    										<option value="1961">1961</option>
    										<option value="1960">1960</option>
    										<option value="1959">1959</option>
										</select>
									</nobr>
                                </p>                              
                                <p> 
                                	<nobr>
                                    	<label for="age"> Age </label>
                                    	<select style="margin-left: 45%;">
											<option value="-">-</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option>
											<option value="32">32</option>
											<option value="33">33</option>
											<option value="34">34</option>
											<option value="35">35</option>
											<option value="36">36</option>
											<option value="37">37</option>
											<option value="38">38</option>
											<option value="39">39</option>
											<option value="40">40</option>
											<option value="41">41</option>
											<option value="42">42</option>
											<option value="43">43</option>
											<option value="44">44</option>
											<option value="45">45</option>
											<option value="46">46</option>
											<option value="47">47</option>
											<option value="48">48</option>
											<option value="49">49</option>
											<option value="50">50</option>
											<option value="51">51</option>
											<option value="52">52</option>
											<option value="53">53</option>
											<option value="54">54</option>
											<option value="55">55</option>
											<option value="56">56</option>
											<option value="57">57</option>
											<option value="58">58</option>
											<option value="59">59</option>
											<option value="60">60</option>				
										</select>
									</nobr>
                                </p>                               
                                <p class="signin button"> 
									<input type="submit" value="Sign up"/> 
								</p>
                                <p class="change_link">  
									Already a member ?
									<a href="#tologin" class="to_register"> Go and log in </a>
								</p>
                            </form>
                        </div>
						
                    </div>
                </div>  
            </section>
            
        </div>
	
	</body>
<%@ include file="/WEB-INF/views/footer.jsp" %>
