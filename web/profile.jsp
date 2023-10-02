<%@page import="com.dsacharya.entities.Message"%>
<%@page import="com.dsacharya.entities.User"%>
<%@page import="com.dsacharya.dao.MarkDao"%>
<%@page import="com.dsacharya.dao.QuestionDao"%>
<%@page import="com.dsacharya.helper.ConnectionProvider"%>
<%  User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("register_login.jsp");
    }
    
    MarkDao mdao = new MarkDao(ConnectionProvider.getConnection());
    QuestionDao qdao = new QuestionDao(ConnectionProvider.getConnection()); 
%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Profile</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/bundle/aos/aos.css" rel="stylesheet">
        <link href="assets/bundle/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/bundle/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/bundle/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/bundle/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/bundle/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/bundle/swiper/swiper-bundle.min.css" rel="stylesheet">
        

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">
        <link href="assets/css/problemcss.css" rel="stylesheet">
        <link href="assets/css/circleprogressbarcss.css" rel="stylesheet">
        
        
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
                        <h2>Start Learning Here</h2>
                        <ol>
                            <li><a href="index.jsp">Home</a></li>
                            <li>Topics</li>
                        </ol>
                    </div>

                </div>
            </section><!-- End Breadcrumbs Section -->

            <section class="inner-page">
                <div class="container">
                 <div class="section_our_solution">
                        <%@include file="modules/topic_card.jsp" %>
                    </div>
                </div>
                <br>
                <br>
            </section>

        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <%@include file="modules/footer.jsp" %>
        <!-- End Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
        <div id="preloader"></div>

        <!-- Vendor JS Files -->
        <script src="assets/bundle/purecounter/purecounter_vanilla.js"></script>
        <script src="assets/bundle/aos/aos.js"></script>
        <script src="assets/bundle/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/bundle/glightbox/js/glightbox.min.js"></script>
        <script src="assets/bundle/swiper/swiper-bundle.min.js"></script>
        <script src="assets/bundle/php-email-form/validate.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>


        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>
        <script src="assets/js/circleprogressbarjs.js"></script>
        

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