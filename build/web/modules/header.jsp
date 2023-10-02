<header id="header" class="fixed-top d-flex align-items-center ">
    <div class="container d-flex align-items-center justify-content-between">

        <div class="logo">
            <a href="profile.jsp"><img src="https://res.cloudinary.com/dxjyi2glj/image/upload/v1679947609/logo_tma4qf.png" alt="DSAcharya" class="img-fluid"> Acharya</a>
        </div>

        <nav id="navbar" class="navbar">
            <ul>
                <li><a class="nav-link scrollto " href="leaderboard.jsp">Leaderboard</a></li>
                <li><a class="nav-link scrollto " href="profile.jsp">Topic-wise List</a></li>
                <li><a class="nav-link scrollto" href="companyquestions.jsp">Company-wise List</a></li>
                <li><a class="nav-link scrollto " href="videolecture.jsp">Video Lectures</a></li>
                <li class="dropdown"><a href="#"><i class="bi bi-person-badge-fill" style="font-size: 1.2rem;margin-right: 10px;"></i>
                        <%
                            try {
                                out.print(user.getName());
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>

                    </a>
                    <ul>
                        <li><a href="logout"> Logout <i class="bi bi-box-arrow-right" style="font-size: 1.2rem;margin-left: 1px;"></i> </a>
                        </li>

                        <li class="rightdropdown"><a href="#"><span>Settings</span> <i class="bi bi-chevron-right"></i></a>
                            <ul>
                                <li><a href="#" data-bs-toggle="modal" data-bs-target="#profile-modal" > Edit Profile <i class="bi bi-credit-card-2-front" style="font-size: 1.2rem;margin-left: 1px;"></i> </a></li>
                                <!--<li><a href="#" data-bs-toggle="modal" data-bs-target="#" > Check Progress <i class="bi bi-trash" style="font-size: 1.2rem;margin-left: 1px;"></i> </a></li>-->
                                <!--<li><a href="#">Deep Drop Down 3</a></li>
                                    <li><a href="#">Deep Drop Down 4</a></li>
                                    <li><a href="#">Deep Drop Down 5</a></li> -->
                            </ul>
                        </li>
                    </ul>
                </li>

            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav>
        <!-- .navbar -->

    </div>
</header>