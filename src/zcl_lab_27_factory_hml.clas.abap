CLASS zcl_lab_27_factory_hml DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: MERCHANDISE_OUTPUT RETURNING VALUE(RV_MERCHENDISE) type string,
             PRODUCTION_LINE ABSTRACT RETURNING VALUE(RV_PRODUCTION) type string,
             INPUT_PRODUCTS ABSTRACT RETURNING VALUE(RV_INPUT) type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_27_FACTORY_HML IMPLEMENTATION.


  METHOD merchandise_output.

  ENDMETHOD.
ENDCLASS.