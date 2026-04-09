FUNCTION z_get_flights.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(IM_CARRID) TYPE  S_CARR_ID OPTIONAL
*"  TABLES
*"      FLIGHTS STRUCTURE  SFLIGHT
*"----------------------------------------------------------------------
  IF im_carrid <> ''.
    SELECT * FROM sflight
      INTO TABLE flights
      WHERE carrid = im_carrid.
  ELSE.
    SELECT * FROM sflight INTO TABLE flights.
  ENDIF.
ENDFUNCTION.
