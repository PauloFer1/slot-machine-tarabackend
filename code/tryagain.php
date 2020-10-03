<!-- ****************** CONTENT **************** -->
<article class="content-container">
    <?php $wait = PAGE::find('mensagens/mensagens-mobile'); ?>
    <img src="<? echo($wait->getFirstImage('', 'image')); ?>" id="slotmachine" alt="" />
    <div class="clear2"></div>
    <div class="messages-style">
        <h4><?php $wait->pContent('wait'); ?></h4>
        <h5><?php $wait->pContent('wait2'); ?></h5>
    </div>

</article>

