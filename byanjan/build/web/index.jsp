<%-- 
    Document   : index
    Created on : Dec 3, 2017, 3:10:25 PM
    Author     : Nabin
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@ include file="database/mydb_connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    
    <head>
        <%@include  file="headfile.html" %>
    </head>
      


    
    <body data-spy="scroll" data-target="#navbar-example">
        
        <header>
            <%@include file="navigation.html" %>
        </header>
        <div class="clear-fix"></div>
        <!--banner slider-->
        <%@include file="banner.html" %>
        <!---Article --->
        <%@include file="article.html" %>
        <!-- Menu -->
        <div id="menu">
        <%@include file="menu.html" %>
        </div>
        <!--Team starts-->
        <%@include file="team.html" %>
        <!---Fun starts--->
        <%@include file="fun.html" %>
        <!--CONTACT US--->
        <%@include file="contact.html" %>
        <!-- Footer starts-->
        <footer>
            <%@include file="footer.html" %>
        </footer>
         <!-- Animation Jquery -->
 <script src="js/jquery.min.js"></script>
 <script src="js/lightbox.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/animation.js"></script>
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
                    interval: true;
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
                    interval: 3000
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
        <!--cass script-->
        <script>
            
        $('.yourdiv').hover(function () {
  $(this).addClass('magictime puffIn');
});


        </script>
        <script>
            $('body').scrollspy({ target: '#navbar-example' });
        $('[data-spy="scroll"]').each(function () {
  var $spy = $(this).scrollspy('refresh')
});
</script>
        <script>
 
window.setTimeout(function () {
    $(".alert-success").fadeTo(500, 0).slideUp(500, function () {
        $(this).remove();
    });
}, 1000);
        </script>


    </body>
</html>
