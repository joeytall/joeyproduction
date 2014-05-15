$('.letters li').on('mouseover', function(){
  var item = $(this),
      classes = item.attr('class'),
      siblings = item.siblings('.'+classes);
  
  if(siblings.length > 0) {
    siblings.addClass('full-opacity');
  }
}).on('mouseleave', function() {
  $('.letters li.full-opacity').removeClass('full-opacity');
});