CLASS zcl_lab_50_work_zone_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
     GLOBAL FRIENDS ZCL_LAB_51_WZ_FRIEND_HML.

  PUBLIC SECTION.

  PROTECTED SECTION.
  PRIVATE SECTION.
  data ls_work_zone type ty_work_zone.
  data lo_helper type REF TO LCL_HELPER..
  METHODS SET_WORK_ZONE IMPORTING is_work_zone type ty_work_zone.

ENDCLASS.



CLASS ZCL_LAB_50_WORK_ZONE_HML IMPLEMENTATION.


  METHOD set_work_zone.
    me->ls_work_zone = is_work_zone.
  ENDMETHOD.
ENDCLASS.
