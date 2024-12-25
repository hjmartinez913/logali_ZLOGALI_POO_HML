CLASS zcl_lab_48_administrative_deph DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    data id_employ type string.
    events PAYROLL_PAID EXPORTING VALUE(ev_id_employ) type string.
    methods NOTIFY_EMPLOYEE.
    METHODS constructor IMPORTING iv_id_employ type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_48_ADMINISTRATIVE_DEPH IMPLEMENTATION.


  METHOD constructor.
    me->id_employ = iv_id_employ.
  ENDMETHOD.


  METHOD notify_employee.
   raise event PAYROLL_PAID EXPORTING ev_id_employ = me->id_employ.
  ENDMETHOD.
ENDCLASS.
