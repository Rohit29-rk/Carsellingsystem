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
            <a href="logout.jsp" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Logout" data-content="Logout" aria-pressed="true">Logout</a>

        </nav>

        <nav class="navbar navbar-expand-lg navbar-light sticky-top "  style="background-image:url(img/h1.jpg);" >
            <div class="collapse navbar-collapse " id="navbarSupportedContent">
                <form class="form-inline my-1 my-1">
                    <input class="form-control  mr-1 " type="search" placeholder="Search" aria-label="Search">
                    </br><a href=# ><img src="baseline-search-24px.svg"></a>
                </form>   	
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active ">
                        <a class="nav-link " href="index.html"><b>Home</b> 
                            <span class="sr-only">(current)</span></a>
                    </li>


                </ul>
            </div>
        </nav>

        <!-- Container (Indicator) -->
        <div style="background-color:white">

            </br></br>

            <%@page import="java.sql.PreparedStatement"%>
            <%@page import="java.sql.DriverManager"%>
            <%@page import="java.sql.ResultSet"%>
            <%@page import="java.sql.Statement"%>
            <%@page import="java.sql.Connection"%>



            <%

             Class.forName("com.mysql.cj.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rk?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false" ,"root","root");
 

 
             String val = request.getParameter("val");
 
            %>


            <%

 
 
            String q = "select * from models where brand = '"+val+"'";
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
                        <p class="card-text"><b>Model: </b> <%=rs.getString("model")%> <br><b>Price: </b>Rs. <%=rs.getString("price")%> <br><b>Mileage: </b><%=rs.getString("mileage")%> kmpl<br/></p>


                    </div>
                </div>



                <%
    
               }
                %>

            </div>


        </div>



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
