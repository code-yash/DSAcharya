<%@page import="com.dsacharya.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>DSAcharya</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon" />
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

    <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
      rel="stylesheet" />

    <!-- Vendor CSS Files -->
    <link href="assets/bundle/aos/aos.css" rel="stylesheet" />
    <link
      href="assets/bundle/bootstrap/css/bootstrap.min.css"
      rel="stylesheet" />
    <link
      href="assets/bundle/bootstrap-icons/bootstrap-icons.css"
      rel="stylesheet" />
    <link href="assets/bundle/boxicons/css/boxicons.min.css" rel="stylesheet" />
    <link
      href="assets/bundle/glightbox/css/glightbox.min.css"
      rel="stylesheet" />
    <link href="assets/bundle/remixicon/remixicon.css" rel="stylesheet" />
    <link href="assets/bundle/swiper/swiper-bundle.min.css" rel="stylesheet" />

    <!-- Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/loginform.css" rel="stylesheet" />
  </head>

  <body>
    <div class="container" id="container">
      <div class="form-container sign-up-container">
        <form id="reg-form" action="register" method="post">
          <h1>Create Account</h1>
          <input name="user_name" type="text" placeholder="Name" required/>
          <input name="user_email" type="email" placeholder="Email" required/>
          <input name="user_password" type="password" placeholder="Password" required/>
          <button>Sign Up</button>
        </form>
      </div>
      <div class="form-container sign-in-container">
        <form action="login" method="post">
          <h1>Sign in</h1>
          <% 
          Message msg = (Message)session.getAttribute("msg");
          if(msg != null){
          %>
          
          <div class="alert <%= msg.getCssClass() %> mt-2" role="alert">
              <%= msg.getContent() %>
          </div>
          
          <%
              }
              session.removeAttribute("msg");
          %>
          <input name="user_email" type="email" placeholder="Email" required/>
          <input name="user_password" type="password" placeholder="Password" required/>
          <a href="#">Forgot your password?</a>
          <button>Sign In</button>
        </form>
        
      </div>
      <div class="overlay-container">
        <div class="overlay">
          <div class="overlay-panel overlay-left">
            <div class="logo">
                <a style ="color:whitesmoke" href="index.jsp"><img src="assets/img/logo.png" alt="DSAcharya" style = "width:15%;"> <br> Acharya</a>
            </div>
              <br>
            <h1>Welcome Back!</h1>
            <p>
              To keep connected with us please login with your personal info
            </p>
            <button class="ghost" id="signIn">Sign In</button>
          </div>
          <div class="overlay-panel overlay-right">
              <div class="logo">
                <a style ="color:whitesmoke" href="index.jsp"><img src="assets/img/logo.png" alt="DSAcharya" style = "width:15%;"> <br> Acharya</a>
            </div>
              <br>
            <h1>Hello, Friend!</h1>
            <p>Enter your personal details and start journey with us</p>
            <button class="ghost" id="signUp">Sign Up</button>
          </div>
        </div>
      </div>
    </div>
    <div id="preloader"></div>
    
    <!--javascript-->
    <script type="text/javascript" src="assets/js/loginform.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script> 
    
    <script>    
        $(document).ready(function() {
            console.log("data loaded....");
            
            $('#reg-form').on('submit', function(event){
                event.preventDefault();
                
                let form = new FormData(this);
                
                //send to register servlet
                $.ajax({
                   url:"register",
                   type: 'POST',
                   data: form,
                   success: function (data, textStatus, jqXHR) {
                       console.log(data);
                       
                       if(data.trim() === 'done')
                       {
                        swal("User Registered Successfully! \n Now you can login")
                            .then((value) => {
                                window.location="register_login.jsp";
                       });
                       }
                       else if(data.trim() === 'User already exists!'){
                        swal(data)
                            .then((value) => {
                                window.location="register_login.jsp";
                        });
                        }
                       else{
                           swal(data);
                       }
                   },
                   error: function(jqXHR, textStatus, errorThrow){
                       console.log(jqXHR);
                       swal("Something went wrong. Try again!");
                   },
                   processData: false,
                   contentType: false
                });
        
            });
        });
        </script>
  </body>
</html>

