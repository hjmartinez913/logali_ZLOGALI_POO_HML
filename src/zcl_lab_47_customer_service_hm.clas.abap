CLASS zcl_lab_47_customer_service_hm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
      class-data log type string.
      class-METHODS ON_NEW_CALL for EVENT new_call of zcl_lab_46_mobile_operator_hml  IMPORTING ev_phone_number .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_47_CUSTOMER_SERVICE_HM IMPLEMENTATION.


  METHOD on_new_call.
    log = |Llamada : {  ev_phone_number }|.
  ENDMETHOD.
ENDCLASS.
