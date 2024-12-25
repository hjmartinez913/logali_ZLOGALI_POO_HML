CLASS zcl_lab_08_work_record_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    class-METHODS open_new_record IMPORTING iv_date type zdate_hml
                                            iv_first_name type string
                                            iv_last_name type string
                                            iv_surname type string OPTIONAL.

    CLASS-METHODS get_record EXPORTING ev_date type zdate_hml
                                            ev_first_name type string
                                            ev_last_name type string
                                            ev_surname type string.


  PROTECTED SECTION.
  PRIVATE SECTION.

    CLASS-DATA: date type zdate_hml,
                first_name type string,
                last_name type string,
                surname type string.
ENDCLASS.



CLASS ZCL_LAB_08_WORK_RECORD_HML IMPLEMENTATION.


  METHOD get_record.
    ev_date = date.
    ev_first_name = first_name.
    ev_last_name = last_name.
    ev_surname = surname.
  ENDMETHOD.


  METHOD open_new_record.
    date = iv_date.
    first_name = iv_first_name.
    last_name = iv_last_name.
    surname = iv_surname.
  ENDMETHOD.
ENDCLASS.
