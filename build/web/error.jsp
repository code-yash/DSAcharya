<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry ! something went wrong!</title>

        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="assets/css/style.css" rel="stylesheet">

    </head>
    <body>
        <div class="container text-center">
            <img alt="Error Image" src="https://res.cloudinary.com/dxjyi2glj/image/upload/v1679954913/error_baw0ji.jpg"> 
            <h3>
                Something Went Wrong! <br>
            <small class="text-muted">Click to go to homepage</small> 
            </h3>
            
            <p> Error: <%= exception %> </p>
            
            <a href="http://localhost:8080/dsacharya/index.jsp" class="btn text-white mt-3" style="background: rgba(1, 4, 136, 0.9);">Home </a>
        </div>


    </body>
</html>