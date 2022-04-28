<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <link href="component/style4.css" rel="stylesheet" type="text/css"/>
        <title>User</title>
    </head>
    <%
        if (request.getParameter("m1") != null) {%>
    <script>alert('Login Failed...!');</script>
    <%}%>
    <%
        if (request.getParameter("msg") != null) {%>
    <script>alert('User Registered Successfully...!');</script>
    <%}%>
    <body>
        <div class="container-fluid padding_zero">

            <nav class="navbar navbar-expand-lg sticky-top" style="background-color:#147e7e">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img src="img/logo.png" alt="" width="7%" height="5%">&nbsp
                        <strong>CARSELLER</strong>
                    </a>

                    <a href="logout.jsp" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Logout</a>
                </div>
            </nav>

            <div class="row1">
                <div class="col-md-12">
                    <nav class="navbar navbar-expand-lg navbar-light  border-bottom" style="background-image: url(img/h1.jpg);">
                        <div class="container-fluid">
                            <form class="d-flex">
                                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                                <a href="searchact.jsp"> <img src="baseline-search-24px.svg"></a>
                            </form>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent" style="margin-left: 72%">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0 drop_down">


                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                                           aria-expanded="false">
                                            Search
                                        </a>
                                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <li><a class="dropdown-item" href="uviewmodels.jsp">Model</a></li>

                                        </ul>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                                           aria-expanded="false">
                                            Orders
                                        </a>
                                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <li><a class="dropdown-item" href="uviewbookings.jsp">Booking</a></li>
                                            <li><a class="dropdown-item" href="uviewappointmnt.jsp">apponintement</a></li>
                                            <li><a class="dropdown-item" href="ufeedback.jsp">feedback </a></li>
                                        </ul>
                                    </li>


                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="jumbotron border-bottom" style="background-image: url(img/h1.jpg)">


                        <%
                            String user = session.getAttribute("username").toString();

                        %>
                        <h1>Hello&nbsp;<%=user%></h1>&nbsp;&nbsp;&nbsp;&nbsp;

                        <p class="lead">Welcome To The World Of Cars.</p>
                        <p class="lead1">
                            <a class="btn btn-warning" href="uviewmodels.jsp" role="button" data-toggle="popover"
                               title="View Models">View Models</a>
                        </p>

                    </div>
                </div>
            </div>
            <div class="row2">
                <div class="col-md-12">
                    <div id="band" class="container text-center ">
                        <h3 class="text-center" align="left"> Search by Brands</h3>
                        <br>
                        <div class="row">
                            <div class="col-sm-4">
                                <a href="cars.jsp?val=Toyota">
                                    <img src="img/t.jpg" class="img person" alt="Couldn't load image" width="255" height="255">
                                </a>
                                <p class="text-center"><strong>Toyota</strong></p><br>
                            </div>

                            <div class="col-sm-4">
                                <a href="cars.jsp?val=Ford">
                                    <img src="img/f.jpg" class="img person" alt="Couldn't load image" width="255" height="255">
                                </a>
                                <p class="text-center"><strong>Ford</strong></p><br>
                            </div>

                            <div class="col-sm-4">
                                <a href="cars.jsp?val=Honda">
                                    <img src="img/h.jpg" class="img person" alt="Couldn't load image" width="255" height="255">
                                </a>
                                <p class="text-center"><strong>Honda</strong></p><br>
                            </div>

                            <div class="col-sm-4">
                                <a href="cars.jsp?val=Maruti Suzuki">
                                    <img src="img/ms.jpg" class="img person" alt="Couldn't load image" width="255" height="255">
                                </a>
                                <p class="text-center"><strong>Maruti Suzuki</strong></p><br>
                            </div>

                            <div class="col-sm-4">
                                <a href="cars.jsp?val=Nissan">
                                    <img src="img/n.jpg" class="img person" alt="Couldn't load image" width="255" height="255">
                                </a>
                                <p class="text-center"><strong>Nissan</strong></p><br>
                            </div>

                            <div class="col-sm-4">
                                <a href="cars.jsp?val=Volkswagen">
                                    <img src="img/w.jpg" class="img person" alt="Couldn't load image" width="255" height="255">
                                </a>
                                <p class="text-center"><strong>Volkswagen</strong></p><br>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <%@include file="component/about.jsp" %>



        </script>
        <script language=JavaScript>
            $(function () {
                $('[data-toggle="popover"]').popover();
            });
        </script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
                integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
                integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>

</body>

</html>
