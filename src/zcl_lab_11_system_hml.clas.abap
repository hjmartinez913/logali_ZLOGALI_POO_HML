CLASS zcl_lab_11_system_hml DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
  data arquitecture type string VALUE '64BITS'.
  METHODS GET_ARCHITECTURE EXPORTING ev_arquitecture type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_11_SYSTEM_HML IMPLEMENTATION.


  METHOD get_architecture.
    ev_arquitecture = me->arquitecture.
  ENDMETHOD.
ENDCLASS.
