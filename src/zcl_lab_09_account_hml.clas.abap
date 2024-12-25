CLASS zcl_lab_09_account_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_value IMPORTING iban type string,
             get_value EXPORTING iban type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
  data iban type string.
ENDCLASS.



CLASS ZCL_LAB_09_ACCOUNT_HML IMPLEMENTATION.


  METHOD get_value.
    iban = me->iban.
  ENDMETHOD.


  METHOD set_value.
    me->iban = iban.
  ENDMETHOD.
ENDCLASS.
