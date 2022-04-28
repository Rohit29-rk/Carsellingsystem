<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>



<%

    String brands = request.getParameter("brands");
    String model = request.getParameter("model");
    String status = request.getParameter("status");
    String price = request.getParameter("price");
    String mileage = request.getParameter("mileage");
    String cc = request.getParameter("cc");
    String seating = request.getParameter("seating");
    String image = request.getParameter("image");
    String user = "root";
    String pass = "root";

    try {

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rk?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", user, pass);

        PreparedStatement ps = con.prepareStatement("insert into models values(?,?,?,?,?,?,?,?)");

        ps.setString(1, brands);
        ps.setString(2, model);
        ps.setString(3, status);
        ps.setString(4, price);
        ps.setString(5, mileage);
        ps.setString(6, cc);
        ps.setString(7, seating);
        ps.setString(8, image);

        int x = ps.executeUpdate();
        if (x > 0) {

            response.sendRedirect("adminhome.jsp?m2=success");

        } else {

            response.sendRedirect("adminhome.jsp?m3=Failed");

        }

    } catch (Exception e) {
        out.println(e.getMessage());
    }
%>
