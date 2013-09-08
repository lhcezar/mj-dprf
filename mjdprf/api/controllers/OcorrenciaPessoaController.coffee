OcorrenciaPessoaController =
  index: (req, res)->
    Pessoa.find().done (err, pessoa)->
      if err
        console.log err
      res.json pessoas: pessoa
      return

  ocorrencia: (req, res)->
      cfg = 
          layout: "layout"
          name: "bar"
          title: "Ocorrências"
      return res.view cfg

module.exports = OcorrenciaPessoaController
