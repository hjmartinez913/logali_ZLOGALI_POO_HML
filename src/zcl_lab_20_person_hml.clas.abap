CLASS zcl_lab_20_person_hml DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS set_name final IMPORTING iv_name TYPE string.
  PROTECTED SECTION.
    data name type string.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_20_PERSON_HML IMPLEMENTATION.


  METHOD set_name.
    me->name = iv_name.
  ENDMETHOD.
ENDCLASS.
