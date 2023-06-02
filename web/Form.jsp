<%-- 
    Document   : Form
    Created on : 15 May, 2023, 4:33:43 PM
    Author     : chand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Page</title>
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
            padding: 50px;
            border-radius: 5px; 
        }
        input[type="file"],
        input[type="text"],
        input[type="email"],
        input[type="address"],
        input[type="mobile no"],
        input[type="password"]{
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: none;
        border-radius: 3px;
        box-sizing: border-box;
        font-size: 16px;
        background-color: gainsboro;
        }
        input[type="submit"]{
            border: none;
            padding: 10px 10px;
            border-radius: 5px;
            background-color: greenyellow;
        }
        select[name="dept"],
        select[name="gender"]{
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: none;
        border-radius: 3px;
        box-sizing: border-box;
        font-size: 16px;
        background-color: gainsboro;
        }
    </style>
    <body>
        <form action="Formdata.jsp">
            <table>
                <h1>Please Enter your details</h1>
                <tr>
                    <td>Id:</td>
                    <td><input type="text" name="id" placeholder="Id"/></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" placeholder="Enter name"/></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td>
                        <select name="gender">
                            <option value="Select">Select</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="email" name="email" placeholder="Email"/></td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><input type="Address" name="address" placeholder="Address"/></td>
                </tr>
                <tr>
                    <td>Dept:</td>
                    <td>
                        <select name="dept">
                            <option value="Select">Select</option>
                            <option value="ECE">ECE</option>
                            <option value="CSE">CSE</option>
                            <option value="EEE">EEE</option>
                            <option value="MECH">MECH</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Mobile no:</td>
                    <td><input type="mobile no" name="mobile" placeholder="Mobile no"/></td>
                </tr>
                <tr>
                 <td>Image:</td>
                 <td><input type="file" name="image" accept="image/*"/></td>
                 </tr>
                <tr>
                    <td></td>
                    <td><input type="Submit" value="Submit"/></td>
                    <td><a href="view.jsp" target="_self">View</a></td>
                </tr>
            </table>  
        </form>
    </body>
</html>
