<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%
    String username = session.getAttribute("username").toString();
    String date = request.getParameter("date");
    String model = request.getParameter("model");
    String price = request.getParameter("prcie");
    String mileage = request.getParameter("mileage");

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rk?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", "root", "root");

    String sql = "delete from bookings where username = '" + username + "' and model = '" + model + "'  and mileage = '" + mileage + "'";
    PreparedStatement st = con.prepareStatement(sql);

    int i = st.executeUpdate();
    if (i > 0) {
        response.sendRedirect("userhome.jsp?del=Cancelled");

    }
%>