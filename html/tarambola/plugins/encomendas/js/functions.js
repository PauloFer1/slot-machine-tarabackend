function saveState(url, id){
        var val = jQuery('#encomenda-state').val();
        var request = jQuery.ajax({
            url: url+'tarambola/plugins/encomendas/scripts/functions.php/update-state',
            type: 'POST',
            data: { enc_id : id , state:val},
            dataType: "html",
            success: function (response) {
                if(response==1)
                    {
                        window.location.replace(url+'tarabackend/plugin/encomendas/encomendas');
                    }
                else
                {
                    alert("Erro ao salvar estado!");
                }
            },
            failure: function () {
                alert("Erro de servidor!");
            }
          });
}
function saveAtributo(url)
{
    var attr = jQuery('#atributoInput').val();
    var request = jQuery.ajax({
            url: url+'tarambola/plugins/encomendas/scripts/functions.php/add-atributo',
            type: 'POST',
            data: { descricao : attr},
            dataType: "html",
            success: function (response) {
                if(response==1)
                    {
                        window.location.replace(url+'tarabackend/plugin/encomendas/atributos');
                    }
                else
                {
                    alert("Erro ao salvar atributo!");
                }
            },
            failure: function () {
                alert("Erro de servidor!");
            }
          });
}
function addAtributoValor(url, attrId)
{
    var val = jQuery('#atributoInput').val();
    var request = jQuery.ajax({
            url: url+'tarambola/plugins/encomendas/scripts/functions.php/add-atributo-valor',
            type: 'POST',
            data: { descricao : val, atributo:attrId},
            dataType: "html",
            success: function (response) {
                if(response==1)
                    {
                        window.location.replace(url+'tarabackend/plugin/encomendas/view_atributo/'+attrId);
                    }
                else
                {
                    alert("Erro ao salvar atributo!");
                }
            },
            failure: function () {
                alert("Erro de servidor!");
            }
          });
}

