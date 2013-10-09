RodoviasController =
  info: (req, res)->
    c_rod = req.param 'id'

    Rodovias.findByCodigo_rod(c_rod).done (err, rodovia)->
      #return res.send err, 500 if err
      res.json rodovia: rodovia

module.exports = RodoviasController
