CLASS zcl_lab_07_student_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA birth_date TYPE zdate_hml READ-ONLY.

    METHODS: set_birth_date IMPORTING iv_birth_date TYPE zdate_hml.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_07_STUDENT_HML IMPLEMENTATION.


  METHOD set_birth_date.
    me->birth_date = iv_birth_date.
  ENDMETHOD.
ENDCLASS.
