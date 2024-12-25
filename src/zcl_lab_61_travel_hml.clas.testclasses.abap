*"* use this source file for your ABAP unit test classes
class ltcl_test_travel definition final for testing
  duration short
  risk level harmless.

  PUBLIC SECTION.
   interfaces if_abap_db_writer PARTIALLY IMPLEMENTED.

  private section.
    methods:
      get_travel_test for testing raising cx_static_check.

      class-METHODS class_setup.
      class-METHODS class_teardown.

      METHODS setup.
      METHODS teardown.

      data mo_cut type REF TO zcl_lab_61_travel_hml.
endclass.


class ltcl_test_travel implementation.

  method get_travel_test.

    me->mo_cut->get_travel(
      IMPORTING
        es_travel = data(ls_travel)
    ).

    if cl_abap_unit_assert=>assert_equals(
        EXPORTING act = |{ ls_travel-carrier_id }--{ ls_travel-seats_max }|
                  exp = 'AA--200' ) eq abap_true.
    cl_abap_unit_assert=>fail( 'Get travel process failed---zcl_lab_61_travel_hml->get_travel' ).
    endif.
  endmethod.

  method class_setup.

  endmethod.

  method class_teardown.

  endmethod.

  method setup.
    me->mo_cut = new zcl_lab_61_travel_hml(  ).

    test-INJECTION select_data.
     lv_carrier_id = 'AA'.
     ls_travel-carrier_id = lv_carrier_id.
     ls_travel-seats_max = 200.
    end-TEST-INJECTION.

  endmethod.

  method teardown.
    clear me->mo_cut.
  endmethod.

endclass.
