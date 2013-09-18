BEGIN; 
  COPY local(lbrid,lbruf,lbrbr,lbrkm,lbrlatitude,lbrlongitude,lbrpnvid,lbratualiza)   
  FROM 
    '/Users/lhcezar/Projetos/mj-dprf/artefatos/localbr.csv' 
  WITH CSV DELIMITER ';' 
  HEADER
  NULL '(null)';
