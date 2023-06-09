<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="css/style1.css" type="text/css">

    
</head>
<body>

    <% String invalid = (String)request.getAttribute("invalid"); %>
    
    <div class="center">
        <h1>Login</h1>

     <% if(invalid != null) {  %>    

        <small>invalid</small>

     <% } %>  

        <form method="post" style="padding-bottom:15px ;" action="userlogin.do">
          <div class="txt_field">
            <input type="text"  name="email"  required>
            <span></span>
            <label>email</label>
          </div>
          <div class="txt_field">
            <input type="password" name="password" required>
            <span></span>
            <label>Password</label>
          </div>
          <div class="pass">Forgot Password?</div>
          <input type="submit" value="Login">

          <div class="pa" ><p class="ss" >Don't have an account?</p><a href="userregister.do" class="an">Click here</a></div>
          
        </form>
      </div>
    
</body>
</html>