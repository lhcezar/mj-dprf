# Leia quickQuiz para mais detalhes sobre os atributos
module.exports =
  attributes:
    # Questao – Usualmente seria apenas um símbolo, mas pode ser
    # muito mais...
    q: 'string'
    correto: 'string'
    incorreto: 'string'
    # Tipo de questionamento (Sinais educativos, mensagens, balizadores, &ca)
    # Utilizado quando a funcionalidade de filtro do desafio estiver 
    # implementada
    categoria: 'string'
