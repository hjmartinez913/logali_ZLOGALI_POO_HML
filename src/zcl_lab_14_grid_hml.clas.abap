CLASS zcl_lab_14_grid_hml DEFINITION INHERITING FROM zcl_lab_13_view_hml
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
      METHODS constructor IMPORTING IV_VIEW_TYPE type string
                                  iv_box type string.
  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_14_GRID_HML IMPLEMENTATION.


  METHOD constructor.

    super->constructor( iv_view_type = iv_view_type ).
    me->box = iv_box.
  ENDMETHOD.
ENDCLASS.
