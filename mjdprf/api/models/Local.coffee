module.exports =
  attributes:
    lbrid: 'integer'
    lbruf: 'string'
    lbrbr: 'string'
    lbrkm: 'string'
    lbrlatitude: 'string'
    lbrlongitude: 'string'
    lbrpnvid: 'integer'
    lbratualiza: 'string'
    toJSON: ()->
      local = @toObject()

