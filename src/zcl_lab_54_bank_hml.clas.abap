CLASS zcl_lab_54_bank_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: transfer IMPORTING iv_iban type string
                      CHANGING cv_log type string
                      RAISING ZCX_LAB_52_OPERATIONS_HML
                      RESUMABLE(zcx_lab_55_auth_iban_hml).
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_54_BANK_HML IMPLEMENTATION.


  METHOD transfer.

    cv_log = |{ cv_log }...Checking IBAN validity {  cl_abap_char_utilities=>newline } |.

    if iv_iban eq 'ES95 4329 8765 4321'.
       raise RESUMABLE EXCEPTION type zcx_lab_55_auth_iban_hml
         EXPORTING
           textid   = zcx_lab_55_auth_iban_hml=>resumable
       .
    else.
        raise EXCEPTION type zcx_lab_55_auth_iban_hml
         EXPORTING
           textid   = zcx_lab_55_auth_iban_hml=>exception
       .
    endif.
  ENDMETHOD.
ENDCLASS.
