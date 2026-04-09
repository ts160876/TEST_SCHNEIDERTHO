FUNCTION z_get_bookings.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(IM_CARRID) TYPE  S_CARR_ID
*"     VALUE(IM_CONNID) TYPE  S_CONN_ID OPTIONAL
*"  TABLES
*"      BOOKINGS STRUCTURE  SBOOK
*"----------------------------------------------------------------------
  IF im_connid <> ''.
    SELECT * FROM sbook
      INTO TABLE bookings
      WHERE carrid = im_carrid AND connid = im_connid.
  ELSE.
    SELECT * FROM sbook
      INTO TABLE bookings
      WHERE carrid = im_carrid.
  ENDIF.
ENDFUNCTION.
