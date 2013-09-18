OcorrenciaPessoaController =
  index: (req, res)->
    Pessoa.find().done (err, pessoa)->
      if err
        console.log err
      res.json pessoas: pessoa
      return

  ocorrencia: (req, res)->
    return res.view data: ""

module.exports = OcorrenciaPessoaController
