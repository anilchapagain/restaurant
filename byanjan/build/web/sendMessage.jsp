<%-- 
    Document   : sendMessage
    Created on : 22 Dec, 2017, 11:53:14 PM
    Author     : suren
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="javax.swing.JPanel"%>
<%@page import="javafx.scene.control.Alert.AlertType"%>
<%@page import="javafx.scene.control.Alert"%>
<%@page import="javafx.application.Platform"%>
<%@page import="javafx.scene.control.Label"%>
<%@page import="java.awt.HeadlessException"%>
<%@include file="database/mydb_connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Message Sent</title>
        <script type="text/javascript">
            function showAlert() {
                alert("Hi This is Simple alert");
            }
        </script>
    </head>
    <body>
        <%       
        String name = request.getParameter("name");
            String email = request.getParameter("email");
            String msg = request.getParameter("message");

            try {
                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                statement = connection.createStatement();

                int i = statement.executeUpdate("insert into tbl_message(name,email,message)values('" + name + "','" + email + "','" + msg + "')");
                JOptionPane.showMessageDialog(null, "Success");

            } catch (Exception e) {
                System.out.print(e);
                e.printStackTrace();
            }
        %>
        <script type="text/javascript">

            function myMessage()
            {
                alert("Message Sent")
            }
        </script>

        <jsp:forward page = "index.jsp" />
    </body>
</html>
