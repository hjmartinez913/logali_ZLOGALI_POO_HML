CLASS zcl_lab_13_view_hml DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: constructor IMPORTING iv_view_type type string,
             get_atributes EXPORTING ev_view_type type string
                                     ev_box type string.
  PROTECTED SECTION.
  data: VIEW_TYPE type string,
        box type string.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_13_VIEW_HML IMPLEMENTATION.


  METHOD constructor.
    view_type = iv_view_type.
  ENDMETHOD.


  METHOD get_atributes.
    ev_view_type = me->view_type.
    ev_box = me->box.
  ENDMETHOD.
ENDCLASS.
