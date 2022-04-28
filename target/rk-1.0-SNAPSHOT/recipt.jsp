


<!doctype html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <style>
            body {
                font-family: "System", Times, serif;
                color: #000;
                background-image:url("bg..png");

                background-size:cover;
            }
            .navbar {
                font-family: "System", Times, serif;
                margin-bottom: 0;
                color:#fff;
                border: 0;
                font-size: 15px !important;
                letter-spacing: 1px;
                opacity: 0.9;
                
            }  
            .form-control {
                border-radius: 2px;
            }
        </style>
        <%
            if (request.getParameter("m1") != null) {%>
        <script>alert('Login Failed...!');</script>
        <%}%>
        <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('User Registered Successfully...!');</script>
        <%}%>

    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

        <nav class="navbar"  style="background-color:#147e7e;" >
            <a class="navbar-brand" #>
                <img src="img/logo.png" height="15%" width="10%"  alt="">&nbspCARSELLER
            </a>
           
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

                String q1 = "select * from bookings order by username desc limit 1";
                Statement st1 = con.createStatement();
                ResultSet rs1 = st1.executeQuery(q1);
                if (rs1.next()) {

                    String q = "select * from bookings order by username desc limit 1";
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery(q);


            %>
            <center>
                <h2>Payment Receipt</h2><br>
                <table border="1" width="80%" style="color:#000">



                    <%                        while (rs.next()) {

                    %>

                    <tr>
                    <tr>
                        <th>Name</th>
                        <td><%=rs.getString("username")%></td></tr>
                    <tr>
                        <th>Brand</th>
                        <td><%=rs.getString("brand")%></td></tr>
                    <tr>
                        <th>Model</th>
                        <td> <%=rs.getString("model")%></td></tr>
                    <tr>
                        <th>Fullname</th>
                        <td><%=rs.getString("fullname")%></td></tr>
                    <tr>
                        <th>E-Mail id</th>
                        <td><%=rs.getString("email")%></td></tr>
                   <tr>
                        <th>Address</th>
                        <td><%=rs.getString("address")%></td></tr>
                   <tr>
                        <th>City</th>
                        <td><%=rs.getString("city")%></td></tr>
                   <tr>
                        <th>State</th>
                        <td><%=rs.getString("state")%></td></tr>
                   <tr>
                        <th>Pincode</th>
                        <td><%=rs.getString("pincode")%></td></tr>
                    <tr>
                        <th>Amount Paid</th>
                        <td><%=rs.getString("price")%></td></tr>
                   
                </tr>
                           



                    <%
                        }

                    %>
                </table></center>
                <%                    } else {

                        out.println("<center><font color='red' size='4'><br><br><br>Payment Failed</font><br><br><br><br><br><br><br><br><br><br><br><br></center>");
                    }
                %>

            

            <button onclick="window.print()" style=" margin-bottom: 10%; margin-left:46%; margin-top:4%;">Print</button>



        </div>



    </div>
   


    

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
