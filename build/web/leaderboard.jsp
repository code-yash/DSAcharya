<%@page import="com.dsacharya.helper.ConnectionProvider"%>
<%@page import="com.dsacharya.dao.UserDao"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dsacharya.entities.Message"%>
<%@page import="com.dsacharya.entities.User"%>
<%  User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("register_login.jsp");
    }
    
UserDao udao = new UserDao(ConnectionProvider.getConnection());
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
        <link href="assets/css/tablecss.css" rel ="stylesheet">

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
                        <h2>Leaderboard</h2>
                        <ol>
                            <li><a href="index.jsp">Home</a></li>
                            <li>Leaderboard</li>
                        </ol>
                    </div>

                </div>
            </section>
            <!-- End Breadcrumbs Section -->

            <section>
                <div class="container">
                    <div class="row">
                        <section class="content">
                            <div>
                                <div class="card">
                                    <div class="card-body">
                                        <div class="float-sm-end" style="margin-bottom: 10px;">
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-secondary btn-filter bi - bi-arrow-clockwise" onClick="window.location.reload();" >Refresh</button>
                                            </div>
                                        </div>
                                        <div class="table-container">
                                            <table class="table table-filter">
                                                <tr class="head">
                                                    <th scope="col" style="width:10%">Rank</th>
                                                    <th scope="col" style="width:10%"> User Id</th>
                                                    <th scope="col" style="width:50%">Name</th>
                                                    <th scope="col" style="width:30%">Questions Done</th>
<!--                                                    <th scope="col" style="width:5%">Company</th>
                                                    <th scope="col" style="width:5%">Tags</th>-->
                                                </tr>
                                                <tbody>
                                                    <%                                                        

                                                        ArrayList<User> ulist = udao.getUserRankwise();
                                                        int rank = 0;
                                                        for (User u : ulist) 
                                                        { rank++;
                                 
                                                    %>
                                                    <tr>
                                                        <td>
                                                            <p class="title" style="color:<% if(u.getId() == user.getId()) out.print("#5cb85c;"); %>">
                                                                <%= rank %>
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p class="summary">
                                                                <%= u.getId()%>
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div>
                                                                <a style="text-decoration: none"><p class="title hovertitle" style="color:<% if(u.getId() == user.getId()) out.print("#5cb85c;"); %>">
                                                                        <%= u.getName()%>
                                                                    </p></a> 
                                                                  
                                                            </div>
                                                        </td>
                                                        
                                                        <td>
                                                            <p class="summary">
                                                                <%= u.getQdone()%>
                                                            </p>
                                                        </td>
                                                    </tr>

                                                    <%
                                                        
                                                        }

                                                    %>


                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>

                    </div>
                </div>
            </section>


        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <%@include file="modules/footer.jsp" %>
        <!-- End Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
        <div id="preloader"></div>

        <!-- Vendor JS Files -->
        <script src="../assets/vendor/purecounter/purecounter_vanilla.js"></script>
        <script src="../assets/vendor/aos/aos.js"></script>
        <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="../assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="../assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="../assets/vendor/php-email-form/validate.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>


        <!-- Main JS File -->
        <script src="assets/js/main.js"></script>
        <script src="assets/js/table.js"></script>

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