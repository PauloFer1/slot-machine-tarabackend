var domain="";
$(document).ready(function(){
    setters();
});
/*######################### SETTERS ###################################*/
function setters(){
    setSubmitBtn();
}
function setSubmitBtn(){
    $('#submit').click(function(evt){
        evt.preventDefault();
        var id = $('#unique_id').val();
        var nome = $('#nameInput').val();
        var email = $('#emailInput').val();
        register(id, nome, email);
    });
}
//*######################### CALLS ###################################*/
function register(unique_id, nome, email)
{
    var url = window.location.protocol+'//'+window.location.host+domain+'/public/scripts/user_functions.php/register';
    var request = $.ajax({
                            url: url,
                            type: 'POST',
                            data: {unique_id:unique_id, nome:nome, email:email},
                            dataType: "html",
                            success: function (response) {
                                if(response==0)
                                {
                                    alert("Aguarda a tua vez!");
                                }
                                else if(response==-1)
                                {
                                    alert("TENTATIVAS ESGOTADAS! TENTA NOVAMENTE AMANHÃ!");
                                }
                                else
                                {
                                    //alert(response);
                                    changeToRoll(response, unique_id);
                                }
                            },
                            failure: function () {
                                alert("Server Error!");
                            }
                          });
    return(false);
}

function getRollPage()
{
    var url = window.location.protocol+'//'+window.location.host+domain+'/public/scripts/roll.php';
    var request = $.ajax({
                            url: url,
                            type: 'POST',
                            data: {},
                            dataType: "html",
                            success: function (response) {
                              alert(response);
                            },
                            failure: function () {
                                alert("Server Error!");
                            }
                          });
    return(false);
}
function rollSlot(id, unique_id)
{
    var url = 'http://slotmachine.noip.me:8080/'+unique_id+'/'+id+'/roll';
    var request = $.ajax({
                            url: url,
                            type: 'POST',
                            data: {},
                            crossDomain:true,
                            success: function (response) {
                              alert(response);
                            },
                            failure: function () {
                                alert("Server Error!");
                            }
                          });
                          changeToGoodLuck();
    return(false); 
}
function requestSlot(id, unique_id, url_link)
{
   //var url = 'http://slotmachine.noip.me:8080/'+unique_id+'/'+id;
    var request = $.ajax({
                            url: url,
                            type: 'POST',
                            data: {},
                            crossDomain:true,
                            success: function (response) {
                              alert(response);
                            },
                            failure: function () {
                                alert("Server Error!");
                            }
                          });
    return(false);  
}
//*########################### DOM CHANGERS ################################*//

function changeToRoll(id, unique_id, url_link)
{
    requestSlot(id, unique_id, url_link);
    var html='<div class="clear40"><input type="hidden" id="client_url" value=""></input></div><h3>PRIME PARA JOGAR</h3><button class="classname" id="rodar">RODAR</button>';
    
    $('.content-container').html(html);
    setRollButton(id, unique_id);
}
function setRollButton(id, unique_id)
{
     $('#rodar').click(function(evt){
        evt.preventDefault();
        rollSlot(id, unique_id);
    });
}
function changeToGoodLuck()
{
   var html='<div class="clear40"></div><h3>BOA SORTE!</h3>';
    
    $('.content-container').html(html);
}