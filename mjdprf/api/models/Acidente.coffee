module.exports =
  attributes:
    # Identificador único do acidente
    oacocoid: 
      type: 'integer'
      required: true
      key: true
    # Chave estrangeira que identifica o tipo de acidente
    oacttacodigo: 'integer'
    # Chave estrangeira que identifica a causa do acidente
    oactcacodigo: 'integer'
    # Dano causado no acidente
    oacdano: 'string'
    # Dano causado a terceiro
    oacdanoterc: 'string'
    # Dano causado ao acidente
    oacdanoamb: 'string'
    # latitude do local
    oaclatitude: 'string'
    # longitude do acidete
    oaclongitude: 'string'
    # Referencia ponto A - Descreve o ponto de referencia
    oacdistab: 'string'
    # Referencia ponto B - Descreve o ponto de referencia
    oacdistac: 'string'
    # Distancia entre os pontos B e C
    oacdistbc: 'string'
    # Identificação do modelo de pista
    oacmodelopista: 'string'
    # Descrição do sentido 1
    oacsentido1: 'string'
    oacsentido2: 'string'
    oacqtdfaixa1: 'integer'
    oacqtdfaixa2: 'integer'
    # Indicador de acostamento no sentido 1
    oacacostamento1: 'string'
    oacacostamento2: 'string'
    oaccanteiro: 'string'
    oaclinhacentral: 'integer'
    oacorientpista: 'string'
    oacgirafundo: 'string'
    oacversaocroqui: 'integer'
    oacsitio: 'integer'
