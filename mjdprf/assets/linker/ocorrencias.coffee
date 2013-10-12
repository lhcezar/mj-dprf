# autocompletar da busca
$('#search').typeahead 
  name: 'rodovias'
  local: ['br060', 'br080', 'br100'] 

# popover do menu de navegacao
$('ul.nav li a').each ()->
  $(this).on 'mouseenter', ()->
    $(this).popover 'show'
  .on 'mouseleave', ()->
    $(this).popover 'hide'

exibe_mapa = ()->
  osmurl="http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
  osmcloud = "http://{s}.tile.cloudmade.com/#{apikey}/997/256/{z}/{x}/{y}.png"

# registro no cloudmade
  apikey = "7e01a6d95d0d448f9b41e9820fe0be3d"

  map = L.map('map').setView [-15.94, -47.84], 4




