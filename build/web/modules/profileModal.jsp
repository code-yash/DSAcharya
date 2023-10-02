<section class="inner-page">
                <div class="container">
                    <div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <p class="modal-title" id="exampleModalLongTitle">User Profile Details</p>
                                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="container text-center">
                                        <img src="assets/pics/<% try {
                                                out.print(user.getProfile_pic());
                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            }%>" class="img-fluid" style="border-radius:50%;max-width: 100px;;" >
                                        <br>
                                        <p class="modal-title mt-3" id="exampleModalLabel"> <%try {
                                                out.print(user.getName());
                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            }%> </p>


                                        <!--//details-->

                                        <div id="profile-details">
                                            <%
                                                Message msg = (Message) session.getAttribute("msg");
                                                if (msg != null) {
                                            %>

                                            <div class="alert <%= msg.getCssClass()%> mt-2" role="alert">
                                                <%= msg.getContent()%>
                                            </div>

                                            <%
                                                }
                                                session.removeAttribute("msg");
                                            %>
                                            <table class="table">

                                                <tbody>
                                                    <tr>
                                                        <th scope="row"> ID :</th>
                                                        <td> <%try {
                                                                out.print(user.getId());
                                                            } catch (Exception e) {
                                                                e.printStackTrace();
                                                            }%></td>

                                                    </tr>
                                                    <tr>
                                                        <th scope="row"> Email : </th>
                                                        <td><%try {
                                                                out.print(user.getEmail());
                                                            } catch (Exception e) {
                                                                e.printStackTrace();
                                                            }%></td>

                                                    </tr>


                                                    <tr>
                                                        <th scope="row">Registered on :</th>
                                                        <td><%try {
                                                                out.print(user.getDatetime().toString());
                                                            } catch (Exception e) {
                                                                e.printStackTrace();
                                                            }%></td>

                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                        <!--profile edit-->

                                        <div id="profile-edit" style="display: none;">
                                            <p style="font-size: 0.7rem; font-family: 'Poppins', 'Open Sans';" class="mt-2">
                                                Please Edit Carefully
                                            </p>
                                            <form action="EditProfile" method="post" enctype="multipart/form-data">
                                                <table class="table" style="text-align:center; vertical-align:middle;">
                                                    <tr>
                                                        <td>ID :</td>
                                                        <td><%try {
                                                                out.print(user.getId());
                                                            } catch (Exception e) {
                                                                e.printStackTrace();
                                                            }%></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Email :</td>
                                                        <td> <input type="email" class="form-control" name="user_email" value="<%try {
                                                                out.print(user.getEmail());
                                                            } catch (Exception e) {
                                                                e.printStackTrace();
                                                            }%>" > </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Name :</td>
                                                        <td> <input type="text" class="form-control" name="user_name" value="<%try {
                                                                out.print(user.getName());
                                                            } catch (Exception e) {
                                                                e.printStackTrace();
                                                            }%>" > </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Password :</td>
                                                        <td> <input type="password" class="form-control" name="user_password" value="<%try {
                                                                out.print(user.getPassword());
                                                            } catch (Exception e) {
                                                                e.printStackTrace();
                                                            }%>" > </td>
                                                    </tr>

                                                    <tr>
                                                        <td>New Profile:</td>
                                                        <td>
                                                            <input type="file" name="image" class="form-control" >
                                                        </td>
                                                    </tr>

                                                </table>

                                                <div class="container">
                                                    <button type="submit" class="btn btn-outline-primary">Save</button>
                                                </div>

                                            </form>    

                                        </div>

                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <button id="edit-profile-button" type="button" class="btn btn-primary">Edit</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
            </section>