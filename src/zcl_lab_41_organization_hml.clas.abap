CLASS zcl_lab_41_organization_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS: SET_HEADQUARTERS IMPORTING IV_HEADQUARTERS type string,
           GET_HEADQUARTERS RETURNING VALUE(RV_HEADQUARTERS) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
  data HEADQUARTERS type string.
ENDCLASS.



CLASS ZCL_LAB_41_ORGANIZATION_HML IMPLEMENTATION.


  METHOD get_headquarters.
    rv_headquarters = me->headquarters.
  ENDMETHOD.


  METHOD set_headquarters.
    me->headquarters = iv_headquarters.
  ENDMETHOD.
ENDCLASS.
