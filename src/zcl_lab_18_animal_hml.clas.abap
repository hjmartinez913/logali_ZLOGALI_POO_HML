CLASS zcl_lab_18_animal_hml DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS walk RETURNING VALUE(rv_value) type string.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS ZCL_LAB_18_ANIMAL_HML IMPLEMENTATION.


  METHOD walk.
    rv_value = | The animal walks |.
  ENDMETHOD.
ENDCLASS.
