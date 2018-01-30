<%-- 
    Document   : bslider
    Created on : 19 Dec, 2017, 11:28:33 PM
    Author     : suren
--%>
<%@include file="mydb_connection.jsp" %>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.io.File"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        File f;
        int factSize=1024*1024*1024;
        int fileSize=1024*1024*1024;
        String reqType=request.getContentType();
        
        if(reqType.indexOf("multipart/form-data")>=0){
            try{
                DiskFileItemFactory df=new DiskFileItemFactory();
                df.setSizeThreshold(factSize);
                df.setRepository(new File("c:\temp"));
                ServletFileUpload upload=new ServletFileUpload(df);
                upload.setSizeMax(factSize);
                List fileI=upload.parseRequest(request);
                ListIterator lit=fileI.listIterator();
                
                            String imge = request.getParameter("image");
                            
                            

                            try {
                                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                statement = connection.createStatement();

                                int i = statement.executeUpdate("insert into bslider(image)values(?)");
                                out.println("successful!!");
                            } 
                            catch (Exception e) {
                                System.out.print(e);
                                e.printStackTrace();
                            }
                        

                while(lit.hasNext())
                {
                    FileItem fi=(FileItem)lit.next() ;
                    String name=fi.getName();
                    f=new File("C:\\Users\\suren\\Documents\\NetBeansProjects\\Byanjan\\web\\upload",name);
                   
                    fi.getSize();
                    fi.write(f);
                    out.print("successful");
                }
            }
            catch(Exception e){
                out.print(e);
            }
        }
        
        %>
       
    </body>
</html>
