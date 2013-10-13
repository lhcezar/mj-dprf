RodoviasController =
  detalhe: (req, res)->
    c_rod = req.param 'id'

    DetalheRodovias.findByCodigo_rod(c_rod).done (err, rodovia)->
      #return res.send err, 500 if err
      res.json rodovia

  rodovia: (req, res)->
    termo = req.param 'termo'

    Rodovia.find
      # somethings seems wrong with sails-postgresql...
      or: [
        or: 
          localidade: 
            contains: termo
          nome:
            contains: termo
        ]
    , (err, rodovia)->
      res.json rodovia

  painel: (req, res)->
    res.view r:{}

module.exports = RodoviasController
