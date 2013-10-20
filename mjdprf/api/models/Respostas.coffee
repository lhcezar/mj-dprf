# Leia quickQuiz para mais detalhes sobre os atributos
module.exports =
  attributes:
    id_questao: 'integer'
    # Questao – Usualmente seria apenas um símbolo, mas pode ser
    # muito mais...
    option: 'string'
    correct: 'boolean'
    # Tipo de questionamento (Sinais educativos, mensagens, balizadores, &ca)
    # Utilizado quando a funcionalidade de filtro do desafio estiver 
    # implementada

