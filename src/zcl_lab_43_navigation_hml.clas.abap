CLASS zcl_lab_43_navigation_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    data log type string.
    METHODS ON_TOUCH_SCREEN for event TOUCH_SCREEN of zcl_lab_42_screen_hml importing  ev_hor
                                                                                       ev_ver
                                                                                       sender.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_43_NAVIGATION_HML IMPLEMENTATION.


  METHOD on_touch_screen.
      log = |Horizontal:{ ev_hor } Vertical: { ev_ver } Tipo: {  sender->screen_type }|.
  ENDMETHOD.
ENDCLASS.
