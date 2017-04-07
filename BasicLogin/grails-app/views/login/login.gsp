<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<link rel="stylesheet"  href="${createLinkTo(dir:'css',file:'style.css')}" />
<script  type="text/javascript" src="../js/jquery-1.11.0.min.js"></script>
<script  type="text/javascript" src="../js/Jquery-validation.js"></script>
<head>
<title>Sample User  Login</title>

<script language="JavaScript" type="text/javascript">

</script>

</head>
<body >

	<div class="container">
		
				<div class="box-content clear-float">

					<h1>
						User Login
						<!--Sign in to OpenAM -->
					</h1>
					<form name="Login" action="authenticate"
						method="post">
					
						<div class="row">
							<label for="userId"> User Name: </label> <input class="textbox"
								type="text" name="userId" id="userId"  value="" />
						</div>
						
						<div class="row">
							<label for="password"> Password: </label> <input class="textbox"
								type="password" name="password" id="password" value="" />
						</div>
						<fieldset>
							<div class="row">
								<input name="Login.Submit" type="submit" style="background:blue !important;"
									value="Log In" />
							</div>
							
						</fieldset>
						
						 
					</form>

		<form name="registration" action="showregistration"
						method="get">
		<a  href="showregistration" ><font color="red;"> Click Here To Register</font> </a>
		</form>
		</div>
	</div>
	<script>
	
	
	$(document).ready(function(){

		 $("userId").value = '';
		$("password").value = '';
			 
	  $("form[name='Login']").validate({
	    
	    rules: {
	    
	      // on the right side
	      password: "required",
	      userId: "required",
	     
	    },
	    // Specify validation error messages
	    messages: {
	    	userId: "Please enter your UserName",
	    	password: "Please enter your Password",
	      
	    },
	   
	    submitHandler: function(form) {
	      form.submit();
	    }
	  });
	});
	</script>
</body>

</html>
