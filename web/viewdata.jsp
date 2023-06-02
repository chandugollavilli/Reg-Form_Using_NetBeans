<%-- 
    Document   : viewdata
    Created on : 15 May, 2023, 5:33:11 PM
    Author     : chand
--%>

<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view Page</title>
    </head>
    <style>
        body{
            background-color: yellow;
            font-family: arial;
            justify-content: center;
            display: flex;
            align-items: center;
            height: 100vh;
            font-size: 50px 10px;
        }
    </style>
<body>
    <%!
    String DB_URL = "jdbc:postgresql://localhost:5432/postgres";
    String DB_USER = "postgres";
    String DB_PASSWORD = "1234";
    %>
    <%
    String id = request.getParameter("id");

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        // Establish database connection
        Class.forName("org.postgresql.Driver");
        conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

        // Execute query to fetch user details based on the entered ID
        String query = "SELECT * FROM data WHERE id = ?";
        PreparedStatement pstmt = conn.prepareStatement(query);
        pstmt.setString(1, id);
        rs = pstmt.executeQuery();

        // Display user details in a table format
        out.println("<h1>User Details:  </h1>");
        out.println("<table>");
        out.println("<tr><th>ID</th><th>Name</th><th>Gender</th><th>Email</th><th>Address</th><th>Dept</th><th>Mobile</th><th>Image</th></tr>");
        if (rs.next()) {
            out.println("<tr>");
            out.println("<td>" + rs.getString("id") + "</td>");
            out.println("<td>" + rs.getString("name") + "</td>");
            out.println("<td>" + rs.getString("gender") + "</td>");
            out.println("<td>" + rs.getString("email") + "</td>");
            out.println("<td>" + rs.getString("address") + "</td>");
            out.println("<td>" + rs.getString("dept") + "</td>");
            out.println("<td>" + rs.getString("mobile") + "</td>");
            out.println("<td>" + rs.getString("image") + "</td>");
            out.println("</tr>");
        } else {
            out.println("<tr><td colspan='8'>No user found with ID: " + id + "</td></tr>");
        }
        out.println("</table>");
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h3>Error occurred while retrieving user details.</h3>");
    } finally {
        // Close database resources
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    %>
    </body>
    
</html>
