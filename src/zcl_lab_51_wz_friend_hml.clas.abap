CLASS zcl_lab_51_wz_friend_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_helper.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_51_WZ_FRIEND_HML IMPLEMENTATION.


  METHOD get_helper.
    data(lo_wz) = new zcl_lab_50_work_zone_hml(  ).
    lo_wz->lo_helper->get_work_zone(
      IMPORTING
        es_work_zone = data(lv_wz)
    ).
  ENDMETHOD.
ENDCLASS.
