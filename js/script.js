$(function(){
    $('.heroImgBtn').on("mouseover", function(){
        var target = $(this).data('target');
        $('#'+target).addClass('show');
    });
      
    $('.heroImgBtn').on("mouseleave", function(){
        var target = $(this).data('target');
        $('#'+target).removeClass('show');
    });
});