<!DOCTYPE html>
<html lang="pt">
    <head>
        <meta charset="UTF-8" />
        <title>Slot Machine</title>
        <meta name="description" content="Slot Machine">
        <meta name="keywords" content="">
        <meta name="author" content="Tarambola - Soluções Multimédia">
        <meta name="viewport" content="user-scalable=no, initial-scale=0.9, minimum-scale=0.5, width=device-width, height=device-height, target-densitydpi=device-dpi" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <!-- *********************** CSS ************************* -->
        <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Playfair+Display+SC:400,700' rel='stylesheet' type='text/css'>
        <link href='http://slotmachine.no-ip.info/public/themes/default/_css/reset.css' rel='stylesheet' type='text/css'>
        <link href='http://slotmachine.no-ip.info/public/themes/default/_css/style.css' rel='stylesheet' type='text/css'>
        <link href='http://slotmachine.no-ip.info/public/themes/default/_css/mobile.css' rel='stylesheet' type='text/css'>

    </head>
    <body> 
        <!--<img src="http://slotmachine.no-ip.info/public/themes/default/_img/BG.jpg" alt="" class="bg"/>-->
        <div class="corners">
            <section class="main-container">
                <center>
                    <!-- ****************** HEADER **************** -->
                    <header id="header">
                        <img src="http://slotmachine.no-ip.info/public/themes/default/_img/boombap.png" id="boombap" alt="" />
                    </header>
                    <!-- ************************ SNIPPETS ************************* -->
                    <!-- ****************** CONTENT **************** -->
                    <article class="content-container">
                        <img src="http://slotmachine.no-ip.info/public/themes/default/_img/slotmachine.png" id="slotmachine" alt="" />
                        <div class="clear2"></div>
                        <!-- ************** FORM **************** -->
                        <form id="registform">
                            <input type="hidden" class="input" id="unique_id" value="">
                            <section class="form-side">
                                <label for="name">
                                    NAME
                                </label>
                                <input type="text" class="input" id="nameInput" value="">
                                <div class="clear20 hide1280"></div>
                            </section>
                            <div class="clear4"></div>
                            <section class="form-side">
                                <label for="email">
                                    EMAIL
                                </label>
                                <input type="email" class="input" id="emailInput" value="">
                            </section>
                            <div class="clear3"></div>
                            <button class="classname" id="submit" type="submit"><center><h4>REGISTER</h4></center></button>
                        </form>
                    </article>
                    <div class="clear65"></div>
                    <div class="clear65"></div>
                </center>
            </section>
        </div>
        <!-- ************************* SCRIPTS ****************** -->
        <script src="http://slotmachine.no-ip.info/public/themes/default/_js/jquery-2.0.3.js"></script>
        <script src="http://slotmachine.no-ip.info/public/themes/default/_js/script.js"></script>
        <!-- ******************** JS APPEND ******************** -->
        <!-- ############################ TEMPLATE ################################## -->
        <!--<script type="text/javascript" src="http://slotmachine.no-ip.info/public/js/template.js"></script>-->
        <!-- ############################ END TEMPLATE ################################## -->
        <!-- ******************** VALIDATION ENGINE ******************** -->
        <!--<script src="http://slotmachine.no-ip.info/public/themes/default/_js/jquery.validationEngine.js"></script>
        <script src="http://slotmachine.no-ip.info/public/themes/default/_js/jquery.validationEngine-en.js"></script>
        <script src="http://slotmachine.no-ip.info/public/themes/default/_js/jquery.validationEngine-fr.js"></script>
        <script src="http://slotmachine.no-ip.info/public/themes/default/_js/jquery.validationEngine-pt.js"></script>-->
        <!-- ******************** FORM ******************** -->
        <script> 
            function isValidEmailAddress(emailAddress) {
                var pattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);
                return pattern.test(emailAddress);
            };
            
                $('#submit').click(function(){
                    if (($("#nameInput").val() == '') || ($("#emailInput").val() == '') || (!isValidEmailAddress( $("#emailInput").val()))){
                        alert('Por favor introduza correctamente o Nome e Email');
                       
                    }
                    else {
                        // INSERT SET AJAX FORM HERE!
                    }
                });            
        </script>
    </body>   
</html>   