CLASS zcl_lab_33_expatriate_empl_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES zif_lab_04_employee_hml.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_33_EXPATRIATE_EMPL_HML IMPLEMENTATION.


  METHOD zif_lab_04_employee_hml~get_employees_count.
    rv_count = |Empleados externos|.
  ENDMETHOD.
ENDCLASS.
