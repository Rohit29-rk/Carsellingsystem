<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%
    String username = session.getAttribute("username").toString();
    String brand = request.getParameter("brand");
    String model = request.getParameter("model");
    String price = request.getParameter("price");
     String mileage = request.getParameter("mileage");
    String image = request.getParameter("image");
    String feedback = request.getParameter("feedback");
    String user="root";
    String pass="root"; 
    
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rk?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false",user, pass);

    String sql = "insert into feedback(username,brand,model,price,mileage,image,feedback) values(?,?,?,?,?,?,?)";
    PreparedStatement st = con.prepareStatement(sql);

    st.setString(1, username);
    st.setString(2, brand);
    st.setString(3, model);
    st.setString(4, price);
    st.setString(5, mileage);
    st.setString(6, image);
    st.setString(7, feedback);
    int i = st.executeUpdate();
    if (i > 0) {
        response.sendRedirect("ufeedback1.jsp?msg=success");

    }
  
%>