<%-- 
    Document   : practice
    Created on : 20 Dec, 2017, 1:02:22 AM
    Author     : suren
--%>
<%@ page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
    </head>
    <body>
        <!--<form action="bslider.jsp" method="post" enctype="multipart/form-data" >
            <nput type="file" name="choose file">
            <input type="submit">

        </form>
        -->



       
                
                <%
                  try{
                     
                
                    String file = application.getRealPath("images");
                    File f = new File(file);
                    String[] fileNames = f.list();
                    File[] fileObjects = f.listFiles();
                    for (int i = 0; i < fileObjects.length; i++) {
                        if (!fileObjects[i].isDirectory()) {
                            String fname = file + fileNames[i];
                            out.println(fileNames[i]);
                %>
              <a href=”<%= "image/" + fileNames[i]%>”><%= fileNames[i]%></a>
                <%
                        }
                    }
                  }
   
                  catch(Exception e){
                      out.print(e);
                  }
                %>
               

        <!--Slider function-->
        
       
        
        
        
     

                </body>
                </html>
