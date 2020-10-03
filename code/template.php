<? if ($this->slug == 'webservice'): ?>

    <? $this->includeSnippet('service'); ?>

<? else: ?>
    <?

    function getLastId() {
        global $__tarambola_CONN__;

        $sql = "SELECT * From tara_unique_id ORDER BY id DESC LIMIT 1";

        if ($stmt = $__tarambola_CONN__->prepare($sql)) {
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
        <meta name="description" content="Slot Machine">
        <meta name="keywords" content="">
        <meta name="author" content="Tarambola - Soluções Multimédia">
        <meta name="viewport" content="user-scalable=no, initial-scale=0.9, minimum-scale=0.5, width=device-width, height=device-height, target-densitydpi=device-dpi" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <!-- *********************** CSS ************************* -->
        <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Playfair+Display+SC:400,700' rel='stylesheet' type='text/css'>
        <link href='<? echo(URL_PUBLIC); ?>public/themes/default/_css/reset.css' rel='stylesheet' type='text/css'>
        <link href='<? echo(URL_PUBLIC); ?>public/themes/default/_css/style.css' rel='stylesheet' type='text/css'>
        <link href='<? echo(URL_PUBLIC); ?>public/themes/default/_css/mobile.css' rel='stylesheet' type='text/css'>
    </head>
    <body style="background:white !important">

    <!--<img src="url(<? echo(URL_PUBLIC); ?>public/themes/default/_img/BG.jpg)" alt="" class="bg"/>-->
    <div class="corners" id="content-holder">
        <section class="main-container">
            <center>
                <!-- ****************** HEADER **************** -->
                <header id="header">
                    <img src="<? echo(URL_PUBLIC); ?>public/images/logo.png" id="boombap" alt="" />
                </header>
                <!-- ######################### SE O UNIQUE ID COINCIDE ############################-->
                <? if ($_GET['id'] == $id->unique_id): ?>
                    <? $this->includeSnippet('register'); ?>
                    <!-- ######################### SE O UNIQUE ID NÃO COINCIDE ############################-->
                <? else: ?>
                    <? $this->includeSnippet('tryagain'); ?>
                <? endif; ?>
                <?
                require_once SERVER_URL . 'tarambola/app/classes/Item.php';
                $p = new Item();
                $p = $p->getPageById(130);
                ?>
                <input id="appUrl" type="hidden" value="<? echo($p->content('client_url')); ?>"></input>
                <div class="clear65"></div>
                <div class="clear65"></div>
            </center>
        </section>
    </div>
    <!-- ************************* SCRIPTS ****************** -->
    <script src="<? echo(URL_PUBLIC); ?>public/themes/default/_js/jquery-2.0.3.js"></script>
    <script src="<? echo(URL_PUBLIC); ?>public/themes/default/_js/script.js"></script>
    <? $this->includeSnippet('jsAppend'); ?>
    </body>
    </html>
<? endif; ?>

