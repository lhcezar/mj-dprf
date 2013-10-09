#!/usr/bin/env python
import os
config = """[pgsql]
base = acidentes
host = localhost
port = 5432
user = postgres
pass = postgres

[carga_tpl]
template = True
skip_head_lines = 1
format = csv
field_sep = ;
null = '(null)'

[ocorrencia]

use_template = carga_tpl
table = ocorrencia
filename = {0}/Users/lhcezar/Projetos/mj-dprf/dados/brbrasil_1_semestre_2013/ocorrencia_1_Semestre_2013.csv
columns = ocoid, ocolocal, ocostatus, ocomunicipio, ocosentido, ocodataocorrencia, ocodataregistro, ocotipo, ocomid, ocoidorigem, ocodatafim
only_columns = 1-11
truncate = true"""

print config.format(os.environ.get('HOME'))
