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
    
    <div class="center">
        <h1>Register</h1>

         <% String exists = (String)session.getAttribute("exists"); %>
         <% if(exists != null) { %>
         <div class="exists">
    
           <%= exists %> 

         </div>

         <% } %>

         <% session.removeAttribute("exists"); %>
        <form method="post" style="padding-bottom:15px ;" action="userregister.do">
        <input type="hidden" name="user_" value="3">

            <div class="txt_field">
              <input type="text"  name="name"  required>
              <span></span>
              <label>Name</label>
            </div>

            <div class="txt_field">
                <input type="text"  name="email"  required>
                <span></span>
                <label>Email</label>
              </div>
            
              <div class="txt_field">
                <input type="text"  name="phone"  required>
                <span></span>
                <label>Mobile Number</label>
              </div>
              
            <div class="txt_field">
              <input type="password" name="password" required>
              <span></span>
              <label>Password</label>
            </div>
            <input type="submit" value="SignUp">
  
            
          </form>
        </div>
</body>
</html>