CLASS zcl_lab_37_screen_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS: set_screen_type IMPORTING iv_screen_type type string,
            get_screen_type RETURNING VALUE(rv_screen_type) type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    data SCREEN_TYPE type string.
ENDCLASS.



CLASS ZCL_LAB_37_SCREEN_HML IMPLEMENTATION.


  METHOD get_screen_type.
    rv_screen_type = me->screen_type.
  ENDMETHOD.


  METHOD set_screen_type.
    me->screen_type = iv_screen_type.
  ENDMETHOD.
ENDCLASS.
