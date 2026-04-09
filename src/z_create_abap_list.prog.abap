*&---------------------------------------------------------------------*
*& Report Z_CREATE_ABAP_LIST
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_create_abap_list.

TABLES sflight.

DATA flights  TYPE STANDARD TABLE OF sflight.
DATA bookings TYPE STANDARD TABLE OF sbook.

PARAMETERS:
  p_carrid TYPE sflight-carrid,
  p_connid TYPE sflight-connid,
  p_book TYPE abap_bool AS CHECKBOX.

START-OF-SELECTION.
  IF p_book <> ''.
    CALL FUNCTION 'Z_GET_BOOKINGS'
      EXPORTING im_carrid = p_carrid
                im_connid = p_connid
      TABLES    bookings  = bookings.

    CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
      EXPORTING  i_structure_name = 'SBOOK'

      TABLES     t_outtab         = bookings
      EXCEPTIONS program_error    = 1
                 OTHERS           = 2.
  ELSE.
    CALL FUNCTION 'Z_GET_FLIGHTS'
      EXPORTING im_carrid = p_carrid
      TABLES    flights   = flights.

    CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
      EXPORTING  i_structure_name = 'SFLIGHT'
      TABLES     t_outtab         = flights
      EXCEPTIONS program_error    = 1
                 OTHERS           = 2.

  ENDIF.
