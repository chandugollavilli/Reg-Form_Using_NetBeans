<%-- 
    Document   : Formdata
    Created on : 15 May, 2023, 5:01:27 PM
    Author     : chand
--%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>form Page</title>
    </head>
    <style>
        body{
            background-color: yellow;
            text-align: center;
            display: flex;
            justify-content: center;
            padding: 50px;
            font-family: arial;
            font-size: 100px
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
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String dept = request.getParameter("dept");
    String mobile = request.getParameter("mobile");
    String image = request.getParameter("image");

    Connection conn = null;
    Statement stmt = null;

    try {
        // Establish database connection
        Class.forName("org.postgresql.Driver");
        conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

        // Execute query to insert form data into the database
        String query = "INSERT INTO data (id, name, gender, email, address, dept, mobile, image) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement pstmt = conn.prepareStatement(query);
        pstmt.setString(1, id);
        pstmt.setString(2, name);
        pstmt.setString(3, gender);
        pstmt.setString(4, email);
        pstmt.setString(5, address);
        pstmt.setString(6, dept);
        pstmt.setString(7, mobile);
        pstmt.setString(8, image);
        pstmt.executeUpdate();

        // Data insertion successful, redirect to success page
        response.sendRedirect("view.jsp");
    } catch (Exception e) {
        e.printStackTrace();
        // Data insertion failed, display error message
        out.println("<h3>Data insertion failed. Please try again.</h3>");
    } finally {
        // Close database resources
        try {
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    %>
    </body>
</html>
