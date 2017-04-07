
<html >
<script  type="text/javascript" src="../js/jquery-1.11.0.min.js"></script>
<script  type="text/javascript" src="../js/Jquery-validation.js"></script>
<script  type="text/javascript" src="../js/registration.js"></script>



<head>
<title>Sample User  Registration </title>
</head>

<link rel="stylesheet"  href="${createLinkTo(dir:'css',file:'style.css')}" />
<body >
<div class="container">
  <h2>Registration</h2>
  <form action="registration" name="registration" method="post" >

    <label for="firstname">First Name</label>
    <input type="text" name="firstname" id="firstname" />

    <label for="lastname">Last Name</label>
    <input type="text" name="lastname" id="lastname" />

    <label for="email">Email</label>
    <input type="email" name="email" id="email" />

    <label for="password">Password</label>
    <input type="password" name="password" id="password" />

    <button type="submit">Register</button>
	<br/><br/>
	<a href='login' style = "margin-left: 43%;color:red;"> Login </a> 
  </form>
  


</div>
</body>
</html>