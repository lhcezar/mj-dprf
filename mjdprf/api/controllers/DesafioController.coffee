require 'async'

DesafioController =
  index: (req, res)->
    res.view {}
  quiz: (req, res)->
    cat = req.param('cat') ? 'educativo'
    qj = 
      info:
        name: "Teste seus conhecimentos!!!"
        main: "Se acha inteligente suficiente?!?"
        results: "Você ainda não viu nada!!!"
        level1: "Você realmente conhece sinalização de trânsito"
        level2: "Seria interessante estudar um pouco mais..."
      questions: []
    # @todo: refactory, refactory, refactory... some pretty day..
    Questoes.find(categoria: cat, (err, questoes)->
      async.map(questoes, (questao, cb)->
        Respostas.find(id_questao: questao.id, (err, resposta)->
          qj.questions.push
              q: questao.q 
              correct: questao.correto
              incorrect: questao.incorreto
              a:
                resposta

          cb(null, resposta)
        )
       , (err, enquete)->
        if err 
          res.json 500
        else
          res.json qj
      )
    )
module.exports = DesafioController
