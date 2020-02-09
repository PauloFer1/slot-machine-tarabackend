<!-- ############################ TEMPLATE ################################## -->
<script type="text/javascript" src="<? echo(URL_PUBLIC); ?>public/js/template.js"></script>
<!-- ############################ END TEMPLATE ################################## -->

<!-- ############################ GENERICO ################################## -->
<? if($this!=null && $this->slug!=null && file_exists(SERVER_URL.'/public/js/'.$this->slug.'.js')): ?>
    <script type="text/javascript" src="<? echo(URL_PUBLIC); ?>public/js/<? echo($this->slug); ?>.js"></script>
<? endif; ?>
<!-- ############################ END GENERICO ################################## -->