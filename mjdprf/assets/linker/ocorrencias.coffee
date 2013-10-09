$('#search').typeahead 
  name: 'rodovias'
  prefetch: '/gis/rodovias.geojson'
  limit: 10

$('ul.nav li a').each ()->
  $(this).on 'mouseenter', ()->
    $(this).popover('show')
  .on 'mouseleave', ()->
    $(this).popover('hide')



