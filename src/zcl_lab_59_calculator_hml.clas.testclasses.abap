*"* use this source file for your ABAP unit test classes
class ltcl_ definition final for testing
  duration short
  risk level harmless.

  private section.

    data mo_cut type REF TO zcl_lab_59_calculator_hml.

    class-METHODS: class_setup,
                   class_teardown.

    methods: setup,
            teardown.
    methods:
      calculator_test for testing raising cx_static_check.
endclass.


class ltcl_ implementation.

  method calculator_test.

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
    if cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lv_sum
        exp                  = 9
    ) eq abap_true.

    cl_abap_unit_assert=>fail( 'Calculate process failed' ).
    endif.
  endmethod.

  method class_setup.

  endmethod.

  method class_teardown.

  endmethod.

  method setup.
        mo_cut = new zcl_lab_59_calculator_hml(  ).
  endmethod.

  method teardown.
    clear mo_cut.
  endmethod.

endclass.
