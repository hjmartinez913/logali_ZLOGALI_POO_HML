CLASS zcl_lab_32_internal_empl_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
      INTERFACES zif_lab_04_employee_hml.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_32_INTERNAL_EMPL_HML IMPLEMENTATION.


  METHOD zif_lab_04_employee_hml~get_employees_count.
    rv_count = |Empleados Internos |.
  ENDMETHOD.
ENDCLASS.
