<%-- 
    Document   : clogin.jsp
    Created on : Dec 15, 2017, 12:04:38 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Anil file</title>
        <link rel="stylesheet" type="text/css" href="../css/login.css">

        <link rel="stylesheet" type="text/css" href="../css/cu.css">
        <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>

    </head>
    <body>
         

<div class="alert alert-success"> <a href="#" class="close" data-dismiss="alert">×</a>
     <h4>Success</h4>
    <br />
    <div>
        <%
            if ((session.getAttribute("name"))== null) 
            {
                    response.sendRedirect("index.jsp");
                }
            out.print(session.getAttribute("name"));
            %>  
    </div>
</div>
        
        <img id="cu" class="img-responsive" src="../images/byanjan.jpg"> 

            <a id="button" class="btn-danger pull-right" href="logout.jsp">Logout</a>
            
            
            
            <div class="container">
                 <div id="B" class="panel">
                <h2>Banner File Upload</h2>
                <div class="panel-heading"><strong>Upload Files</strong> <small>Uploaded file For Banner</small></div>
                <div class="panel-body">

                    <!-- Standar Form -->
                    <h4>Select files from your computer</h4>
                    <form action="upload.jsp" method="post" enctype="multipart/form-data" id="js-upload-form">
                        <div class="form-inline">
                            <div class="form-group">
                                <input type="file" name="files[]" id="js-upload-files" multiple>
                            </div>
                            <button type="submit" >Upload files</button>
                        </div>
                    </form>
                </div>
            </div>
            
            
            <div id="F" class="panel">
                <h2>Feature File Upload</h2>
                <div class="panel-heading"><strong>Upload Files</strong> <small>Uploaded file For Features</small></div>
                <div class="panel-body">

                    <!-- Standar Form -->
                    <h4>Select files from your computer</h4>
                    <form action="upload.jsp" method="post" enctype="multipart/form-data" id="js-upload-form">
                        <div class="form-inline">
                            <div class="form-group">
                                <input type="file" name="files[]" id="js-upload-files" multiple>
                            </div>
                            <button type="submit" >Upload files</button>
                        </div>
                    </form>
                </div>
            </div>
            
            
            <div id="last" class="panel">
                <h2>Menu File Upload</h2>
                <div class="panel-heading"><strong>Upload Files</strong> <small>Uploaded file For Menu</small></div>
                <div class="panel-body">

                    <!-- Standar Form -->
                    <h4>Select files from your computer</h4>
                    <form action="upload.jsp" method="post" enctype="multipart/form-data" id="js-upload-form">
                        <div class="form-inline">
                            <div class="form-group">
                                <input type="file" name="files[]" id="js-upload-files" multiple>
                            </div>
                            <button type="submit" >Upload files</button>
                        </div>
                    </form>
                </div>
            </div>
            
            
           
            </div>
            <div class="clearfix"></div>
             <!-- /container -->
        <!-- Animation Jquery -->
        <script src="../js/login.js"></script>
        <script src="../js/jquery.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/animation.js"></script>
        
        <script>
 
window.setTimeout(function () {
    $(".alert-success").fadeTo(500, 0).slideUp(500, function () {
        $(this).remove();
    });
}, 1000);
        </script>

    </body>
</html>
