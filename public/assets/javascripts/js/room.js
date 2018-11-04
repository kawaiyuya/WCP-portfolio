
$(function(){
    $('#rooms-index').click(function(){
        $('#modal').removeClass('hidden');
        $('#mask').removeClass('hidden');
    });
    $('#close').click(function(){
        $('#modal').addClass('hidden');
        $('#mask').addClass('hidden');
    });
});
