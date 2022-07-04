<jsp:include page="cheader.jsp"></jsp:include>
<div class="main">
    <div class="content">
        <div class="login_panel" style="width: 400px;">
            <h3>Existing Customers</h3>
            <p>Sign in with the form below.</p>
            <form method="post" autocomplete="off">
                <input name="userid" type="text" placeholder="User ID">
                <input name="pwd" type="password" placeholder="Password">                
                <div class="buttons"><div><button class="grey">Sign In</button></div></div>
                <jsp:include page="msg.jsp"></jsp:include>
            </form>
        </div>
        <div class="register_account" style="width:650px;">
<!--             <img src="images/download.jpg" class="img-thumbnail float-right" style="width: 261px;margin-top: 37px;height: 346px;"> -->
            <h3>Register New Account</h3>
            <form autocomplete="off" action="/register/" method="post">
                <table>
                    <tbody>
                <tr>
                    <td>
                        <div><input name="fname" required type="text" 
                                            placeholder="First Name "> 
                                            <input name="lname" required type="text" 
                                            placeholder="Last Name "> 
                                            <input name="userid" required type="text" 
                                            placeholder="User ID"> 
                                            <input name="dob" required type="date" 
                                            >
                                            <select name="gender" required 
                                            >
                                            <option>Male</option>
                                            <option>Female</option>
                                            </select>                                
                                <input type="text" required
                                            name="email" placeholder="Email Id">
                                                                            
                                <input type="password" required name="pwd" 
                                            placeholder="Password">
                                <input type="password" required name="cpwd" 
                                        placeholder="Repeat Password">
                    </td>                            
                </tr> 
                    </tbody></table> 
                <div class="buttons"><div><button class="grey">Create Account</button></div></div>
                <p class="terms">By clicking 'Create Account' you agree to the <a href="#">Terms &amp; Conditions</a>.</p>
                <div class="clear"></div>
            </form>
        </div>  	
        <div class="clear"></div>
    </div>
</div>
<jsp:include page="cfooter.jsp"></jsp:include>