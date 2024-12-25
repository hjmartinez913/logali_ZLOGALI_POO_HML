CLASS zcl_lab_35_college_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    data lo_student type REF TO zcl_lab_34_student_hml.
    METHODS: ENROLL_STUDENT IMPORTING ir_student type REF TO zcl_lab_34_student_hml.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS ZCL_LAB_35_COLLEGE_HML IMPLEMENTATION.


  METHOD enroll_student.
    me->lo_student = ir_student.
  ENDMETHOD.
ENDCLASS.
