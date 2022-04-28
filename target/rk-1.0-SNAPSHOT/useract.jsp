<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

    String password = request.getParameter("password");
    String username = request.getParameter("username");
    String email = null;
    String user = "root";
    String pass = "root";
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rk?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", user, pass);

        String sql = "SELECT * FROM regd2 WHERE username='" + username + "' and password='" + password + "'";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        if (rs.next()) {

            email = rs.getString("email");
            session.setAttribute("username", username);
            session.setAttribute("email", email);

            response.sendRedirect("userhome.jsp?msg=success");

        } else {

            response.sendRedirect("user.jsp?m1=Failed");

        }

    } catch (Exception e) {
        out.print(e.getMessage());
    }


%>