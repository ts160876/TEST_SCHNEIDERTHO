FUNCTION z_get_carriers.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  TABLES
*"      CARRIERS STRUCTURE  SCARR
*"----------------------------------------------------------------------
  SELECT * FROM scarr INTO TABLE carriers.
ENDFUNCTION.
