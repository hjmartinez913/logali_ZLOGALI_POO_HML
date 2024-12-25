CLASS zcl_lab_58_date_analyzer_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: ANALYZE_DATE IMPORTING io_previos type REF TO cx_root OPTIONAL
                        RAISING zcx_lab_56_no_date_hml,
             ANALYZE_FORMAT IMPORTING io_previos type REF TO cx_root OPTIONAL
                            RAISING zcx_lab_57_format_unknown_hml.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_58_DATE_ANALYZER_HML IMPLEMENTATION.


  METHOD analyze_date.
    RAISE EXCEPTION TYPE zcx_lab_56_no_date_hml
    EXPORTING previous = io_previos.
  ENDMETHOD.


  METHOD analyze_format.
    RAISE EXCEPTION TYPE zcx_lab_57_format_unknown_hml
    EXPORTING previous = io_previos.
  ENDMETHOD.
ENDCLASS.
