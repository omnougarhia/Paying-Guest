<%@ page import="models.User" %>

  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="css/style.css" type="text/css">
    <!--External CSS File-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Awesome Font -->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <!--Bootstrap 4-->
    <!-- <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css"> CSS
    <script src="bootstrap/js/bootstrap.min.js"></script> -->
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
      integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
      crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
      integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"></script> -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"></script>

      <script src="https://unpkg.com/dropzone@6.0.0-beta.1/dist/dropzone-min.js"></script>
      <link href="https://unpkg.com/dropzone@6.0.0-beta.1/dist/dropzone.css" rel="stylesheet" type="text/css" />
  

    <style>
      .header {

        min-height: 10vh;
        width: 100%;
        background-image: linear-gradient(rgba(4, 9, 30, 0.7), rgba(4, 9, 30, 0.7)), url(images/pgimage.jpg);
        background-position: center;
        background-size: cover;
        position: relative;


      }

      /* jjjjjjjjjjjjjjj */

      #drop_img {
            width: 250px;
            /* border: 5px dashed #111; */
            border: none;
            border-radius: 50%;
            margin: 5px auto;
            background: url(images/use.png);
            background-size:250px;
            background-position: center;
            background-repeat:no-repeat;
            
            color: #555;
            font-family: verdana;
            font-size: 26px;
            font-weight: bold;
            text-align: center;
        }

        #drop_img .dz-preview {

            border-radius: 50%;
            border: 3px solid red;
            position:relative;
            right:41px;
        }



        .dropzone .dz-preview .dz-image {

            border-radius: 50%;
            width:250px;
            height:250px;
        }

        /* .dropzone .dz-preview .dz-success-mark,
        .dropzone .dz-preview .dz-error-mark {

        } */

        .dropzone .dz-message .dz-button {

            width: 120px;
            height: 120px;
            /* border: 3px solid black; */
            border-radius: 50%;
        }

        .dropzone .dz-preview .dz-image img {

             width:250px;
             position:relative;

}

   #img {

    width:170px;    
    height:140px;
    border-radius: 50%;
    
   }
  
     #msg {

      display: none;
      
     }

     #update {

      display: none;
      color: red;
      position:relative;
      top:80px;
      left:175px;
     }

     #save_btn {
			color: #ffffff;
			background-color: #a28553;
			font-size: 19px;
			border: 1px solid #2d63c8;
			border-radius: 6px;
			padding: 15px 20px;
			letter-spacing: 1px;
			cursor: pointer;
      position: relative;
      left: 150px;
      top:150px;

		}
		#save_btn:hover {
			color: #2d63c8;
			background-color: #ffffff;
		}

    .bg-custom {

      background-color: rgb(228, 221, 184);
      height:450px;
      width:3000px;
      border-radius: 15px;
    }
        
    </style>
  </head>

  <body style="background-color: rgb(228, 221, 184);">


    <section class="header">

      <%@ include file="navbar.jsp" %>


    </section>
<h1 class="nm">Welcome Back: <%= us.getName() %></h1>

<% if(us.getPincode() == null) { %>

<div id="msg">
  Updation Failed... Try again later...
</div>

<div id="update">
  Successfully Updated
</div>

    <div class="container  bg-custom">
      <div class="row">
        <div class="col-md-6">
          <div class="profile-links">

            <!-- <img src="images/use.png" alt=""> -->
            <div id="drop_img" class="dropzone">
              <div class="dz-message" data-dz-message><button class="dz-button" type="button">Drop</button></div>
          </div>
          <div style="text-align: center;">
            <input type="button" value="Upload" id="btn">
        </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="mt-custum">
            <div class="details">
              <div class="row">
                <div class="col-8">
                  Address
                </div>
                <div class="col-4">
                  <input type="text" id="address">
                </div>

              </div>

            </div>
            <div class="details">
              <div class="row">
                <div class="col-8">
                  Gender
                </div>
                <div class="col-4">
                <input type="text" id="gender" placeholder="M / F">
                </div>

              </div>

            </div>
            <div class="details">
              <div class="row">
                <div class="col-8">
                  Pincode
                </div>
                <div class="col-4">
                  <input type="text" id="pincode" >

                  
                </div>

              </div>

            </div>
            <div class="details">
              <div class="row">
                <div class="col-8">
                  City
                </div>
                <div class="col-4">
                  <input type="text" id="city" >

                  
                </div>

              </div>

            </div>

          </div>
         <input type="button" id="save_btn" value="update"></input>
        </div>

      </div>


    </div>
 <%  } else { %>

  <div class="container bg-custom">
    <div class="row">
      <div class="col-md-6">
        <div class="profile-links">

          <img src="show_pic.do" alt="" id="img">
          <!-- <div id="drop_img" class="dropzone">
            <div class="dz-message" data-dz-message><button class="dz-button" type="button">Drop</button></div>
        </div> -->
        <!-- <div style="text-align: center;">
          <input type="button" value="Upload" id="btn">
      </div> -->
        </div>
      </div>
      <div class="col-md-6">
        <div class="mt-custum">
          <div class="details">
            <div class="row">
              <div class="col-8">
                Address
              </div>
              <div class="col-4">
               <%= us.getAddress() %>
              </div>

            </div>

          </div>
          <div class="details">
            <div class="row">
              <div class="col-8">
                Gender
              </div>
              <div class="col-4">
              <%= us.getGender() %>
              </div>

            </div>

          </div>
          <div class="details">
            <div class="row">
              <div class="col-8">
                Pincode
              </div>
              <div class="col-4">
                <%= us.getPincode() %>

                
              </div>

            </div>

          </div>
          <div class="details">
            <div class="row">
              <div class="col-8">
                City
              </div>
              <div class="col-4">
                <%= us.getCity() %>

                
              </div>

            </div>

          </div>

        </div>
       <!-- <input type="button" id="save_btn" value="update"></input> -->
      </div>

    </div>


  </div>

  
  <% } %>
<!-- <script src="JS/script.js"></script> -->
    <script>



const btn = document.querySelector('#btn');



let dropImg = new Dropzone('#drop_img', {
    url: 'upload.do?uemail=<%= us.getEmail() %>',
    maxFiles: 5,
    acceptedFiles: 'image/png,.jpg,.gif',
    autoProcessQueue: false,
    createImageThumbnails: true,
    thumbnailWidth: 200,
    thumbnailHeight: 200,
    // addRemoveLinks: true
});


btn.addEventListener('click', () => {
    dropImg.processQueue();
});

const address = document.querySelector("#address");
const gender = document.querySelector("#gender");
const pincode = document.querySelector("#pincode");
const city = document.querySelector("#city");

const save_btn = document.querySelector('#save_btn');

let save_req = null;
save_btn.addEventListener('click', () => {

  console.log("om");
    const obj = {address: address.value, gender: gender.value, pincode: pincode.value, city: city.value};          
    var str = JSON.stringify(obj);

    save_req = new XMLHttpRequest();
    
    save_req.open('GET', 'save.do?user_data='+encodeURIComponent(str), true);
    save_req.setRequestHeader('content-type', 'application/json');
    
    save_req.addEventListener('readystatechange', () => {
        if(save_req.readyState == 4 && save_req.status == 200) {
            if(save_req.responseText == 'yes') {
                document.querySelector("#update").style.display = 'block';
            } else {
                document.querySelector('#msg').style.display = 'block';
            }
        }
    });

    save_req.send();
});
// console.log(email.value);

</script>

  </body>

  </html>