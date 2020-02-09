<!DOCTYPE html>
<html lang="pt">
    <head>
        <meta charset="UTF-8" />
        <title>Slot Machine @ Development</title>
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="Tarambola - Soluções Multimédia">
        <meta name="viewport" content="user-scalable=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <!-- *********************** CSS ************************* -->
        <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
        <link href='_css/reset.css' rel='stylesheet' type='text/css'>
        <link href='_css/style.css' rel='stylesheet' type='text/css'>
    </head>
    <body> 
        <img src="_img/BG.jpg" alt="" class="bg"/>
        <div class="corners">
            <section class="main-container">
                <center>
                    <!-- ****************** HEADER **************** -->
                    <header id="header">
                        <h1>SLOT MACHINE</h1>
                        <h2>BOOMBAP </h2> 
                        <div class="clear65"></div>
                        <img src="_img/boombap.png" id="boombap" alt="" />
                        <div class="clear1"></div>
                    </header>
                    <!-- ****************** CONTENT **************** -->
                    <article class="content-container">

                        <img src="_img/slotmachine.png" id="slotmachine" alt="" />
                        <div class="clear2"></div>
                        <!-- ************** INICIO **************** -->
                        <!--
                        <div class="clear40"></div>
                        <button class="classname" id="entrar">ENTRAR</button>
                        -->
                        <!-- ************** WAIT **************** -->
                        <!--
                        <div class="clear40"></div>
                        <h3>AGUARDA A TUA VEZ!</h3>
                        -->
                        <!-- ************** FORM **************** -->
                        <form>
                            <section class="form-side">
                                <label for="name">
                                    <div class="left hide320"></div>
                                    <div class="span" id="name">
                                        <span>Nome</span>
                                        <img src="_img/nome.png" alt="" />
                                    </div>
                                    <div class="right hide320"></div>
                                </label>
                                <div class="clear0"></div>
                                <input type="text" class="input" id="name">
                                <div class="clear20 hide1280"></div>
                            </section>
                            <div class="clear4"></div>
                            <section class="form-side">
                                <label for="email">
                                    <div class="left hide320"></div>
                                    <div class="span" id="email">
                                        <span>Email</span>
                                        <img src="_img/email.png" alt="" />
                                    </div>
                                    <div class="right hide320"></div>
                                </label>
                                <div class="clear0"></div>
                                <input type="email" class="input" id="email">
                            </section>
                            <div class="clear3"></div>
                            <input type="submit" class="classname" id="submit" value="REGISTAR">
                        </form>
                        <!-- ************** RODAR **************** -->
                        <!--
                        <div class="clear40"></div>
                        <button class="classname" id="rodar">RODAR</button>
                        -->
                    </article>
                </center>
            </section>
            <!-- ****************** CORNERS **************** -->
            <div id="corner_tl"></div>
            <div id="corner_tr"></div>
            <div id="corner_bl"></div>
            <div id="corner_br"></div>
        </div>
        <!-- ************************* SCRIPTS ****************** -->
        <script src="_js/jquery2.0.3.js"></script>
        <script src="_js/script.js"></script>
    </body>   
</html>   