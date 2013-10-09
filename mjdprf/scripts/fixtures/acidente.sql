-- @todo automatizar carga utilizando o metodo load dos models

\set table_name `echo $TABLE_NAME`
\set file `pwd`/:table_name.sql
\set data_file/../../../dados/brbrasil_1_semestre_2013/ocorrenciaacidente_1_Semestre_2013.csv

BEGIN;

  COPY acidente(oacocoid,oacttacodigo,oactcacodigo,oacdano,oacdanoterc,oacdanoamb,oaclatitude,oaclongitude,oacdistab,oacdistac,oacdistbc,oacmodelopista,oacsentido1,oacsentido2,oacqtdfaixa1,oacqtdfaixa2,oacacostamento1,oacacostamento2,oaccanteiro,oaclinhacentral,oacorientpista,oacgirafundo,oacversaocroqui,oacsitio)   
  FROM 
    :'data_file'
  WITH CSV DELIMITER ';' 
  HEADER
  NULL '(null)';
