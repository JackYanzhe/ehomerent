var _toast={
    _center:function(){
        var px = (jQuery(document.body).width()-jQuery("#toast").outerWidth())/2+"px"
        jQuery("#toast").css('left',px);
        jQuery("#toast").css('top',"40%");
    },
    _show:function(text,fun){

        jQuery(document.body).append('<div id="toast" class="toast"></div>');
        jQuery("#toast").html(text);
        _toast._center();
        jQuery("#toast").show();
        //_e._add(window,"resize",_toast._center);
        setTimeout(function(){
            _toast._hide(fun);
        },2*1000);
    },
    _hide:function(fun){
        jQuery("#toast").hide();
        jQuery("#toast").remove();
        //_e._del(window,"resize",_toast._center);
        if(fun){(fun)();}
    }
};