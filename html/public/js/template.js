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
        var valMsg = $('#validationMsg').val();
        var tentMsg = $('#tentativasMsg').val();
        var aguaMsg = $('#aguardaMsg').val();
        register(id, nome, email, valMsg, tentMsg, aguaMsg);
    });
}
//*######################### SHOWMESSAGE ###################################*/
function showMessage(title,msg)
{
    var newdiv = $( "<div id='alert-message'><center><span><h4>"+title+"</h4><br><p>"+msg+"</p><br><br><br><a class='md-button'>ok</a></span></center></div>" )
    $( "#content-holder" ).append(newdiv);
    var h = $( window ).height();
    var h2 = ($('#alert-message span').height());
    var v_center = (h-h2-60)/2;
    $('#alert-message span').css('top',v_center)
    $('#alert-message a').click(function(){
        $('#alert-message').fadeOut(500);
        setTimeout(function() {
            $('#alert-message').remove();
        }, 505);
    });
}
//*######################### CALLS ###################################*/
function register(unique_id, nome, email, valMsg, tentMsg, aguaMsg)
{
    function isValidEmailAddress(emailAddress) {
        var pattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);
        return pattern.test(emailAddress);
    };
        if (($("#nameInput").val() == '') || ($("#emailInput").val() == '') || (!isValidEmailAddress( $("#emailInput").val()))){
            showMessage('ALERT',valMsg);
        }
        else {
            // INSERT SET AJAX FORM HERE! 
            var url = window.location.protocol+'//'+window.location.host+domain+'/public/scripts/user_functions.php/register';
            var request = $.ajax({
                url: url,
                type: 'POST',
                data: {
                    unique_id:unique_id, 
                    nome:nome, 
                    email:email
                },
                dataType: "html",
                success: function (response) {
                  //  alert(response);
                    if(response==0)
                    {
                        showMessage('ALERT',aguaMsg);
                    }
                    else if(response==-1)
                    {
                        showMessage('ALERT',tentMsg);
                    }
                    else
                    {
                        //alert(response);
                        changeToRoll(response, unique_id);
                    }
                },
                failure: function () {
                    showMessage('SERVER ERROR','Ocorreu um erro de servidor');
                }
            });
            return(false);
        }     
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
           // alert(response);
        },
        failure: function () {
            showMessage('SERVER ERROR','Ocorreu um erro de servidor');
        }
    });
    return(false);
}
function rollSlot(id, unique_id)
{
    //var url = 'http://slotmachine.noip.me:8080/'+unique_id+'/'+id+'/roll';
    var url = $('#appUrl').val()+'/'+unique_id+'/'+id+'/roll';
    var request = $.ajax({
        url: url,
        type: 'POST',
        data: {},
        crossDomain:true,
        success: function (response) {
          //  alert(response);
        },
        failure: function () {
            showMessage('SERVER ERROR','Ocorreu um erro de servidor');
        }
    });
    changeToGoodLuck();
    return(false); 
}
function requestSlot(id, unique_id)
{
    //var url = 'http://slotmachine.noip.me:8080/'+unique_id+'/'+id;
    var url = $('#appUrl').val()+'/'+unique_id+'/'+id;
     //   alert(url);
    var request = $.ajax({
        url: url,
        type: 'POST',
        data: {},
        crossDomain:true,
        success: function (response) {
            //alert(response);
        },
        failure: function () {
            showMessage('SERVER ERROR','Ocorreu um erro de servidor');
        }
    });
    return(false);  
}
//*########################### DOM CHANGERS ################################*//
function changeToRoll(id, unique_id)
{
    requestSlot(id, unique_id);
    var html='<div id="innerContainer"><div class="clear40"></div><div class="messages-style"><h5>PRESS ROOL TO PLAY</h5></div><br><button class="classname" id="rodar"><h4>ROLL</h4></button></div>';    
    $('#formContainer').hide(800, function(){
       $('.content-container').html(html); 
       setRollButton(id, unique_id);
    });
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
    var html='<div class="clear40"></div><div class="messages-style"><h4>GOOD LUCK!</h4></div>';    
    $('.content-container').html(html); 
}