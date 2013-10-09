$('ul.nav li a').each ()->
  $(this).on 'mouseenter', ()->
    $(this).popover('show')
  .on 'mouseleave', ()->
    $(this).popover('hide')

