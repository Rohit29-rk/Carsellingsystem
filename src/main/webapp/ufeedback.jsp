<!doctype html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="component/style5.css" rel="stylesheet" type="text/css"/>


    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

        <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Feedback Given Successfully...!');</script>
        <%}%>


        <nav class="navbar navbar-expand-lg navbar-dark "  style="background-color:#147e7e;" >
            <a class="navbar-brand" #>
                <img src="img/logo.png" height="15%" width="10%"  alt="">&nbspCARSELLER
            </a>
            <%
                String user = session.getAttribute("username").toString();
            %>
            <h3>Hello&nbsp;<%=user%></h3>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="logout.jsp" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Logout</a>

        </nav>
        <nav class="navbar navbar-expand-lg navbar-light  "  style="background-image:url(img/h1.jpg)" >
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
                        <a class="nav-link dropdown-toggle"  id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <b> Orders</b>
                            <span class="sr-only">(current)</span></a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class=" dropdown-item" id="navdrop" href="uviewbookings.jsp">Bookings</a>
                            <a class="dropdown-item"  id="navdrop" href="uviewappointmnt.jsp">Appointments</a>
                            <a class="dropdown-item" id="navdrop" href="ufeedback.jsp">Feedback</a>
                        </div>
                    </li>


                   

                </ul>
            </div>
        </nav>
        <div id="mySidebar" class="sidebar">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"> x</a>

            <a href="#m1">Price</a>
            <div id="list">
                <a href="hightolow.jsp?high=high"><h5><li>High to low</li></h5></a>
                <a href="lowtohigh2.jsp?low=low"><h5><li>Low to high</li></h5></a>
            </div>
            <a href="#m1">Mileage</a>
            <div id="list">
                <a href="under10.jsp?under=10"><h5><li>under 10 kmpl</li></h5></a>
                <a href="kmpl.jsp?between=10-15"><h5><li>10-15 kmpl</li></h5></a>
                <a href="above15.jsp?above=15"><h5><li>15 kmpl & above</li></h5></a>
            </div>
        </div>

        <div id="main" >
            <button class="openbtn" onclick="openNav()">Search
            </button>

            </br></br>

            <%@page import="java.sql.PreparedStatement"%>
            <%@page import="java.sql.DriverManager"%>
            <%@page import="java.sql.ResultSet"%>
            <%@page import="java.sql.Statement"%>
            <%@page import="java.sql.Connection"%>



            <%

                String username = session.getAttribute("username").toString();
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rk?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", "root", "root");

                String q1 = "select * from bookings where username = '" + username + "'";
                Statement st1 = con.createStatement();
                ResultSet rs1 = st1.executeQuery(q1);
                if (rs1.next()) {

                    String q = "select * from bookings where username = '" + username + "'";
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery(q);


            %>

            <div class="card-columns">

                <%                    while (rs.next()) {

                %>


                <div class="card">
                    <img class="card-img-top" src="images/<%=rs.getString("image")%>" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title"><b>Brand:</b> <%=rs.getString("brand")%></h4>
                        <p class="card-text"><b>Model: </b> <%=rs.getString("model")%> <br><b>Price: </b>Rs. <%=rs.getString("price")%> <br><b>Mileage: </b><%=rs.getString("mileage")%> kmpl<br/></p>
                        <a href="ufeedback1.jsp?model=<%=rs.getString("model")%>&price=<%=rs.getString("price")%>&mileage=<%=rs.getString("mileage")%>&image=<%=rs.getString("image")%>&brand=<%=rs.getString("brand")%>"><button class="btn btn-outline-danger">Feedback</button></a>    


                    </div>
                </div>



                <%
                        }
                    } else {

                        out.println("<center><font color='red' size='4'><br><br><br>No Feedbacks to Display..</font><br><br><br><br><br><br><br><br><br><br><br><br></center>");
                    }
                %>


            </div>

        </div>
                <br><BR><br>


        <footer class="text-center">
            <a href="#top"><img src="baseline-keyboard_arrow_up-24px.svg">
                <p>go to top</p> 
            </a>
            <script>
                function openNav() {
                    document.getElementById("mySidebar").style.width = "250px";
                    document.getElementById("main").style.marginLeft = "250px";
                }

                function closeNav() {
                    document.getElementById("mySidebar").style.width = "0";
                    document.getElementById("main").style.marginLeft = "0";
                }
            </script>
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
