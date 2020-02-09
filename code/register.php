<!-- ****************** CONTENT **************** -->
<?php $reg = PAGE::find('mensagens/mensagens-mobile'); ?>
<article class="content-container">
    <img src="<? echo(URL_PUBLIC); ?>public/themes/default/_img/slotmachine.png" id="slotmachine" alt="" />
    <div class="clear2"></div>
    <!-- ************** FORM **************** -->
    <form id="registform">
        <input type="hidden" class="input" id="unique_id" value="<? echo($_GET['id']); ?>">
        <section class="form-side">
            <label for="name">
                <?php $reg->pContent('formlabel1'); ?>
            </label>
            <input type="text" class="input" id="nameInput" value="">
            <div class="clear20 hide1280"></div>
        </section>
        <div class="clear4"></div>
        <section class="form-side">
            <label for="email">
                <?php $reg->pContent('formlabel2'); ?>
            </label>
            <div class="clear0"></div>
            <input type="email" class="input" id="emailInput" value="">
        </section>
        <div class="clear3"></div>
        <button type="submit" class="classname" id="submit"><center><h4><?php $reg->pContent('formbutton'); ?></h4></center></button>
        <input id="validationMsg" type="hidden" value="<?php $reg->pContent('validationwarning'); ?>"></input>
        <input id="tentativasMsg" type="hidden" value="<?php $reg->pContent('esgotadaswarning'); ?>"></input>
        <input id="aguardaMsg" type="hidden" value="<?php $reg->pContent('waitwarning'); ?>"></input>
    </form>
</article>