<!doctype html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
       <link href="component/new1.css" rel="stylesheet" type="text/css"/>
        <%
if(request.getParameter("m1")!=null){%>

        <script>alert('Login Sucess!')</script>

        <%}
if(request.getParameter("m2")!=null){%>

        <script>alert('Added Success..!')</script>
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

        <nav class="navbar navbar-expand-lg navbar-light sticky-top "  style="background-color:#e82929;" >
            <div class="collapse navbar-collapse " id="navbarSupportedContent">

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

        <div style="background-color:white">
            </br></br>

            <%@page import="java.sql.PreparedStatement"%>
             <%@page import="java.sql.DriverManager"%>
            <%@page import="java.sql.ResultSet"%>
            <%@page import="java.sql.Statement"%>
            <%@page import="java.sql.Connection"%>



            <%

             Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rk?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", "root", "root");

 
             String q1 = "select * from appointments";
             Statement st1 = con.createStatement();
             ResultSet rs1 = st1.executeQuery(q1);
             if(rs1.next()){
 
             String q = "select * from appointments";
             Statement st = con.createStatement();
             ResultSet rs = st.executeQuery(q);
 

            %>

            <div class="card-columns">

                <%
                while(rs.next()){
    
                %>


                <div class="card">
                    <img class="card-img-top" src="images/<%=rs.getString("image")%>" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title"><b>Brand:</b> <%=rs.getString("brand")%></h4>
                        <p class="card-text"><b>Model: </b> <%=rs.getString("model")%> <br><b>User: </b> <%=rs.getString("username")%> <br><b>Price: </b>Rs. <%=rs.getString("price")%> <br><b>Mileage: </b><%=rs.getString("mileage")%> kmpl<br/><b>Date: </b> <%=rs.getString("date1")%> <br></p>


                    </div>
                </div>



                <%
                  }
                  }
 
               else{
     
                   out.println("<center><font color='red' size='4'><br><br><br>No Appointments to Display..</font><br><br><br><br><br><br><br><br><br><br><br><br></center>");
               }
                %>


            </div>



        </div>

    </div>


    <br><br><Br>
    <%@include file="component/about.jsp" %>

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
