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

    Local.find().where(cond).limit(100).done (err, locais)->
      async.map(locais, (local, cb)->
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

