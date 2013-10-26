require 'async'

AcidenteController = 
  index: (req, res)->
    res.json()
    return

  semana: (req, res)->

    sql = """WITH acidentes_semana AS (
         SELECT EXTRACT(dow from ocodataocorrencia) AS semana, 
          COUNT(*) AS total
           FROM ocorrencia 
          GROUP BY EXTRACT(dow from ocodataocorrencia)
         ) 
         SELECT total, semana, 
         (
             to_char((total/sum(total) OVER() * 100.00), '99')
         ) AS percent
          FROM acidentes_semana"""

    Acidente.query(sql, (err, acidente)->
      dias = [
        'domingo'
        'segunda-feira'
        'terça-feira'
        'quarta-feira'
        'quinta-feira'
        'sexta-feira'
        'sábado'
      ]
      for c, v of acidente.rows
        acidente.rows[c].semana = dias[c]

      res.json acidente
    )

      
module.exports = AcidenteController

