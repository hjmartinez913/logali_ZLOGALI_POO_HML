CLASS zcl_lab_42_screen_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    data SCREEN_TYPE type string.

    methods constructor IMPORTING iv_screen_type type string.

    EVENTS TOUCH_SCREEN EXPORTING VALUE(ev_hor) type i
                                  VALUE(ev_ver) type i.

     METHODS ELEMENT_SELECTED IMPORTING iv_hor type i
                                        iv_ver type i.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_42_SCREEN_HML IMPLEMENTATION.


  METHOD constructor.
    me->screen_type = iv_screen_type.
  ENDMETHOD.


  METHOD element_selected.
    RAISE EVENT TOUCH_SCREEN EXPORTING ev_hor = iv_hor
                                       ev_ver = iv_ver.
*
  ENDMETHOD.
ENDCLASS.
