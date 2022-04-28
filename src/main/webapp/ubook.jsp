<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String username = session.getAttribute("username").toString();
    String brand = request.getParameter("brand");
    String model = request.getParameter("model");
    String price = request.getParameter("price");
    String mileage = request.getParameter("mileage");
    String image = request.getParameter("image");

    /* new */
    String fullname = request.getParameter("fullname");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String city = request.getParameter("city");
    String state = request.getParameter("state");
    String zip = request.getParameter("zip");

    /* end  */
 /* card details */
    String cardname = request.getParameter("cardname");
    String cardno = request.getParameter("cardnumber");
    String expdate = request.getParameter("expdate");
    String cvv = request.getParameter("cvv");

    /* end */
    String user = "root";
    String pass = "root";
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rk?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", user, pass);

    String sql = "insert into bookings values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    PreparedStatement st = con.prepareStatement(sql);

    st.setString(1, username);
    st.setString(2, brand);
    st.setString(3, model);
    st.setString(4, price);
    st.setString(5, mileage);
    st.setString(6, image);
    st.setString(7, fullname);
    st.setString(8, email);
    st.setString(9, address);
    st.setString(10, city);
    st.setString(11, state);
    st.setString(12, zip);
    st.setString(13, cardname);
    st.setString(14, cardno);
    st.setString(15, expdate);
    st.setString(16, cvv);

    int i = st.executeUpdate();
    if (i > 0) {
        response.sendRedirect("recipt.jsp?msg1=success");

    }
%>