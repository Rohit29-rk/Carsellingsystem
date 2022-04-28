<!doctype html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="component/style5.css" rel="stylesheet" type="text/css"/>


    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

        <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Login Success...!');</script>
        <%}%>


        <nav class="navbar navbar-expand-lg navbar-dark "  style="background-color:#147e7e;" >
            <a class="navbar-brand" #>
                <img src="img/logo.png" height="15%" width="10%"  alt="">&nbspCARSELLER
            </a>
            <%
                String user = session.getAttribute("username").toString();
            %>
            <a href="logout.jsp" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Logout</a>

        </nav>
        <nav class="navbar navbar-expand-lg navbar-light  "  style="background-image:url(img/h1.jpg);" >
            <div class="collapse navbar-collapse " id="navbarSupportedContent">
                <form class="form-inline my-1 my-1" action="searchact1.jsp">
                    <input name = "key" class="form-control  mr-1 " type="search" placeholder="Search" aria-label="Search">
                    </br><a href="searchact1.jsp"><img src="baseline-search-24px.svg"></a>
                </form>  	
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active ">
                        <a class="nav-link " href="userhome.jsp"><b>Home</b> 
                            <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Search
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class=" dropdown-item" id="navdrop" href="uviewmodels.jsp">Models</a>
                        </div>
                    </li>


                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Orders
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class=" dropdown-item" id="navdrop" href="uviewbookings.jsp">Bookings</a>
                            <a class="dropdown-item"  id="navdrop" href="uviewappointmnt.jsp">Appointments</a>
                            <a class="dropdown-item" id="navdrop" href="ufeedback.jsp">Feedback</a>
                        </div>
                    </li>


                    

                </ul>
            </div>
        </nav>
        <div style="background-color:white">

            <%
                String username = session.getAttribute("username").toString();
                String mileage = request.getParameter("mileage");
                String model = request.getParameter("model");
                String price = request.getParameter("price");
                String image = request.getParameter("image");
                String brand = request.getParameter("brand");
            %>

            <br><br>
            <p align="justify">
            <p><center><font color="black" size="5"> Feedback  </font></center></p>
        <form action="ufeedback1act.jsp?image=<%=image%>" method="post" >
            <table align="center" width="321">
                <tr>
                    <td width="191" height="43"><font color="black">User Name </td>
                    <td width="218"><input name="username" readonly="" value="<%=username%>" /></td>
                </tr>
                <tr>

                    <td><input type="hidden" name="brand" readonly="" value="<%=brand%>" /></td>
                </tr>
                <tr>

                    <td><input type="hidden"  name="model" readonly="" value="<%=model%>"/></td>
                </tr>
                <tr>

                    <td><input type="hidden"  name="mileage" readonly="" value="<%=mileage%>" /></td>
                </tr>
                <tr>

                    <td><input type="hidden"  name="price" readonly="" value="<%=price%>" /></td>
                </tr>

                <tr>
                    <td height="43"><font color="black"> Feedback</td>
                    <td><textarea name="feedback" rows="4" cols="22" required="" Placeholder="Type here.." ></textarea></td>
                </tr>


                <tr>
                    <td height="43" rowspan="3"></td>
                    <td align="left" valign="middle">
                        <p>
                            <input name="submit" type="submit" value="SUBMIT" style="background-color:#00ffcc"/>
                        </p>
                        <div align="right">
                        </div></td>
                </tr>
            </table>
        </form>
    </p>

    <br/><br/><br/><br/>





    <!-- Footer -->

</div>
<br><br><Br>


<footer class="text-center">
    <a href="#top"><img src="baseline-keyboard_arrow_up-24px.svg">
        <h6>&nbsp go to top<h6> 
                </a>
                </footer>

               
                <script language=JavaScript>
                    $(function () {
                        $('[data-toggle="popover"]').popover()
                    })
                </script>
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
                </body>
                </html>
