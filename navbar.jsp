<%@ page import="models.User" %>

<nav>
    <a href="indes.html" style="text-decoration:none; color:white; ">
        <h1 style="display: inline-block; font-size: 50px;">LOGO</h1>
    </a>

  <%  User us = (User)session.getAttribute("user"); %>
    
    <div class="nav-links" id="navLinks">
        <i class="fa fa-times" onclick="hideMenu()"></i>
        <ul>
            <li><a href="#">HOME</a></li>
            <li><a href="">PG</a></li>
            <li><a href="">ABOUT</a></li>

 <% if(us!=null) { %>
         <div class="w3-dropdown-hover">
            <button class="w3-button w3-block" style="color:white">MY ACCOUNT</button>
            <div class="w3-dropdown-content w3-bar-block w3-border">
              <a href="userprofile.jsp" class="w3-bar-item w3-button">My Profile</a>
              <a href="#" class="w3-bar-item w3-button">My Booking</a>
              <a href="#" class="w3-bar-item w3-button">Change Password</a>
              <a href="#" class="w3-bar-item w3-button">Logout</a>
            </div>
          </div>
      <% } else { %>
            <li><a href="ownerlogin.do">OWNER</a></li>

            <li><a href="userlogin.do">LOGIN/REGISTER</a></li>
         <% } %>   
            <li><a href="">CONTACT</a></li>
        </ul>

    </div>
    <i class="fa fa-bars" onclick="showMenu()"></i>
</nav>


