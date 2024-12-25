CLASS zcl_lab_34_student_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_name IMPORTING iv_name type string,
             get_name RETURNING VALUE(rv_name) type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    data name type string.

ENDCLASS.



CLASS ZCL_LAB_34_STUDENT_HML IMPLEMENTATION.


  METHOD get_name.
    rv_name = me->name.
  ENDMETHOD.


  METHOD set_name.
    me->name = iv_name.
  ENDMETHOD.
ENDCLASS.
