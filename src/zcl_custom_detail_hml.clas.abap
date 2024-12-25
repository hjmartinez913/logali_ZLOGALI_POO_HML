CLASS zcl_custom_detail_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_rap_query_provider.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_custom_detail_hml IMPLEMENTATION.
  METHOD if_rap_query_provider~select.

    try.
    IF io_request->is_data_requested(  ).

      DATA(lv_top) = io_request->get_paging( )->get_page_size( ).
      DATA(lv_skip) = io_request->get_paging( )->get_offset( ).

      SELECT FROM /dmo/customer
        FIELDS customer_id,
               phone_number,
               email_address
        ORDER BY customer_id ASCENDING
        INTO TABLE @DATA(lt_customer)
        OFFSET @lv_skip
        UP TO @lv_top ROWS.

     IF sy-subrc EQ 0.
      io_response->set_total_number_of_records( iv_total_number_of_records = lines( lt_customer ) ).
      io_response->set_data( it_data = lt_customer ).
     endif.
    ENDIF.

    CATCH cx_rap_query_response_set_twic into data(lx_exc).
    ENDTRY.
  ENDMETHOD.

ENDCLASS.
