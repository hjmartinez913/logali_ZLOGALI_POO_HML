CLASS zcl_lab_39_budget_hml DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: GET_BUDGET ABSTRACT RETURNING VALUE(rv_budget) type string,
             set_budget IMPORTING iv_budget type string.
  PROTECTED SECTION.
    data budget type string.
  PRIVATE SECTION.

ENDCLASS.



CLASS ZCL_LAB_39_BUDGET_HML IMPLEMENTATION.


  METHOD set_budget.
    budget = iv_budget.
  ENDMETHOD.
ENDCLASS.
