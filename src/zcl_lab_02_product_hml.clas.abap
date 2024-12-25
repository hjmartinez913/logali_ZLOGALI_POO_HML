CLASS zcl_lab_02_product_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS set_product IMPORTING iv_product TYPE matnr.
    METHODS set_creationdate IMPORTING iv_creationdate type zdate_hml.
  PROTECTED SECTION.
  PRIVATE SECTION.
  data: product type matnr,
        creation_date type zdate_hml.
ENDCLASS.



CLASS ZCL_LAB_02_PRODUCT_HML IMPLEMENTATION.


  METHOD set_creationdate.
    me->creation_date = iv_creationdate.
  ENDMETHOD.


  METHOD set_product.
    me->product = iv_product.
  ENDMETHOD.
ENDCLASS.
