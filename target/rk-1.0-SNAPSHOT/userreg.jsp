<!doctype html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="component/new.css" rel="stylesheet" type="text/css"/>
    </head>



    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50" style="background-image: url(https://i.pinimg.com/originals/75/1a/24/751a24a755fa6c0b254c12857dc3253b.png);
          background-size:cover; " >

        <%
            if (request.getParameter("m1") != null) {%>
        <script>alert('Login Failed...!');</script>
        <%}%>
        <nav class="navbar navbar-expand-lg navbar-dark"  style="background-color:#147e7e" >
            <a class="navbar-brand" #>
                <img src="img/logo.png" height="15%" width="10%"  alt="">&nbspCARSELLER
            </a>
            <a href="index.html" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;


        </nav>
        </br></br></br></br>
        <h1 align="center"><p style="color:#990000; font-family: Times"><b>User Sign Up..</b></p><h1>
                </br>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <button type="button" class="btn  btn-ig" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp &nbsp <b><i>Sign Up</i></b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>

                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Registration</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form action="userregact.jsp" method="post">
                                    <div class="form-group">
                                        <label for="recipient-name" class="col-form-label">Username:</label>
                                        <input type="text" name="username" required="" class="form-control" >
                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="col-form-label">Password:</label>
                                        <input type="Password" name="password" required="" class="form-control" >


                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="col-form-label">Email:</label>
                                        <input type="email" name="email" required="" class="form-control" >

                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="col-form-label">Mobile:</label>
                                        <input type="text" name="mobile" required="" class="form-control" >

                                    </div>
                                    <center> <input type="submit" class="btn btn-secondary" value="SignUp"></center>
                                    <h6 align="center" text="black">

                                </form>
                            </div>

                            <div class="modal fade" backgroundcolor="red" id="ex" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Welcome!</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>         
                                        </div>
                                        <div class="modal-body" align="center">
                                            <h5 align="center">Click home to search a car</h5>     
                                            <h5 align="center"> To continue with order payment , please select payment</h5>
                                            <div class="modal-footer">      
                                                <a href=""  class="btn btn-danger btn-lg" role="button" aria-pressed="true">Home</a>&nbsp&nbsp
                                                <a href="" class="btn btn-danger btn-lg" role="button" aria-pressed="true">Payment</a>


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>






                <script>
                    $('#exampleModal').on('show.bs.modal', function (event) {
                        var button = $(event.relatedTarget); // Button that triggered the modal
                        var recipient = button.data('whatever'); // Extract info from data-* attributes
                        // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
                        // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
                        var modal = $(this);
                        modal.find('.modal-title').text('New message to ' + recipient);
                        modal.find('.modal-body input').val(recipient);
                    });

                </script>

                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
                </body>
                </html>