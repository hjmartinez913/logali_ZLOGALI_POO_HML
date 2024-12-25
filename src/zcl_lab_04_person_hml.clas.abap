CLASS zcl_lab_04_person_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS: set_age IMPORTING VALUE(iv_age) TYPE int1,
            get_age EXPORTING value(ev_age) TYPE int1.
  PROTECTED SECTION.
  PRIVATE SECTION.
  data age type int1.
ENDCLASS.



CLASS ZCL_LAB_04_PERSON_HML IMPLEMENTATION.


  METHOD get_age.
    ev_age = me->age.
  ENDMETHOD.


  METHOD set_age.
    me->age = iv_age.
  ENDMETHOD.
ENDCLASS.
