<h1><?php echo __('Configurar Mensagens registo Utilizadores'); ?></h1>
<?
$url = explode("/",($_SERVER["REQUEST_URI"])); 
    
    $id=$url[sizeof($url)-1];
    $sql = "SELECT * FROM tara_front_users_messages WHERE id = '".$id."'";
             $result = Record::query($sql);
             $result = $result->fetchAll();
?>
<h3 id="editPageH">Editar</h3>
<div class="form-area">
    <div id="Page-part-forms-Form">
        <div class="page-part-forms-row">
                <label for="Page-part-forms-Page-Part-titulo-en" class="page-part-forms-label">Lang:</label>
                <div class="page-part-forms-input">
                    <select id="lang_Select">
                        <option value="pt" <? echo(($result[0]['lang']=='pt')?'selected="selected"':''); ?> >PT</option>
                        <option value="en" <? echo(($result[0]['lang']=='en')?'selected="selected"':''); ?> >EN</option>
                        <option value="fr" <? echo(($result[0]['lang']=='fr')?'selected="selected"':''); ?> >FR</option>
                        <option value="es" <? echo(($result[0]['lang']=='es')?'selected="selected"':''); ?> >ES</option>
                    </select>   
                </div> 
        </div>
        <div class="page-part-forms-row">
                <label for="Page-part-forms-Page-Part-titulo-en" class="page-part-forms-label">Função:</label>
                <div class="page-part-forms-input">
                    <select id="funcao_Select">
                        <option value="registo" <? echo(($result[0]['funcao']=='registo')?'selected="selected"':''); ?> >Registo</option>
                        <option value="confirmação" <? echo(($result[0]['funcao']=='confirmação')?'selected="selected"':''); ?> >Confirmação</option>
                    </select>     
                </div> 
        </div>
        <div class="page-part-forms-row">
                <label for="Page-part-forms-Page-Part-titulo-en" class="page-part-forms-label">Mensagem:</label>
                <div class="page-part-forms-row_page_part">
                    <div class="page-part-forms-input">
                        <div class="page-part-forms-part-page-part">
                            <textarea  id="mensagem_Text" cols="40" rows="20" style="width: 100%; display: block;" name="mensagem"  class="textarea"><? echo($result[0]['mensagem']); ?></textarea>
                        </div>
                    </div> <!-- INPUT -->
                </div>
        </div>
        <div class="page-part-forms-row">
                <label for="Page-part-forms-Page-Part-titulo-en" class="page-part-forms-label">Guardar:</label>
                <button class="saveFrontUserBtn" onclick='updateMensagem(<? echo($id); ?>, "<? echo(URL_PUBLIC); ?>");'>  salvar </button>
        </div>
    </div>
</div>
<script type="text/javascript">
//tinymce.init({selector:'textarea'});
</script>
