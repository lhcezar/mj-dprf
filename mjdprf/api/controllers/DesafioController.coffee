require 'async'

DesafioController =
  index: (req, res)->
    res.view {}
  quiz: (req, res)->
    cat = req.param('cat') ? 'advertência'

    name = switch
      when cat == 'advertência' then 'Sinais de advertência'
      when cat == 'regulamentação' then 'Sinais de regulamentação'
      when cat == 'Indicação' then 'Sinais de indicação'
      else 'Sinalização'
    qj = 
      info:
        name: name
        main: "A evidente melhoria técnica dos veículos automotores com conseqüente acréscimo de sua velocidade final tornou-se, fora de qualquer dúvida, fator decisivo no elevadíssimo número de acidentes nas vias urbanas e rurais no mundo inteiro com, inúmeras vezes, vítimas fatais. Estas circunstâncias aliadas à evolução da frota de veículos não compatível com a evolução da capacidade técnica da malha rodoviária, faz com que se torne de enorme importância a Sinalização Rodoviária com vistas à segurança do usuário.        
        "
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
