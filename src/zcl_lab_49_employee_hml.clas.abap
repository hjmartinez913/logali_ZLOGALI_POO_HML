CLASS zcl_lab_49_employee_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    data log type string.
    METHODS constructor.
    METHODS ON_PAYROLL_PAID for event PAYROLL_PAID of zcl_lab_48_administrative_deph
                            IMPORTING ev_id_employ.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_49_EMPLOYEE_HML IMPLEMENTATION.


  METHOD constructor.
    SET HANDLER me->on_payroll_paid for all instances.
  ENDMETHOD.


  METHOD on_payroll_paid.
    log = |ID Employ: {  ev_id_employ }|.
  ENDMETHOD.
ENDCLASS.
