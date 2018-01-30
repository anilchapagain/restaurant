<%-- 
    Document   : sendMessage
    Created on : 22 Dec, 2017, 11:53:14 PM
    Author     : suren
--%>

<%@page import="java.sql.SQLException"%>
<%@include file="../database/mydb_connection.jsp"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>

        <%            
        String username = request.getParameter("username");
            String pass = request.getParameter("pass");
            //out.print(username + "     " + pass);

            if (!(username.equals(null) || username.equals("")) && !(pass.equals(null) || pass.equals(""))) {
                try {
                    Class.forName(driver);
                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                    //String sql = "SELECT * FROM `admin_login` WHERE name='"+username+"' and password='"+pass+"' ";
                    String sql = "SELECT * FROM `admin_login` WHERE name=? and password=?";
                    PreparedStatement ps = connection.prepareStatement(sql);
                    ps.setString(1, username);
                    ps.setString(2, pass);
                    ResultSet rs = ps.executeQuery();
                    if (rs.next()) {
                        String userdbName = rs.getString("name");
                        String userdbPsw = rs.getString("password");

                        //out.print("<br/>"+username +"     "+ pass);
                        if (username.equals(userdbName) && pass.equals(userdbPsw)) {
                            session.setAttribute("name", userdbName);
                            
                            response.sendRedirect("clogin.jsp");
                        }
                        //response.sendRedirect("clogin.jsp");
                    } 
                    else {
                        response.sendRedirect("index.jsp");

                    }

                    rs.close();

                    ps.close();

                } catch (SQLException sqe) {
                    out.println(sqe);
                }
            }
        %>
    <center><p style="color:red">Error In Login</p></center>
      


</body>

</html>
