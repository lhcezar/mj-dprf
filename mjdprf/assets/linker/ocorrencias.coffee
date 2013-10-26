# autocompletar da busca
$('#search').typeahead 
  name: 'rodovias'
  #local: ['abc', 'def', 'ghi']
  valueKey: 'nome'
  remote: '/rodovias/rodovia/?termo=%QUERY'
  template: '<p><strong>{{nome}}</strong> – <small>{{localidade}}</small></p>'
  engine: Hogan

$(document).ajaxStart ()->
  $('#msgloading').text('carregando...')

$(document).ajaxStop ()->
  $('#msgloading').text 'carregado'

busca_semanas = ()->
  $.ajax('/acidente/semana').done (data)->
    console.log data.rows

    for key, value of data.rows

      $("<span>#{value.semana}</span><div id='#{value.semana}' class='progress'>").appendTo('#semanas')
      $("<div class='progress-bar progress-bar-warning' role='progressbar' aria-valuenow='20' aria-valuemin='0' aria-valuemax='100' style='width: #{value.percent}%'>").appendTo("##{value.semana}").append("<span>#{value.percent}%</span>")

busca_semanas()

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




