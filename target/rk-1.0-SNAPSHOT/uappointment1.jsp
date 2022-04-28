<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%
    String username = session.getAttribute("username").toString();
    String email = request.getParameter("email");
    String mileage = request.getParameter("mileage");
    String brand = request.getParameter("brand");
    String model = request.getParameter("model");
    String price = request.getParameter("price");
    String image = request.getParameter("image");
    String date1 = request.getParameter("date1");

    String user = "root";
    String pass = "root";
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rk?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", user, pass);

    String sql = "insert into appointments(username,email,brand,model,price,mileage,image,date1) values(?,?,?,?,?,?,?,?)";
    PreparedStatement st = con.prepareStatement(sql);

    st.setString(1, username);
    st.setString(2, email);
    st.setString(3, brand);
    st.setString(4, model);
    st.setString(5, price);
    st.setString(6, mileage);
    st.setString(7, image);
    st.setString(8, date1);
    int i = st.executeUpdate();
    if (i > 0) {
        response.sendRedirect("userhome.jsp?msg2=success");

    }
%>