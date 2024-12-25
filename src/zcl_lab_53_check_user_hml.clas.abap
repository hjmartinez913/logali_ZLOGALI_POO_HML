CLASS zcl_lab_53_check_user_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    methods: check_user importing iv_uname type syuname
                        RAISING ZCX_LAB_52_OPERATIONS_HML.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_53_CHECK_USER_HML IMPLEMENTATION.


  METHOD check_user.

    if sy-uname eq 'CB9980000885'.
       RAISE  EXCEPTION type zcx_lab_52_operations_hml
         EXPORTING
           textid   = zcx_lab_52_operations_hml=>no_access
*           previous =
           msgv1    = |{ sy-uname }|
*           msgv2    = ''
*           msgv3    =
*           msgv4    =
       .
    else.

    endif.

  ENDMETHOD.
ENDCLASS.
