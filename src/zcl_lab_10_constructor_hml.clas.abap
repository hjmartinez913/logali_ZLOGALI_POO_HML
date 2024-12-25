CLASS zcl_lab_10_constructor_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    class-data log type string.
    CLASS-METHODS class_constructor.
    METHODS constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_10_CONSTRUCTOR_HML IMPLEMENTATION.


  METHOD class_constructor.
    log = | {  log } Constructor Estatic -->  |.
  ENDMETHOD.


  METHOD constructor.
    me->log = | { me->log } Constructor Instance -->  |.
  ENDMETHOD.
ENDCLASS.
