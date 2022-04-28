<!doctype html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="component/new1.css" rel="stylesheet" type="text/css"/>
        <%
            if (request.getParameter("m1") != null) {%>

        <script>alert('Login Sucess!');</script>

        <%}
            if (request.getParameter("m2") != null) {%>

        <script>alert('Added Success..!');</script>
        <%
            }
        %> 
    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

        <nav class="navbar navbar-expand-lg navbar-dark "  style="background-color:#147e7e;" >
            <a class="navbar-brand" #>
                <img src="img/logo.png" height="15%" width="10%"  alt="">&nbspCARSELLER
            </a>
             <a href="logout.jsp" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Logout</a>

        </nav>

        <nav class="navbar navbar-expand-lg  "  style="background-color:#e82929;" >
            <div class=" navbar-collapse " id="navbarSupportedContent">

                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active ">
                        <a class="nav-link " href="adminhome.jsp"><b>Home</b> 
                            <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Models
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class=" dropdown-item" id="navdrop" href="addmodels.jsp">Add Models</a>
                            <a class="dropdown-item"  id="navdrop" href="viewmodels.jsp">View Models</a>
                            
                        </div>
                    </li>


                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            View Orders
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class=" dropdown-item" id="navdrop" href="aviewbookings.jsp">View Bookings</a>
                            <a class="dropdown-item"  id="navdrop" href="aviewappointments.jsp">Appointments</a>
                            <a class="dropdown-item" id="navdrop" href="aviewfeedback.jsp">View Feedback</a>
                            <a class="dropdown-item" id="navdrop" href="aviewpayments.jsp">View Payments</a>
                       </div>
                    </li>



                </ul>
            </div>
        </nav>

        <!-- Container (Indicator) -->
        <div style="background-color:white">
            <style>

                tr{

                    color: black;
                }


            </style>



            <br><Br><center>
                <h2 style="color:black">Add Models Here</h2>
                <table>
                    <form action="addmodelsact.jsp" method="post">
                        <tr><th>Brand</th><th><select  name="brands" required="" style="width:198px">
                                    <option value="" style="color: black">Select Brand</option>
                                    <option value="Maruthi Suzuki" style="color: black">Maruthi Suzuki</option>
                                    <option value="volkswagen" style="color: black">volkswagen</option>
                                    <option value="Mahindra" style="color: black">Mahindra</option>
                                    <option value="AUDI" style="color: black">AUDI</option>
                                    <option value="BMW" style="color: black">BMW</option>
                                    <option value="BMW" style="color: black">Volvo</option>
                                    <option value="BMW" style="color: black">TATA</option>


                                </select></th></tr>

                        <tr>
                            <th>Model</th>      <th> <input type="text" placeholder="Model" name="model" required="" autocomplete="off"></th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>

                        <tr><th>Status</th><th><select  name="status" required="" style="width:198px">
                                    <option value="" style="color: black">Select Status</option>
                                    <option value="New" style="color: black">New</option>
                                    <option value="Up Coming" style="color: black">Up Coming</option>



                                </select></th></tr> 

                        <tr>
                            <th>Price</th>  <th><input type="text" placeholder="Price" name="price" required="" autocomplete="off"></th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>
                        <tr>
                            <th>Mileage</th><th> <input type="text" placeholder="Mileage" name="mileage" required="" autocomplete="off"> </th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>
                        <tr>
                            <th>Cubic Capacity</th><th><input type="text" placeholder="Cubic Capacity" name="cc" required="" autocomplete="off">  </th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>
                        <tr>
                            <th>Seating</th><th> <input type="text" placeholder="Seating Capacity" name="seating" required="" autocomplete="off">  </th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>

                        <tr>
                            <th>Image </th><th><input type="file" placeholder="Seating Capacity" name="image" required="" autocomplete="off">  </th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>

                        <tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>


                        <tr>
                            <th> </th><th><input type="submit" value="Add"> </th></tr>

                    </form>
                </table>

                <Br><br><Br><Br>





                </div>
                <br><br><Br>
                <%@include file="component/about.jsp" %>


                <script language=JavaScript>
                    $(function () {
                        $('[data-toggle="popover"]').popover();
                    });
                </script>
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
                </body>
                </html>
