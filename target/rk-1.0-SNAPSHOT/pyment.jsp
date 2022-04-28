<%

if(session.getAttribute("username")==null){
      
%>

<br><Br><center>Please Register</center>

<%
      
}
  
else {
%>


<!doctype html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="component/style3.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg sticky-top"  style="background-color:#147e7e;" >
            <a class="navbar-brand">
                <img src="img/logo.png" height="15%" width="10%"  alt="">&nbspCARSELLER
            </a>

            <a href="logout.jsp" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Logout</a>

        </nav>

        <%

          String username = session.getAttribute("username").toString();
  
  
  
  
  
 
            String mileage= request.getParameter("mileage");
            String model = request.getParameter("model");
            String price= request.getParameter("price");
            String image = request.getParameter("image");
            String brand = request.getParameter("brand"); 
        %>




        <h2>Make Your Payment</h2>
        <div class="row">
            <div class="col-75">
                <div class="container">
                    <form action="ubook.jsp" method="post">

                        <div class="row">
                            <div class="col-50">
                                <h3>Billing Address</h3>
                                <label for="fname"><i class="fa fa-user"></i> Full Name</label>
                                <input type="text" id="fname" name="fullname" placeholder="Raj M.Sharma">
                                <input type="hidden" name="mileage" value="<%=mileage%>">
                                <input type="hidden" name="model" value="<%=model%>">
                                <input type="hidden" name="price" value="<%=price%>">
                                <input type="hidden" name="image" value="<%=image%>">
                                <input type="hidden" name="brand" value="<%=brand%>">
                                <label for="email"><i class="fa fa-envelope"></i> Email</label>
                                <input type="text" id="email" name="email" placeholder="raj@gmail.com">
                                <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
                                <input type="text" id="adr" name="address" placeholder="Romm no-542 M.G.Road">
                                <label for="city"><i class="fa fa-institution"></i> City</label>
                                <input type="text" id="city" name="city" placeholder="Mumbai">

                                <div class="row">
                                    <div class="col-50">
                                        <label for="state">State</label>
                                        <input type="text" id="state" name="state" placeholder="Maharashta">
                                    </div>
                                    <div class="col-50">
                                        <label for="zip">pincode</label>
                                        <input type="text" id="pin" name="pin" placeholder="400607">
                                    </div>
                                </div>
                            </div>
                                
                            <div class="col-50">
                                <h3>Payment</h3>
                                <label for="fname">Card Mode</label>
                                <div class="icon-container">
                                    <img src="img/amex.png" height="30px%" width="40px"alt=""/>
                                    <img src="img/visa.png" height="60px%" width="70px" alt="">
                                    <img src="img/mastercard.png" height="50px%" width="60px"  alt="" >
                               </div>
                                <label for="cname">Name on Card</label>
                                <input type="text" id="cname" name="cardname" placeholder="Raj M.Sharama">
                                <label for="ccnum">Card number</label>
                                <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
                                <label for="expmonth">Exp date</label>
                                <input type="text" id="expdate" name="expdate" placeholder="09/2021">
                                <div class="row">
                                    <div class="col-50">
                                        <label for="cvv">CVV</label>
                                        <input type="text" id="cvv" name="cvv" placeholder="352">
                                    </div>
                                </div>
                            </div>

                        </div>
                        <label>
                            <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
                        </label>
                        <button type="submit" class="btn btn-outline-danger btn-lg btn-block" data-toggle="modal" data-target="#e2">Pay</button></br></br> 
                        <div class="modal fade" id="e2" tabindex="10" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">

                                    <div class="modal-body">

                                    </div>
                                    <div class="modal-footer">
                                        <a href="recipt.jsp" class="btn btn-danger btn-lg" role="button" aria-pressed="true">ok</a>
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                    </div>
                                </div>
                            </div> 
                        </div>       






                    </form>
                </div>
            </div>
            <div class="col-25">
                <div class="container">
                    <h4>Cart <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b>1</b></span></h4>
                    <p><%=model%><span class="price">Rs. <%=price%></span></p>
                    <hr>
                    <p>Total <span class="price" style="color:black"><b>Rs. <%=price%></b></span></p>
                </div>
            </div>
        </div>





        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
<%

  }
%>