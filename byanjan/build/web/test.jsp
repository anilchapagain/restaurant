<%-- 
    Document   : clogin.jsp
    Created on : Dec 15, 2017, 12:04:38 PM
    Author     : Nabin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customers Images</title>
        <link rel="stylesheet"type="text/css" href="css/clogin.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
        
    </head>
    <body>

        <!-- banner upload-->
        <article id="main-slider" class="carousel slide" data-ride="main-slider">
            <!-- wrapper for slides -->
            <div class="carousel-inner">

                <div class="item active img-responsive" data-imgsrc="images/banner.png">

                </div>
                <div class="item img-responsive" data-imgsrc="images/banner.png"></div>
                <div class="item img-responsive" data-imgsrc="images/banner.png"></div>
            </div>

            <!-- indicators -->
            <ol class="carousel-indicators">
                <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                <li data-target="#main-slider" data-slide-to="1"></li> 
                <li data-target="#main-slider" data-slide-to="2"></li>

            </ol>

        </article>
        <!--upload for slider-->
        <div class="uploader ">
            <h2>Features</h2>
            <p> contains 6 images</p>
            <div class="cupload">
                <h3>File Upload:</h3>
                Select a file to upload: <br />
                <form action = "admin/upload.jsp" method = "post"
                      enctype = "multipart/form-data">
                     <input type="file" name="files[]" id="js-upload-files" multiple>
                    
                    <br />
                    <input type = "submit" value = "Upload File" />
                </form>

            </div>
        </div>
        <div id="F" class="panel">
                <h2>Feature File Upload</h2>
                <div class="panel-heading"><strong>Upload Files</strong> <small>Uploaded file For Features</small></div>
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
        <!-- Animation Jquery -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/animation.js"></script>
        <!--Slider function-->
        <!--Slider function-->

        <script>
            $(function () {
                $("#main-slider .item").each(function () {
                    if ($(this).attr('data-imgsrc') != null) {
                        var img_name = $(this).attr('data-imgsrc');
                        $(this).css('background-image', 'url(' + img_name + ')');
                    }
                })
                $('#main-slider.carousel').carousel({
                    interval: false
                });
            });
        </script>



        <script>
            $(function () {
                $("#main-slider .item").each(function () {
                    if ($(this).attr('data-imgsrc') != null) {
                        var img_name = $(this).attr('data-imgsrc');
                        $(this).css('background-image', 'url(' + img_name + ')');
                    }
                })
                $('#main-slider.carousel').carousel({
                    interval: false
                });
            });
        </script>

        <script>
            $('button.scrollsomething').on('click', function () {
                $.smoothScroll({
                    scrollElement: $('div.scrollme'),
                    scrollTarget: '#contact'
                });
                return false;
            });
        </script>

    </body>
</html>
