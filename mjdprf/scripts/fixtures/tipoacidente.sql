-- @todo automatizar carga utilizando o metodo load dos models

\set table_name `echo $TABLE_NAME`
\set file `pwd`/:table_name.sql
\set data_file/../../../dados/brbrasil_1_semestre_2013/satelites/tipoAcidente.csv

BEGIN;

  COPY tipoacidente(ttacodigo, ttadescricao, ttatualiza, ttarelacidente, ttativo)   
  FROM 
    :'data_file'
  WITH CSV DELIMITER ';' 
  HEADER
  NULL '(null)';
