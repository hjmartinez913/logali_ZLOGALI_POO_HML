CLASS zcl_lab_44_operating_system_hm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
        INTERFACES zif_lab_05_browser_hml.
        methods: MOUSE_MOVEMENT.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_44_OPERATING_SYSTEM_HM IMPLEMENTATION.


  METHOD mouse_movement.
    raise event zif_lab_05_browser_hml~close_window.
  ENDMETHOD.
ENDCLASS.
