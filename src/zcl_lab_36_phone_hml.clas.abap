CLASS zcl_lab_36_phone_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: constructor IMPORTING io_screen type REF TO zcl_lab_37_screen_hml,
             get_screen RETURNING VALUE(ro_screen) TYPE REF TO zcl_lab_37_screen_hml.
  PROTECTED SECTION.
  PRIVATE SECTION.
    data lo_screen type REF TO zcl_lab_37_screen_hml.
ENDCLASS.



CLASS ZCL_LAB_36_PHONE_HML IMPLEMENTATION.


  METHOD constructor.
    me->lo_screen = io_screen.
  ENDMETHOD.


  METHOD get_screen.
    ro_screen = me->lo_screen.
  ENDMETHOD.
ENDCLASS.
