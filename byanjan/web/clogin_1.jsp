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

        <link rel="stylesheet" type="text/css" href="css/cu.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/minimum-width-992px.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>

    </head>
    <body>
        <img id="cu" class="img-responsive" src="images/byanjan.jpg"> 
        <div class="container">

            <div id="B" class="panel">
                <h2>Banner File Upload</h2>
                <div class="panel-heading"><strong>Upload Files</strong> <small>Uploaded file For banner</small></div>
                <div class="panel-body">

                    <!-- Standar Form -->
                    <h4>Select files from your computer</h4>
                    <form action="admin/upload.jsp" method="post" enctype="multipart/form-data" id="js-upload-form">
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
                    <form action="bslider.java" method="post" enctype="multipart/form-data" id="js-upload-form">
                        <div class="form-inline">
                            <div class="form-group">
                                <input type="file" name="files[]" id="js-upload-files" multiple>
                            </div>
                            <button type="submit" >Upload files</button>
                        </div>
                    </form>
                </div>
            </div>
            
            
            <div id="M" class="panel">
                <h2>Menu File Upload</h2>
                <div class="panel-heading"><strong>Upload Files</strong> <small>Uploaded file For Menu</small></div>
                <div class="panel-body">

                    <!-- Standar Form -->
                    <h4>Select files from your computer</h4>
                    <form action="bslider.java" method="post" enctype="multipart/form-data" id="js-upload-form">
                        <div class="form-inline">
                            <div class="form-group">
                                <input type="file" name="files[]" id="js-upload-files" multiple>
                            </div>
                            <button type="submit" >Upload files</button>
                        </div>
                    </form>
                </div>
            </div>
        </div> <!-- /container -->
        <!-- Animation Jquery -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/animation.js"></script>
        <script>
            +function ($) {
                'use strict';

                // UPLOAD CLASS DEFINITION
                // ======================

                var dropZone = document.getElementById('drop-zone');
                var uploadForm = document.getElementById('js-upload-form');

                var startUpload = function (files) {
                    console.log(files)
                }

                uploadForm.addEventListener('submit', function (e) {
                    var uploadFiles = document.getElementById('js-upload-files').files;
                    e.preventDefault()

                    startUpload(uploadFiles)
                })

                dropZone.ondrop = function (e) {
                    e.preventDefault();
                    this.className = 'upload-drop-zone';

                    startUpload(e.dataTransfer.files)
                }

                dropZone.ondragover = function () {
                    this.className = 'upload-drop-zone drop';
                    return false;
                }

                dropZone.ondragleave = function () {
                    this.className = 'upload-drop-zone';
                    return false;
                }

            }(jQuery);
        </script>

    </body>
</html>
