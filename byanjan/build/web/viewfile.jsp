<%@page import="java.sql.SQLException"%>
<%@include file="database/mydb_connection.jsp" %>
<%@ page import="java.io.*"%>
<html>
    
    <table>
        <%            Class.forName(driver);

            connection = DriverManager.getConnection(connectionUrl + database, userid, password);

            statement = connection.createStatement();

            String sql = "SELECT * FROM image";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            int count = 0;
            while (rs.next()) {
                count=count+1;// Get data from the current row and use it
            }
            //int i=0;
            rs.first();
            out.println(count );
            //out.println(i);
            while (count>0) {
                
                String userdbName = rs.getString("name");
                out.print(userdbName);
                out.print("<img src=\"upload/" + userdbName + "\" max-width=\"100%\" max-height=\"100%\" alt=\"banner\"/>");
                count--;
                rs.next();
            }

        %>

    </table>
</html>