<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page	import="java.util.*,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile");
    String user = "root";
    String pass = "root";
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rk?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", user, pass);

        String sql = "INSERT INTO regd2(username,password,email,mobile) VALUES(?,?,?,?)";
        PreparedStatement st = con.prepareStatement(sql);

        st.setString(1, username);
        st.setString(2, password);
        st.setString(3, email);
        st.setString(4, mobile);
        int i = st.executeUpdate();

        con.close();
        if (i > 0) {
            response.sendRedirect("user.jsp?msg=success");

        }
    } catch (Exception e) {
        out.print(e.getMessage());
    }
%>