<%-- 
    Document   : index
    Created on : 22 Dec, 2017, 10:46:02 PM
    Author     : suren
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../headfile.html" %>
        <link href="../css/pop.css" rel="stylesheet">
    
        
    </head>
    <body>
           <div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4 text-center">
			<div class="search-box">
				<div class="caption">
					<h3>Login to save</h3>
					<p>Images</p>
				</div>
                            <form action="validate.jsp" method="POST" class="loginForm">
					<div class="input-group">
						<input type="text" id="name" name="username" class="form-control" placeholder="Full Name">
						<input type="password" id="paw" name="pass" class="form-control" placeholder="Password">
                                                <input type="submit" id="submit" class="form-control" value="Submit">
                                                

                                                
                                                
					</div>
				</form>
			</div>
		</div>
		<div class="col-md-4">
			<div class="aro-pswd_info">
				<div id="pswd_info">
					<h4>Password must be requirements</h4>
					<ul>
						<li id="letter" class="invalid">At least <strong>one letter</strong></li>
						<li id="capital" class="invalid">At least <strong>one capital letter</strong></li>
						<li id="number" class="invalid">At least <strong>one number</strong></li>
						<li id="length" class="invalid">Be at least <strong>8 characters</strong></li>
						<li id="space" class="invalid">be<strong> use [~,!,@,#,$,%,^,&,*,-,=,.,;,']</strong></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
        <!-- Animation Jquery -->
        <script src="../js/jquery.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/animation.js"></script>
        <script src="../js/login.js"></script>
    </body>
</html>
