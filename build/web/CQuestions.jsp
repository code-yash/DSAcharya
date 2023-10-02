<%@page import="com.dsacharya.dao.CompanyDao"%>
<%@page import="com.dsacharya.entities.MQ"%>
<%@page import="com.dsacharya.dao.MarkDao"%>
<%@page import="com.dsacharya.dao.UserDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dsacharya.entities.Questions"%>
<%@page import="com.dsacharya.dao.QuestionDao"%>
<%@page import="com.dsacharya.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dsacharya.entities.Message"%>
<%@page import="com.dsacharya.entities.User"%>
<%@page import="javax.servlet.http.Cookie" %>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="java.io.*,java.util.*" %>
<%  User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("register_login.jsp");
    }
    
MarkDao mdao = new MarkDao(ConnectionProvider.getConnection());
QuestionDao qdao = new QuestionDao(ConnectionProvider.getConnection());
CompanyDao cdao = new CompanyDao(ConnectionProvider.getConnection());
String company = request.getParameter("company");
    
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

        <!-- Bootstrap CSS Files -->
        <link href="assets/bundle/aos/aos.css" rel="stylesheet">
        <link href="assets/bundle/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/bundle/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/bundle/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/bundle/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/bundle/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/bundle/swiper/swiper-bundle.min.css" rel="stylesheet">


        <!-- Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">
        <link href="assets/css/tablecss.css" rel="stylesheet">
        <link href="assets/css/progressbar.css" rel="stylesheet">
        
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

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
                        <h2><%= company %> questions</h2>
                        <ol>
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="companyquestions.jsp" >Company Questions</a></li>
                            <li><%= company %></li>
                        </ol>
                    </div>

                </div>
            </section><!-- End Breadcrumbs Section -->

            <section>
                <div class="container">
                    
                    <div> <img src="<%= cdao.getCdetails(company) %>" class="img-fluid" alt="Microsoft" style="display: block; margin-left: auto; margin-right: auto; width: 30%;"> 
                    </div>
                    <div class="progress">
                    <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: <%= (mdao.getMarkedQuestionsCountCompany(user.getId(),company) * 100)/ qdao.getTotalQuestionsCountCompany(company)%>%">   
                    <%= mdao.getMarkedQuestionsCountCompany(user.getId(), company) %> / <%= qdao.getTotalQuestionsCountCompany(company) %></div>
                    </div>
                    <div class="row">
                        <section class="content">
                            <div>
                                <div class="card">
                                    <div class="card-body">
                                        <div class="float-sm-end" style="margin-bottom: 10px;">
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-secondary btn-filter bi - bi-arrow-clockwise" onClick="window.location.reload();" >Refresh</button>
                                                <button type="button" class="btn btn-success btn-filter" data-target="easy">Easy</button>
                                                <button type="button" class="btn btn-warning btn-filter" data-target="medium">Medium</button>
                                                <button type="button" class="btn btn-danger btn-filter" data-target="hard">Hard</button>
                                                <button type="button" class="btn btn-primary btn-filter" data-target="all">All Problems</button>
                                            </div>
                                        </div>
                                        <div class="table-container">
                                            <table class="table table-filter">
                                                <tr class="head">
                                                    <th scope="col" style="width:5%">Check</th>
                                                    <th scope="col" style="width:5%">Id</th>
                                                    <th scope="col" style="width:75%">Question</th>
                                                    <th scope="col" style="width:5%">Links</th>
                                                    <th scope="col" style="width:5%">Company</th>
                                                    <th scope="col" style="width:5%">Tags</th>
                                                </tr>
                                                <tbody>
                                                    <%                                                  
                                                        ArrayList<Questions> qlist = qdao.getAllQuestions();
                                                        for (Questions q : qlist) {
                                                            if (q.getQcompany().equalsIgnoreCase(company)) 
                                                            { 
                                                    %>
                                                    <tr data-status= "<%= q.getQcat()%>" >
                                                        <td>
                                                            <div class="form-check">
                                                                <input  class="form-check-input" type="checkbox" id="abc-<%= q.getQid()%>" value= "<%= q.getQid()%>">
                                                                <script>
                                                                document.querySelector("#abc-<%= q.getQid()%>").onclick = function (e) 
                                                                        {
                                                                        console.log("<%= user.getId() %>");
                                                                        let uid=<%=user.getId()%>;
                                                                        let qid = e.target.value;
                                                                        let qcheck = e.target.checked;
                                                                        console.log(qid);
                                                                        console.log(e.target.checked);
                                                                        var ajx=new XMLHttpRequest();
                                                                        ajx.open("POST", "http://localhost:8080/dsacharya/MarkQuestion?uid="+uid+"&qid="+qid+"&qcheck="+qcheck, true)
                                                                        ajx.send()
                                                                       
                                                                    }    
                                                                </script>
                                                                <label class="form-check-label" for="checkbox1"></label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p class="summary">
                                                                <%= q.getQid()%>
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div>
                                                                <a target="_blank" href="<%= q.getQlink()%>" style="text-decoration: none"><p class="title hovertitle">
                                                                    <%= q.getQtitle()%>
                                                                    </p></a>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p class="summary">
                                                                <a class="bi bi-file-code-fill" target="_blank" href="<%= q.getQlink()%>"></a>
                                                                
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p class="title">
                                                                <span class="<%= q.getQcompany()%>" >
                                                                    (<%= q.getQcompany()%>)
                                                                </span>
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p class="title">
                                                                <span class="<%= q.getQcat()%>" >
                                                                    (<%= q.getQcat()%>)
                                                                </span>
                                                            </p>
                                                        </td
                                                        
                                                    </tr>

                                                    <%
                                                            }
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

        <!-- JS Files -->
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
        
        <script>
            function onCheck(q)
            {
                document.getElementById("abc-"+q).checked = true;
            }
            <%
                ArrayList<MQ> mq = mdao.getMarkedQuestions();
                for (MQ qc : mq) 
                {
                    if(user.getId() == qc.getUid() && qdao.getQCompany(qc.getQid()).equals(company))
                    {
                        %>
                            
                        onCheck(<%= qc.getQid() %>);
                        count = <%= mdao.getMarkedQuestionsCountCompany(user.getId(), company) %>
                        
                     <% }
                }   
            %>
        </script>
      
    </body>
</html>
