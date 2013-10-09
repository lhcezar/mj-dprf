-- @todo automatizar carga utilizando o metodo load dos models

\set table_name `echo $TABLE_NAME`
\set file `pwd`/:table_name.sql
\set data_file/../../../dados/brbrasil_1_semestre_2013/ocorrenciaa_1_Semestre_2013.csv

BEGIN;

  COPY ocorrencia(ocoid, ocolocal, ocostatus, ocomunicipio, ocosentido, ocodataocorrencia, ocodataregistro, ocotipo, ocomid, ocoidorigem, ocodatafim)   
  FROM 
    :'data_file'
  WITH CSV DELIMITER ';' 
  HEADER
  NULL '(null)';
