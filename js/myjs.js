
$( document ).ready(function() {
        console.log( "document loaded" )
    });
 
    $( window ).on( "load", function() {
        console.log( "window loaded" )
    });


$(function(){
    $('.nav-item a').click(function(){
        $(this).parent().addClass('active').siblings().removeClass('active')	
    })
})