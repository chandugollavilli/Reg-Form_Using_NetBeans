<%-- 
    Document   : view
    Created on : 15 May, 2023, 5:29:25 PM
    Author     : chand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Page</title>
    </head>
    <style>
        body{
            font-family: arial;
            background-color: yellow;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form{
            background-color: white;
            padding: 10px;
            border-radius: 10px;
        }
        input[type="id"]{
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: none;
            border-radius: 3px;
            box-sizing:border-box;
            font-size: 16px;
            background-color: gainsboro;
            
        }
        input[type="submit"]{
            padding: 10px 10px;
            border: none;
            border-radius: 5px;
            background-color: greenyellow;
        }
    </style>
    <body>
    <form action="viewdata.jsp">
        <table>
            <h1>View page</h1>
            <tr>
                <td>Id: </td>
                <td><input type="id" name="id" placeholder="id"/></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="submit"/></td>
                <td><a href="view.jsp" target="_top"/>Back</td>
            </tr>
        </table>
    </form>
    </body>
</html>
