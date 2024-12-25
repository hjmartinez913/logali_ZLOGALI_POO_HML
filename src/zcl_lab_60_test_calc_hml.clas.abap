CLASS zcl_lab_60_test_calc_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  for testing
  DURATION  short
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.
    "! @testing ZCL_LAB_59_CALCULATOR_HML
    METHODS: calculator_test for  testing. "UTM
  PROTECTED SECTION.
  PRIVATE SECTION.
    data mo_cut type REF TO zcl_lab_59_calculator_hml.
    class-METHODS: class_setup,
                   class_teardown.

    methods: setup,
            teardown.

ENDCLASS.



CLASS ZCL_LAB_60_TEST_CALC_HML IMPLEMENTATION.


  METHOD calculator_test.

    "Given
    data(lv_num1) = 4.
    data(lv_num2) = 5.
    data lv_sum type i.

    mo_cut->sum_up(
      EXPORTING
        iv_num1 = lv_num1
        iv_num2 = lv_num2
      IMPORTING
        ev_sum  = lv_sum
    ).

    "Then

    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lv_sum
        exp                  = 9
         msg = 'El resultado no es el esperado'
      RECEIVING
        assertion_failed     = DATA(lv_val)
    ).


    data(lv_val2) = 1.

*    cl_abap_unit_assert=>assert_equals(
*      EXPORTING
*        act                  = lv_sum
*        exp                  = 9
*    ).

  ENDMETHOD.


  METHOD class_setup.

  ENDMETHOD.


  METHOD class_teardown.

  ENDMETHOD.


  METHOD setup.
    mo_cut = new zcl_lab_59_calculator_hml(  ).
  ENDMETHOD.


  METHOD teardown.
    clear mo_cut.
  ENDMETHOD.
ENDCLASS.
