<? if ($this->slug == 'webservice'): ?>

  <? $this->includeSnippet('service'); ?>

<? else: ?>
    <?
        function getLastId()
        {
             global $__tarambola_CONN__;

                $sql="SELECT * From tara_unique_id ORDER BY id DESC LIMIT 1";

                if ($stmt = $__tarambola_CONN__->prepare($sql))
                {
                    $stmt->execute();

                    $object = $stmt->fetchObject();
                }
               return($object);
        }

        $id = getLastId();
        ?>
        <!DOCTYPE html>
        <html lang="pt">
            <head>
                <meta charset="UTF-8" />
                <title>Slot Machine</title>
                <meta name="description" content="">
                <meta name="keywords" content="">
                <meta name="author" content="Tarambola - Soluções Multimédia">
                <meta name="viewport" content="user-scalable=no" />
                <meta name="apple-mobile-web-app-capable" content="yes" />
                <!-- *********************** CSS ************************* -->
                <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
                <link href='<? echo(URL_PUBLIC); ?>public/themes/default/_css/reset.css' rel='stylesheet' type='text/css'>
                <link href='<? echo(URL_PUBLIC); ?>public/themes/default/_css/style.css' rel='stylesheet' type='text/css'>
            </head>
            <body> 
                <img src="<? echo(URL_PUBLIC); ?>public/themes/default/_img/BG.jpg" alt="" class="bg"/>
                <div class="corners">
                    <section class="main-container">
                        <center>
                            <!-- ****************** HEADER **************** -->
                            <header id="header">
                                <h1>SLOT MACHINE</h1>
                                <h2>BOOMBAP </h2> 
                                <div class="clear65"></div>
                                <img src="<? echo(URL_PUBLIC); ?>public/themes/default/_img/boombap.png" id="boombap" alt="" />
                                <div class="clear1"></div>
                            </header>
            <!-- ######################### SE O UNIQUE ID COINCIDE ############################-->                
            <? if($_GET['id']==$id->unique_id): ?> 
               <? $this->includeSnippet('register'); ?>
            <!-- ######################### SE O UNIQUE ID NÃO COINCIDE ############################-->     
            <? else: ?>
                <? $this->includeSnippet('tryagain'); ?>
            <? endif; ?>  
        </center>
            </section>
            <!-- ****************** CORNERS **************** -->
            <div id="corner_tl"></div>
            <div id="corner_tr"></div>
            <div id="corner_bl"></div>
            <div id="corner_br"></div>
        </div>
        <!-- ************************* SCRIPTS ****************** -->
        <script src="<? echo(URL_PUBLIC); ?>public/themes/default/_js/jquery-2.0.3.js"></script>
        <script src="<? echo(URL_PUBLIC); ?>public/themes/default/_js/script.js"></script>
         <? $this->includeSnippet('jsAppend'); ?>
    </body>   
</html>   
<? endif; ?>

