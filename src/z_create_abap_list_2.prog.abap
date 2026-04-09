*&---------------------------------------------------------------------*
*& Report Z_CREATE_ABAP_LIST_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_create_abap_list_2.

DATA carriers TYPE STANDARD TABLE OF scarr.

START-OF-SELECTION.
  CALL FUNCTION 'Z_GET_CARRIERS'
    TABLES carriers = carriers.

  CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
    EXPORTING  i_structure_name = 'SCARR'
    TABLES     t_outtab         = carriers
    EXCEPTIONS program_error    = 1
               OTHERS           = 2.
