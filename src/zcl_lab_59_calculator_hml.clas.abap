CLASS zcl_lab_59_calculator_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: SUM_UP IMPORTING iv_num1 type i
                              iv_num2 type i
                    EXPORTING ev_sum type i.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_59_CALCULATOR_HML IMPLEMENTATION.


  METHOD sum_up.
    ev_sum = iv_num1 + iv_num2.
  ENDMETHOD.
ENDCLASS.
