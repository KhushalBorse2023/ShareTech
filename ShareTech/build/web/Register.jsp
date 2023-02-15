

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%--css--%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Register Page</title>
    </head>
    <body>
        <%--Include NavBar--%>
        <%@include file="Normal_navbar.jsp"%>

        <%--Register Here!--%>
        <main class="d-flex align-items-center height:70vh  Primary-Background">
            <div class="container">
                <div class="col-md-6  offset-md-4" >
                    <div class="card">
                        <div class="card-header  Secondary-Background text-white text-center ">
                            <p>Register Here</p>
                        </div>
                        <div class="card-body">
                            <form id="reg-form" action="RegisterServlet" method="post">
                                <div class="form-group  ">
                                    <label for="user_name">User Name</label>
                                    <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter Your Name">
                                </div>
                                <div class="form-group   ">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group    ">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>

                                <div class="form-group">
                                    <label for="gender">Gender</label>
                                    <input type="radio" id="gender" name="gender">Male
                                    <input type="radio"  id="gender"name="gender">Female   
                                </div>

                                <div class="form-group  ">
                                    <label for="about">About</label>
                                    <textarea class="form-control" name="about" id="" cols="5" rows="5" placeholder="Enter Something about urSelf"></textarea>

                                </div>


                                <div class="form-check  mr-2 ml-2">
                                    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Agree Terms And Condition</label>
                                </div>
                                <div class="container text-center " id="loader" style=" display:none">
                                    <span class="fa fa-refresh fa-spin" style="font-size:24px"></span>
                                </div>
                                <button type="submit" class="btn Secondary-Background mb-2  mr-2 ml-2 ">Submit</button>
                            </form>
                        </div>
                        <div class="card-footer">

                        </div>
                    </div>

                </div>
            </div>
        </main>       





        <%--Javascript--%>
        <script
            src="https://code.jquery.com/jquery-3.6.3.min.js"
            integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

        <%--jquery--%>
        <script>
            $(document).ready(function ()
            {
                console.log("Loaded......");
                $('reg-form').on('submit', function (event)
                {
                    event.preventDefault();
                    let form = new FormData(this);

                    $("#submit-btn").hide();
                    $("#loader").show();


                    //send register servlet 
                    $.ajax({
                        url: "RegisterServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR)
                        {
                            console.log(data);

                            $("#submit-btn").show();
                            $("#loader").hide();
                            if (data.trim() === 'done')
                            {
                                swal("Register Successfully!.")
                                        .then((value) => {
                                            window.location = "login_page.jsp";

                                        });
                            } else
                            {
                                swal(data);

                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown)
                        {
                            console.log(jqXHR);
                            $("#submit-btn").show();
                            $("#loader").hide();
                            swal(data);

                        },
                        processData: false,
                        contentType: false

                    });
                });

            });
        </script>
    </body>
</html>
