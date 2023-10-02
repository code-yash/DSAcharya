<%@page import="com.dsacharya.entities.Message"%>
<%@page import="com.dsacharya.entities.User"%>
<%  User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("register_login.jsp");
    }
%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Company Questions</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- CSS Files -->
        <link href="assets/bundle/aos/aos.css" rel="stylesheet">
        <link href="assets/bundle/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/bundle/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/bundle/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/bundle/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/bundle/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/bundle/swiper/swiper-bundle.min.css" rel="stylesheet">


        <!-- Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">
        <link href="assets/css/companiescss.css" rel="stylesheet">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    </head>

    <body>

        <!-- ======= Header ======= -->
        <%@include file="modules/header.jsp"%>
        <!-- End Header -->

        <main id="main">

            <!-- ===== Profile Modal ===== -->
            <!-- Modal -->
            <%@include file="modules/profileModal.jsp" %>
            <!--End Profile Modal-->

            <!-- ======= Breadcrumbs Section ======= -->
            <section class="breadcrumbs">
                <div class="container">

                    <div class="d-flex justify-content-between align-items-center">
                        <h2>Company-Wise Important Questions List</h2>
                        <ol>
                            <li><a href="index.jsp">Home</a></li>
                            <li>Companies Questions</li>
                        </ol>
                    </div>

                </div>
            </section>
            <!-- End Breadcrumbs Section -->
            
            <section class="inner-page">
                <div class="container">
                    <div class="row">
                        <div class="card1" onclick="location.href='CQuestions.jsp?company=microsoft';" style="cursor: pointer;">
                            <img src="https://res.cloudinary.com/dxjyi2glj/image/upload/v1680113708/download_idaral.png" height="50" style="margin-bottom:15px" alt="Microsoft"/>
                            <h4 style="position:absolute; margin-top:10px">Microsoft</h4>
                        </div>
                        
                        <div class="card1" onclick="location.href='CQuestions.jsp?company=google';" style="cursor: pointer;">
                            <img src="https://res.cloudinary.com/dxjyi2glj/image/upload/v1680114919/google-logo_siuvek.jpg" height="50" style="margin-bottom:15px" alt="Microsoft"/>
                            <h4 style="position:absolute; margin-top:10px">Google</h4>
                        </div>
                        
                        <div class="card1" onclick="location.href='CQuestions.jsp?company=adobe';" style="cursor: pointer;">
                            <img src="https://res.cloudinary.com/dxjyi2glj/image/upload/v1680114920/adobe-logo_lckccn.jpg" height="50" style="margin-bottom:15px" alt="Microsoft"/>
                            <h4 style="position:absolute; margin-top:10px">Adobe</h4>
                        </div>
                        
                        <div class="card1" onclick="location.href='CQuestions.jsp?company=amazon';" style="cursor: pointer;">
                            <img src="https://res.cloudinary.com/dxjyi2glj/image/upload/v1680114921/amazon-logo_shdl8j.jpg" height="50" style="margin-bottom:15px" alt="Microsoft"/>
                            <h4 style="position:absolute; margin-top:10px">Amazon</h4>
                        </div>
                        
                        <div class="card1" onclick="location.href='CQuestions.jsp?company=facebook';" style="cursor: pointer;">
                            <img src="https://res.cloudinary.com/dxjyi2glj/image/upload/v1680114924/facebook-logo_iwtila.png" height="50" style="margin-bottom:15px" alt="Microsoft"/>
                            <h4 style="position:absolute; margin-top:10px">Facebook</h4>
                        </div>
                        
                        <div class="card1" onclick="location.href='CQuestions.jsp?company=twitter';" style="cursor: pointer;">
                            <img src="https://res.cloudinary.com/dxjyi2glj/image/upload/v1680114922/twitter-logo_dqmh5q.jpg" height="50" style="margin-bottom:15px" alt="Microsoft"/>
                            <h4 style="position:absolute; margin-top:10px">Twitter</h4>
                        </div>
                    </div>

                </div>
            </section>





        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <%@include file="modules/footer.jsp" %>
        <!-- End Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
        <div id="preloader"></div>

        <!--JS Files -->
        <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>


        <!-- Main JS File -->
        <script src="assets/js/main.js"></script>

        <script>
            $(document).ready(function () {
                let editStatus = false;
                $('#edit-profile-button').click(function ()
                {
                    if (editStatus === false)
                    {
                        $("#profile-details").hide();
                        $("#profile-edit").show();
                        editStatus = true;
                        $(this).text("Back");
                    } else
                    {
                        $("#profile-details").show();
                        $("#profile-edit").hide();
                        editStatus = false;
                        $(this).text("Edit");
                    }
                });
            });
        </script>

    </body>

</html>