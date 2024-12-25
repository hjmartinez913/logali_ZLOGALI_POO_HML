CLASS zcl_lab_03_contract_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    data cntr_type type c LENGTH 2.

    METHODS set_creation_date IMPORTING iv_creation_date TYPE zdate_hml.
  PROTECTED SECTION.
   data creation_date type zdate_hml.
  PRIVATE SECTION.
   data client type string.
ENDCLASS.



CLASS ZCL_LAB_03_CONTRACT_HML IMPLEMENTATION.


  METHOD set_creation_date.
    me->creation_date = iv_creation_date.
  ENDMETHOD.
ENDCLASS.
