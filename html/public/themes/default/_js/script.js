$( document ).ready(contentCenter(),cornerFix());

window.onresize = function() {
    contentCenter();
    cornerFix();
}           
function contentCenter(){
 //   alert('entrou');
    var h = $('body').height();
    var h2 = ($('header#header').height());
    var h3 = ($('article.content-container').height());
    var v_center = ((h/2)-(h2/2)-(h3/2))/2;
   // alert(v_center);
    if (v_center<40){
        v_center = 20;
        $('article.content-container').css('margin-top',v_center)
    }
    else {
        $('article.content-container').css('margin-top',v_center)
    }
    
}

function cornerFix(){
   // alert('entrou');
   var h = $('body').height();
   var h2 = (($('article.content-container').height())+($('header#header').height()));
   if (h2>=h){
       $('#corner_bl').css('position','relative');
       $('#corner_br').css('position','relative');
       $('#corner_bl').css('float','left');
       $('#corner_br').css('float','right');
   }
   else{
       $('#corner_bl').css('position','absolute');
       $('#corner_br').css('position','absolute');
   }
   
    
}