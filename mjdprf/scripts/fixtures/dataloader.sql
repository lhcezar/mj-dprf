CREATE OR REPLACE FUNCTION dataloader(IN tab TEXT, IN sem INTEGER, IN ano INTEGER)
LANGUAGE 'plpgsql'
RETURN VOID
AS $dataloader$

BEGIN;

DECLARE
  data_file TEXT := format();
  columns TEXT;

IF tab == 'ocorrencia' THEN

  atts = 'ocoid, ocolocal, ocostatus, ocomunicipio, ocosentido, ocodataocorrencia, ocodataregistro, ocotipo, ocomid, ocoidorigem, ocodatafim'

ELSIF tab == 'acidente' THEN
  atts = '';

ELSIF tab == 'ocorrenciapessoa' THEN
  atts = '';

END IF;
BEGIN
  EXECUTE $$COPY $1($2) 
            FROM $3
            WITH CSV DELIMITER ';' 
          HEADER
            NULL '(null)' $$ USING LOWER(tab), atts, data_file
END;

$dataloader$;
