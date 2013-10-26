require 'async'

LocalController = 
  index: (req, res)->
    res.json()
    return
  acidentes: (req, res)->
    acidentes = []
    cond = 
      lbrlatitude:
        'not': null

    sql = """SELECT * 
             FROM 
             ocorrencia o 
             JOIN local l ON 
             (o.ocolocal = l.lbrid)
            WHERE
              TRIM(lbrlatitude) IS NOT NULL AND
              TRIM(lbrlongitude) IS NOT NULL
            LIMIT 5000
          """
    Local.query sql, (err, locais)->
      #    Local.find().where(cond).limit(100).done (err, locais)->
      async.map(locais.rows, (local, cb)->
        acidentes.push(
          lon: local.lbrlongitude.replace /^\s+|\s+$/g, ""
          lat: local.lbrlatitude.replace /^\s+|\s+$/g, ""
          value: 1
        )
        cb(null, acidentes)
      , (err, acidentes)->
        if (err)
          res.json 500
        else
          res.json acidentes.pop()
      )
      
module.exports = LocalController

